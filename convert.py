#!/usr/local/bin/python3

import re

_last_comment = ''
_is_in_comment = False

def decode_func(line):
    global _last_comment, _is_in_comment
    if '/*' in line:
        _is_in_comment = True
        _last_comment = line.replace('/*', '') + ' '
    elif '*/' in line:
        _is_in_comment = False
        _last_comment += line.replace('*/', '') + ' '
    elif _is_in_comment:
        _last_comment += line + ' '

    r = re.findall('^(\S+) (\S+)\((.+)\);$', line)
    if len(r) > 0:
        r = r[0]

        # Get return argument
        c_return = r[0]

        # Get the function name
        c_function = r[1]

        # Get the input arguments
        c_arguments = r[2]
        c_num_arguments = len(c_arguments.split(','))

        # Make it a CamelCase function name for Swift
        swift_function = list(filter(lambda x: len(x) > 0, c_function.split('_')))
        swift_function = ''.join([l[0].upper() + l[1:] for l in swift_function])

        func_def = '\n/**\n'

        # First add documentation (if there is any)
        if len(_last_comment) > 0:
            func_def += _last_comment.rstrip().lstrip() + '.\n'
            _last_comment = ''
        func_def += 'The C function called is: ```' + c_return + ' ' + c_function + '(' + c_arguments + ');```\n*/\n'

        if c_return == 'void': # When not returning anything
            if c_num_arguments == 1: # When only accepting 1 argument
                if c_arguments == 'void': # When there is no argument
                    func_def += 'func ' + swift_function + '() {\n' + \
                        c_function + '()\n}\n'
                else:
                    r = re.findall('^(\S+) (\S+)$', c_arguments)
                    if len(r) > 0:
                        r = r[0]

                    ptr_depth = len(list(filter(lambda x: x == '*', r[1])))
                    if ptr_depth == 0:
                        if r[0] == 'char*': # When there is a String
                            func_def += 'func ' + swift_function + '(_ value: String) {\n' + \
                                c_function + '(DSS.getPointer(to: value))\n}\n'
                        elif r[0] == 'double': # When there is a Double
                            func_def += 'func ' + swift_function + '(_ value: Double) {\n' + \
                                c_function + '(value)\n}\n'
                        elif r[0] == 'uint16_t': # When there is a UInt16
                            func_def += 'func ' + swift_function + '(_ value: Int) {\n' + \
                                c_function + '(UInt16(value))\n}\n'
                        elif r[0] == 'int32_t': # When there is a Int32
                            func_def += 'func ' + swift_function + '(_ value: Int) {\n' + \
                                c_function + '(Int32(value))\n}\n'

            elif c_num_arguments == 2: # When accepting 2 arguments
                r = re.findall('^(\S+).+, (\S+).+$', c_arguments)
                if len(r) > 0:
                    r = r[0]
                if r[0] == 'char***' and r[1] == 'int32_t*':
                    func_def += 'func ' + swift_function + '() -> [String] {\n' + \
                        'return DSS.getStringArray(' + c_function + ')\n}\n'
                elif r[0] == 'double**' and r[1] == 'int32_t*':
                    func_def += 'func ' + swift_function + '() -> [Double] {\n' + \
                        'return DSS.getDoubleArray(' + c_function + ')\n}\n'
                elif r[0] == 'int32_t**'and r[1] == 'int32_t*':
                    func_def += 'func ' + swift_function + '() -> [Int] {\n' + \
                        'return DSS.getIntArray(' + c_function + ')\n}\n'
            elif c_num_arguments == 3: # When accepting 3 c_arguments
                r = re.findall('^(\S+).+, (\S+).+, (\S+).+$', c_arguments)
                if len(r) > 0:
                    r = r[0]
                if r[0] == 'double**' and r[1] == 'int32_t*' and r[2] == 'int32_t':
                    func_def += 'func ' + swift_function + '(_ value: Int) -> [Double] {\n' + \
                        'return DSS.getDoublePhaseArray(' + c_function + ', Int32(value))\n}\n'

        elif c_return == 'int32_t' or c_return == 'uint16_t': # When returning an Int
            if c_num_arguments == 1: # When only accepting 1 argument
                if c_arguments == 'void': # When there is no argument
                    func_def += 'func ' + swift_function + '() -> Int {\n' + \
                        'return Int(' + c_function + '())\n}\n'
                else:
                    r = re.findall('^(\S+) (\S+)$', c_arguments)
                    if len(r) > 0:
                        r = r[0]

                    ptr_depth = len(list(filter(lambda x: x == '*', r[1])))
                    if ptr_depth == 0:
                        if r[0] == 'int32_t': # When there is an Int
                            func_def += 'func ' + swift_function + '(_ value: Int) -> Int {\n' + \
                                'return Int(' + c_function + '(Int32(value)))\n}\n'


        elif c_return == 'char*': # When returning a String?
            if c_num_arguments == 1: # When only accepting 1 argument
                if c_arguments == 'void': # When there is no argument
                    func_def += 'func ' + swift_function + '() -> String? {\n' + \
                        'return DSS.getString(from: ' + c_function + ')\n}\n'
                else:
                    r = re.findall('^(\S+) (\S+)$', c_arguments)
                    if len(r) > 0:
                        r = r[0]

                    ptr_depth = len(list(filter(lambda x: x == '*', r[1])))
                    if ptr_depth == 0:
                        if r[0] == 'int32_t': # When there is an Int
                            func_def += 'func ' + swift_function + '(_ value: Int) -> String? {\n' + \
                                'return DSS.getString(from: ' + c_function + ', for: value)\n}\n'

        elif c_return == 'double': # When returning a Double
            if c_num_arguments == 1: # When only accepting 1 argument
                if c_arguments == 'void': # When there is no argument
                    func_def += 'func ' + swift_function + '() -> Double {\n' + \
                        'return ' + c_function + '()\n}\n'



        func_def = func_def.split('\n')
        is_inside = False
        for i in range(len(func_def)):
            if '}' in func_def[i]:
                is_inside = False
            if is_inside:
                func_def[i] = '        ' + func_def[i]
                continue
            elif '{' in func_def[i]:
                is_inside = True
            func_def[i] = '    ' + func_def[i]
        func_def = '\n'.join(func_def)

        # Return function
        return func_def

    return ''

