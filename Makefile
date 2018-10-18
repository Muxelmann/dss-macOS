cmd_folder = dss_cmd/dss_cmd/dss_capi
cmd_folder_map = $(cmd_folder)/module.map
cmd_header_path := $(abspath $(cmd_folder))

.PHONY: all
all:
	git submodule init
	git submodule update
	cd dss_capi/klusolve && cmake . && make
	cd dss_capi && bash build_macos_x64.sh
	echo 'module dss_capi [system] {\n    header "$(cmd_header_path)/dss_capi.h"\n    export *\n}\n' > $(cmd_folder_map)
	cp dss_capi/include/v7/*.h $(cmd_folder)
	cp dss_capi/lib/darwin_x64/*.dylib $(cmd_folder)
	cp dss_capi/lib/darwin_x64/v7/*.dylib $(cmd_folder)
	python3 convert.py "$(cmd_folder)/dss_capi.h" "$(cmd_folder)/../DSS.swift"

.PHONY: setup
setup:
	brew update
	command -v fpc >/dev/null 2>&1 && brew upgrade fpc || brew install fpc
	command -v svn >/dev/null 2>&1 && brew upgrade cmake || brew install cmake
	command -v svn >/dev/null 2>&1 && brew upgrade SuiteSparse || brew install SuiteSparse
	command -v fpc >/dev/null 2>&1 && brew upgrade python3 || brew install python3

.PHONY: clean
clean:
	rm -rf dss_capi
	rm $(cmd_folder)/*
	rm -rf electricdss-src
	git submodule update