def main():
    print('Hello World')

    # Opens the header file
    dss_file = open('dss_capi/dss_capi.h', 'r')

    # Loads content and breaks it into lines
    dss_header = dss_file.read()

    # Cleanup immediately -> close header file
    dss_file.close()

    # Remove DSS_CAPI_V7_DLL wherever it exists
    dss_header = dss_header.replace('DSS_CAPI_V7_DLL', '')

    # Make a list
    dss_header_list = dss_header.split('\n')

    # Remove all leading white spaces on all lines
    dss_header_list = [l.lstrip() for l in dss_header_list]

    # Remove all empty lines
    dss_header_list = list(filter(lambda x: len(x) is not 0, dss_header_list))

    # Remove all '#define', '#include' etc. and 'extern C {' thingies
    dss_header_list = list(filter(lambda x: '#' not in x and 'extern' not in x, dss_header_list))

    # Merge multi-line functions into one lines
    i_func = 0
    i_in_comment = False
    i_in_func = False
    for i in range(len(dss_header_list)):
        if '*/' in dss_header_list[i]:
            i_in_comment = False
            continue
        elif i_in_comment or '/*' in dss_header_list[i]:
            i_in_comment = True
            continue

        if i_in_func:
            if dss_header_list[i][-1] == ',':
                dss_header_list[i_func] += dss_header_list[i] + ' '
            else:
                dss_header_list[i_func] += dss_header_list[i]

        if ')' in dss_header_list[i]:
            i_in_func = False

        if i_in_func:
            dss_header_list[i] = ''

        if '(' in dss_header_list[i] and ')' not in dss_header_list[i]:
            i_in_func = True
            i_func = i
            print(dss_header_list[i])

    # Remove all empty lines after combining multi-line functions
    dss_header_list = list(filter(lambda x: len(x) is not 0, dss_header_list))

    print(dss_header_list)

    # Open template file
    swift_template_file = open('dss_template.txt', 'r')

    # Load in the template
    swift_template = swift_template_file.read()

    # Cleanup immediately -> close template file
    swift_template_file.close()

    # Make template list -> [head, foot]
    swift_template_list = swift_template.split('##########')

    # Start writing to the output file
    fout = open('DSS.swift', 'w')

    # Write the head first
    fout.write(swift_template_list[0])

    try:
        [fout.write(decode_func(l)) for l in dss_header_list]
    except Exception as e:
        print(e.message())


    # Write the foot last
    fout.write(swift_template_list[1])

    fout.close()


if __name__ == '__main__':
    # Run main after lading the whole script
    main()
