import Foundation
import dss_capi

typealias Int32Array = UnsafeMutablePointer<Int32>
typealias Int32ArrayPtr = UnsafeMutablePointer<Int32Array?>
typealias Int32ArrayFunc = (Int32ArrayPtr, Int32Array) -> Void
typealias Int32ArrayPhaseFunc = (Int32ArrayPtr, Int32Array, Int32) -> Void

typealias DSSString = UnsafeMutablePointer<Int8>
typealias DSSStringArray = UnsafeMutablePointer<DSSString?>
typealias DSSStringArrayPtr = UnsafeMutablePointer<DSSStringArray?>
typealias DSSStringArrayFunc = (DSSStringArrayPtr, Int32Array) -> Void
typealias DSSStringArrayPhaseFunc = (DSSStringArrayPtr, Int32Array, Int32) -> Void

typealias DSSDoubleArray = UnsafeMutablePointer<Double>
typealias DSSDoubleArrayPtr = UnsafeMutablePointer<DSSDoubleArray?>
typealias DSSDoubleArrayFunc = (DSSDoubleArrayPtr, Int32Array) -> Void
typealias DSSDoubleArrayPhaseFunc = (DSSDoubleArrayPtr, Int32Array, Int32) -> Void

class DSS {

    
    /**
    The C function called is: ```void DSS_ResetStringBuffer(void);```
    */
    func DSSResetStringBuffer() {
        DSS_ResetStringBuffer()
    }
        
    /**
    The C function called is: ```void DSS_Dispose_PByte(int8_t** p);```
    */
        
    /**
    The C function called is: ```void DSS_Dispose_PDouble(double** p);```
    */
        
    /**
    The C function called is: ```void DSS_Dispose_PInteger(int32_t** p);```
    */
        
    /**
    The C function called is: ```void DSS_Dispose_PPAnsiChar(char ***p, int32_t cnt);```
    */
        
    /**
    Dispose temporary buffer data in the global result (GR) pointers.
    The C function called is: ```void DSS_DisposeGRData(void);```
    */
    func DSSDisposeGRData() {
        DSS_DisposeGRData()
    }
        
    /**
    Get references to the global result (GR) pointers, used in  the *_GR variations of most getter functions The returned values in the DataPtrs will contain pointers to the global variables that contains the actual pointers. The CountPtrs are not reallocated during the execution, so the returned values contain the actual pointer values..
    The C function called is: ```void DSS_GetGRPointers(char**** DataPtr_PPAnsiChar, double*** DataPtr_PDouble, int32_t*** DataPtr_PInteger, int8_t*** DataPtr_PByte, int32_t** CountPtr_PPAnsiChar, int32_t** CountPtr_PDouble, int32_t** CountPtr_PInteger, int32_t** CountPtr_PByte);```
    */
        
    /**
    The C function called is: ```void DSS_NewCircuit(char* Value);```
    */
    func DSSNewCircuit(_ value: String) {
        DSS_NewCircuit(DSS.getPointer(to: value))
    }
        
    /**
    Array of strings consisting of all element names in the active class..
    The C function called is: ```void ActiveClass_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func ActiveClassGetAllNames() -> [String] {
        return DSS.getStringArray(ActiveClass_Get_AllNames)
    }
        
    /**
    Same as ActiveClass_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void ActiveClass_Get_AllNames_GR(void);```
    */
    func ActiveClassGetAllNamesGR() {
        ActiveClass_Get_AllNames_GR()
    }
        
    /**
    Sets first element in the active class to be the active DSS object. If object is a CktElement, ActiveCktELment also points to this element. Returns 0 if none..
    The C function called is: ```int32_t ActiveClass_Get_First(void);```
    */
    func ActiveClassGetFirst() -> Int {
        return Int(ActiveClass_Get_First())
    }
        
    /**
    Sets next element in active class to be the active DSS object. If object is a CktElement, ActiveCktElement also points to this element.  Returns 0 if no more..
    The C function called is: ```int32_t ActiveClass_Get_Next(void);```
    */
    func ActiveClassGetNext() -> Int {
        return Int(ActiveClass_Get_Next())
    }
        
    /**
    Name of the Active Element of the Active Class.
    The C function called is: ```char* ActiveClass_Get_Name(void);```
    */
    func ActiveClassGetName() -> String? {
        return DSS.getString(from: ActiveClass_Get_Name)
    }
        
    /**
    The C function called is: ```void ActiveClass_Set_Name(char* Value);```
    */
    func ActiveClassSetName(_ value: String) {
        ActiveClass_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Number of elements in this class. Same as Count property..
    The C function called is: ```int32_t ActiveClass_Get_NumElements(void);```
    */
    func ActiveClassGetNumElements() -> Int {
        return Int(ActiveClass_Get_NumElements())
    }
        
    /**
    Returns name of active class..
    The C function called is: ```char* ActiveClass_Get_ActiveClassName(void);```
    */
    func ActiveClassGetActiveClassName() -> String? {
        return DSS.getString(from: ActiveClass_Get_ActiveClassName)
    }
        
    /**
    Number of elements in Active Class. Same as NumElements Property..
    The C function called is: ```int32_t ActiveClass_Get_Count(void);```
    */
    func ActiveClassGetCount() -> Int {
        return Int(ActiveClass_Get_Count())
    }
        
    /**
    Name of Bus.
    The C function called is: ```char* Bus_Get_Name(void);```
    */
    func BusGetName() -> String? {
        return DSS.getString(from: Bus_Get_Name)
    }
        
    /**
    Number of Nodes this bus..
    The C function called is: ```int32_t Bus_Get_NumNodes(void);```
    */
    func BusGetNumNodes() -> Int {
        return Int(Bus_Get_NumNodes())
    }
        
    /**
    Double Array of sequence voltages at this bus..
    The C function called is: ```void Bus_Get_SeqVoltages(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetSeqVoltages() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_SeqVoltages)
    }
        
    /**
    Same as Bus_Get_SeqVoltages but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_SeqVoltages_GR(void);```
    */
    func BusGetSeqVoltagesGR() {
        Bus_Get_SeqVoltages_GR()
    }
        
    /**
    Complex array of voltages at this bus..
    The C function called is: ```void Bus_Get_Voltages(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetVoltages() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_Voltages)
    }
        
    /**
    Same as Bus_Get_Voltages but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_Voltages_GR(void);```
    */
    func BusGetVoltagesGR() {
        Bus_Get_Voltages_GR()
    }
        
    /**
    Integer Array of Node Numbers defined at the bus in same order as the voltages..
    The C function called is: ```void Bus_Get_Nodes(int32_t** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetNodes() -> [Int] {
        return DSS.getIntArray(Bus_Get_Nodes)
    }
        
    /**
    Same as Bus_Get_Nodes but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_Nodes_GR(void);```
    */
    func BusGetNodesGR() {
        Bus_Get_Nodes_GR()
    }
        
    /**
    Short circuit currents at bus; Complex Array..
    The C function called is: ```void Bus_Get_Isc(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetIsc() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_Isc)
    }
        
    /**
    Same as Bus_Get_Isc but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_Isc_GR(void);```
    */
    func BusGetIscGR() {
        Bus_Get_Isc_GR()
    }
        
    /**
    Open circuit voltage; Complex array..
    The C function called is: ```void Bus_Get_Voc(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetVoc() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_Voc)
    }
        
    /**
    Same as Bus_Get_Voc but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_Voc_GR(void);```
    */
    func BusGetVocGR() {
        Bus_Get_Voc_GR()
    }
        
    /**
    Base voltage at bus in kV.
    The C function called is: ```double Bus_Get_kVBase(void);```
    */
    func BusGetKVBase() -> Double {
        return Bus_Get_kVBase()
    }
        
    /**
    Complex Array of pu voltages at the bus..
    The C function called is: ```void Bus_Get_puVoltages(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetPuVoltages() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_puVoltages)
    }
        
    /**
    Same as Bus_Get_puVoltages but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_puVoltages_GR(void);```
    */
    func BusGetPuVoltagesGR() {
        Bus_Get_puVoltages_GR()
    }
        
    /**
    Complex Zero-Sequence short circuit impedance at bus..
    The C function called is: ```void Bus_Get_Zsc0(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetZsc0() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_Zsc0)
    }
        
    /**
    Same as Bus_Get_Zsc0 but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_Zsc0_GR(void);```
    */
    func BusGetZsc0GR() {
        Bus_Get_Zsc0_GR()
    }
        
    /**
    Complex Positive-Sequence short circuit impedance at bus...
    The C function called is: ```void Bus_Get_Zsc1(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetZsc1() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_Zsc1)
    }
        
    /**
    Same as Bus_Get_Zsc1 but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_Zsc1_GR(void);```
    */
    func BusGetZsc1GR() {
        Bus_Get_Zsc1_GR()
    }
        
    /**
    Complex array of Zsc matrix at bus. Column by column..
    The C function called is: ```void Bus_Get_ZscMatrix(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetZscMatrix() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_ZscMatrix)
    }
        
    /**
    Same as Bus_Get_ZscMatrix but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_ZscMatrix_GR(void);```
    */
    func BusGetZscMatrixGR() {
        Bus_Get_ZscMatrix_GR()
    }
        
    /**
    The C function called is: ```uint16_t Bus_ZscRefresh(void);```
    */
    func BusZscRefresh() -> Int {
        return Int(Bus_ZscRefresh())
    }
        
    /**
    Complex array of Ysc matrix at bus. Column by column..
    The C function called is: ```void Bus_Get_YscMatrix(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetYscMatrix() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_YscMatrix)
    }
        
    /**
    Same as Bus_Get_YscMatrix but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_YscMatrix_GR(void);```
    */
    func BusGetYscMatrixGR() {
        Bus_Get_YscMatrix_GR()
    }
        
    /**
    False=0 else True. Indicates whether a coordinate has been defined for this bus.
    The C function called is: ```uint16_t Bus_Get_Coorddefined(void);```
    */
    func BusGetCoorddefined() -> Int {
        return Int(Bus_Get_Coorddefined())
    }
        
    /**
    X Coordinate for bus (double).
    The C function called is: ```double Bus_Get_x(void);```
    */
    func BusGetX() -> Double {
        return Bus_Get_x()
    }
        
    /**
    X Coordinate for bus (double).
    The C function called is: ```void Bus_Set_x(double Value);```
    */
    func BusSetX(_ value: Double) {
        Bus_Set_x(value)
    }
        
    /**
    Y coordinate for bus(double).
    The C function called is: ```double Bus_Get_y(void);```
    */
    func BusGetY() -> Double {
        return Bus_Get_y()
    }
        
    /**
    Y coordinate for bus(double).
    The C function called is: ```void Bus_Set_y(double Value);```
    */
    func BusSetY(_ value: Double) {
        Bus_Set_y(value)
    }
        
    /**
    Distance from energymeter (if non-zero).
    The C function called is: ```double Bus_Get_Distance(void);```
    */
    func BusGetDistance() -> Double {
        return Bus_Get_Distance()
    }
        
    /**
    The C function called is: ```int32_t Bus_GetUniqueNodeNumber(int32_t StartNumber);```
    */
    func BusGetUniqueNodeNumber(_ value: Int) -> Int {
        return Int(Bus_GetUniqueNodeNumber(Int32(value)))
    }
        
    /**
    Complex Double array of Sequence Voltages (0, 1, 2) at this Bus..
    The C function called is: ```void Bus_Get_CplxSeqVoltages(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetCplxSeqVoltages() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_CplxSeqVoltages)
    }
        
    /**
    Same as Bus_Get_CplxSeqVoltages but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_CplxSeqVoltages_GR(void);```
    */
    func BusGetCplxSeqVoltagesGR() {
        Bus_Get_CplxSeqVoltages_GR()
    }
        
    /**
    Average interruption duration, hr..
    The C function called is: ```double Bus_Get_Int_Duration(void);```
    */
    func BusGetIntDuration() -> Double {
        return Bus_Get_Int_Duration()
    }
        
    /**
    Accumulated failure rate downstream from this bus; faults per year.
    The C function called is: ```double Bus_Get_Lambda(void);```
    */
    func BusGetLambda() -> Double {
        return Bus_Get_Lambda()
    }
        
    /**
    Accumulated customer outage durations.
    The C function called is: ```double Bus_Get_Cust_Duration(void);```
    */
    func BusGetCustDuration() -> Double {
        return Bus_Get_Cust_Duration()
    }
        
    /**
    Annual number of customer-interruptions from this bus.
    The C function called is: ```double Bus_Get_Cust_Interrupts(void);```
    */
    func BusGetCustInterrupts() -> Double {
        return Bus_Get_Cust_Interrupts()
    }
        
    /**
    Total numbers of customers served downline from this bus.
    The C function called is: ```int32_t Bus_Get_N_Customers(void);```
    */
    func BusGetNCustomers() -> Int {
        return Int(Bus_Get_N_Customers())
    }
        
    /**
    Number of interruptions this bus per year.
    The C function called is: ```double Bus_Get_N_interrupts(void);```
    */
    func BusGetNInterrupts() -> Double {
        return Bus_Get_N_interrupts()
    }
        
    /**
    Returns Complex array of pu L-L voltages for 2- and 3-phase buses. Returns -1.0 for 1-phase bus. If more than 3 phases, returns only 3 phases..
    The C function called is: ```void Bus_Get_puVLL(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetPuVLL() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_puVLL)
    }
        
    /**
    Same as Bus_Get_puVLL but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_puVLL_GR(void);```
    */
    func BusGetPuVLLGR() {
        Bus_Get_puVLL_GR()
    }
        
    /**
    For 2- and 3-phase buses, returns array of complex numbers represetin L-L voltages in volts. Returns -1.0 for 1-phase bus. If more than 3 phases, returns only first 3..
    The C function called is: ```void Bus_Get_VLL(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetVLL() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_VLL)
    }
        
    /**
    Same as Bus_Get_VLL but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_VLL_GR(void);```
    */
    func BusGetVLLGR() {
        Bus_Get_VLL_GR()
    }
        
    /**
    Array of doubles containig voltage magnitude, angle pairs in per unit.
    The C function called is: ```void Bus_Get_puVmagAngle(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetPuVmagAngle() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_puVmagAngle)
    }
        
    /**
    Same as Bus_Get_puVmagAngle but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_puVmagAngle_GR(void);```
    */
    func BusGetPuVmagAngleGR() {
        Bus_Get_puVmagAngle_GR()
    }
        
    /**
    Variant Array of doubles containing voltages in Magnitude (VLN), angle (deg).
    The C function called is: ```void Bus_Get_VMagAngle(double** ResultPtr, int32_t* ResultCount);```
    */
    func BusGetVMagAngle() -> [Double] {
        return DSS.getDoubleArray(Bus_Get_VMagAngle)
    }
        
    /**
    Same as Bus_Get_VMagAngle but using the global buffer interface for results.
    The C function called is: ```void Bus_Get_VMagAngle_GR(void);```
    */
    func BusGetVMagAngleGR() {
        Bus_Get_VMagAngle_GR()
    }
        
    /**
    Total length of line downline from this bus, in miles. For recloser siting algorithm..
    The C function called is: ```double Bus_Get_TotalMiles(void);```
    */
    func BusGetTotalMiles() -> Double {
        return Bus_Get_TotalMiles()
    }
        
    /**
    Integer ID of the feeder section in which this bus is located..
    The C function called is: ```int32_t Bus_Get_SectionID(void);```
    */
    func BusGetSectionID() -> Int {
        return Int(Bus_Get_SectionID())
    }
        
    /**
    Array of strings with all Capacitor names in the circuit..
    The C function called is: ```void Capacitors_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CapacitorsGetAllNames() -> [String] {
        return DSS.getStringArray(Capacitors_Get_AllNames)
    }
        
    /**
    Same as Capacitors_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Capacitors_Get_AllNames_GR(void);```
    */
    func CapacitorsGetAllNamesGR() {
        Capacitors_Get_AllNames_GR()
    }
        
    /**
    Sets the first Capacitor active. Returns 0 if no more..
    The C function called is: ```int32_t Capacitors_Get_First(void);```
    */
    func CapacitorsGetFirst() -> Int {
        return Int(Capacitors_Get_First())
    }
        
    /**
    Delta connection or wye?.
    The C function called is: ```uint16_t Capacitors_Get_IsDelta(void);```
    */
    func CapacitorsGetIsDelta() -> Int {
        return Int(Capacitors_Get_IsDelta())
    }
        
    /**
    Bank kV rating. Use LL for 2 or 3 phases, or actual can rating for 1 phase..
    The C function called is: ```double Capacitors_Get_kV(void);```
    */
    func CapacitorsGetKV() -> Double {
        return Capacitors_Get_kV()
    }
        
    /**
    Total bank KVAR, distributed equally among phases and steps..
    The C function called is: ```double Capacitors_Get_kvar(void);```
    */
    func CapacitorsGetKvar() -> Double {
        return Capacitors_Get_kvar()
    }
        
    /**
    Sets the active Capacitor by Name..
    The C function called is: ```char* Capacitors_Get_Name(void);```
    */
    func CapacitorsGetName() -> String? {
        return DSS.getString(from: Capacitors_Get_Name)
    }
        
    /**
    Sets the next Capacitor active. Returns 0 if no more..
    The C function called is: ```int32_t Capacitors_Get_Next(void);```
    */
    func CapacitorsGetNext() -> Int {
        return Int(Capacitors_Get_Next())
    }
        
    /**
    Number of steps (default 1) for distributing and switching the total bank kVAR..
    The C function called is: ```int32_t Capacitors_Get_NumSteps(void);```
    */
    func CapacitorsGetNumSteps() -> Int {
        return Int(Capacitors_Get_NumSteps())
    }
        
    /**
    Delta connection or wye?.
    The C function called is: ```void Capacitors_Set_IsDelta(uint16_t Value);```
    */
    func CapacitorsSetIsDelta(_ value: Int) {
        Capacitors_Set_IsDelta(UInt16(value))
    }
        
    /**
    Bank kV rating. Use LL for 2 or 3 phases, or actual can rating for 1 phase..
    The C function called is: ```void Capacitors_Set_kV(double Value);```
    */
    func CapacitorsSetKV(_ value: Double) {
        Capacitors_Set_kV(value)
    }
        
    /**
    Total bank KVAR, distributed equally among phases and steps..
    The C function called is: ```void Capacitors_Set_kvar(double Value);```
    */
    func CapacitorsSetKvar(_ value: Double) {
        Capacitors_Set_kvar(value)
    }
        
    /**
    Sets the active Capacitor by Name..
    The C function called is: ```void Capacitors_Set_Name(char* Value);```
    */
    func CapacitorsSetName(_ value: String) {
        Capacitors_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Number of steps (default 1) for distributing and switching the total bank kVAR..
    The C function called is: ```void Capacitors_Set_NumSteps(int32_t Value);```
    */
    func CapacitorsSetNumSteps(_ value: Int) {
        Capacitors_Set_NumSteps(Int32(value))
    }
        
    /**
    Number of Capacitor objects in active circuit..
    The C function called is: ```int32_t Capacitors_Get_Count(void);```
    */
    func CapacitorsGetCount() -> Int {
        return Int(Capacitors_Get_Count())
    }
        
    /**
    The C function called is: ```uint16_t Capacitors_AddStep(void);```
    */
    func CapacitorsAddStep() -> Int {
        return Int(Capacitors_AddStep())
    }
        
    /**
    The C function called is: ```uint16_t Capacitors_SubtractStep(void);```
    */
    func CapacitorsSubtractStep() -> Int {
        return Int(Capacitors_SubtractStep())
    }
        
    /**
    Number of Steps available in cap bank to be switched ON..
    The C function called is: ```int32_t Capacitors_Get_AvailableSteps(void);```
    */
    func CapacitorsGetAvailableSteps() -> Int {
        return Int(Capacitors_Get_AvailableSteps())
    }
        
    /**
    A array of  integer [0..numsteps-1] indicating state of each step. If value is -1 an error has occurred..
    The C function called is: ```void Capacitors_Get_States(int32_t** ResultPtr, int32_t* ResultCount);```
    */
    func CapacitorsGetStates() -> [Int] {
        return DSS.getIntArray(Capacitors_Get_States)
    }
        
    /**
    Same as Capacitors_Get_States but using the global buffer interface for results.
    The C function called is: ```void Capacitors_Get_States_GR(void);```
    */
    func CapacitorsGetStatesGR() {
        Capacitors_Get_States_GR()
    }
        
    /**
    Array of integer [0 ..numSteps-1] indicating the state of each step.
    The C function called is: ```void Capacitors_Set_States(int32_t* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void Capacitors_Open(void);```
    */
    func CapacitorsOpen() {
        Capacitors_Open()
    }
        
    /**
    The C function called is: ```void Capacitors_Close(void);```
    */
    func CapacitorsClose() {
        Capacitors_Close()
    }
        
    /**
    Array of strings with all CapControl names..
    The C function called is: ```void CapControls_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CapControlsGetAllNames() -> [String] {
        return DSS.getStringArray(CapControls_Get_AllNames)
    }
        
    /**
    Same as CapControls_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void CapControls_Get_AllNames_GR(void);```
    */
    func CapControlsGetAllNamesGR() {
        CapControls_Get_AllNames_GR()
    }
        
    /**
    Name of the Capacitor that is controlled..
    The C function called is: ```char* CapControls_Get_Capacitor(void);```
    */
    func CapControlsGetCapacitor() -> String? {
        return DSS.getString(from: CapControls_Get_Capacitor)
    }
        
    /**
    Transducer ratio from pirmary current to control current..
    The C function called is: ```double CapControls_Get_CTratio(void);```
    */
    func CapControlsGetCTratio() -> Double {
        return CapControls_Get_CTratio()
    }
        
    /**
    The C function called is: ```double CapControls_Get_DeadTime(void);```
    */
    func CapControlsGetDeadTime() -> Double {
        return CapControls_Get_DeadTime()
    }
        
    /**
    Time delay [s] to switch on after arming.  Control may reset before actually switching..
    The C function called is: ```double CapControls_Get_Delay(void);```
    */
    func CapControlsGetDelay() -> Double {
        return CapControls_Get_Delay()
    }
        
    /**
    Time delay [s] before swithcing off a step. Control may reset before actually switching..
    The C function called is: ```double CapControls_Get_DelayOff(void);```
    */
    func CapControlsGetDelayOff() -> Double {
        return CapControls_Get_DelayOff()
    }
        
    /**
    Sets the first CapControl as active. Return 0 if none..
    The C function called is: ```int32_t CapControls_Get_First(void);```
    */
    func CapControlsGetFirst() -> Int {
        return Int(CapControls_Get_First())
    }
        
    /**
    Type of automatic controller..
    The C function called is: ```int32_t CapControls_Get_Mode(void);```
    */
    func CapControlsGetMode() -> Int {
        return Int(CapControls_Get_Mode())
    }
        
    /**
    Full name of the element that PT and CT are connected to..
    The C function called is: ```char* CapControls_Get_MonitoredObj(void);```
    */
    func CapControlsGetMonitoredObj() -> String? {
        return DSS.getString(from: CapControls_Get_MonitoredObj)
    }
        
    /**
    Terminal number on the element that PT and CT are connected to..
    The C function called is: ```int32_t CapControls_Get_MonitoredTerm(void);```
    */
    func CapControlsGetMonitoredTerm() -> Int {
        return Int(CapControls_Get_MonitoredTerm())
    }
        
    /**
    Sets a CapControl active by name..
    The C function called is: ```char* CapControls_Get_Name(void);```
    */
    func CapControlsGetName() -> String? {
        return DSS.getString(from: CapControls_Get_Name)
    }
        
    /**
    Gets the next CapControl in the circut. Returns 0 if none..
    The C function called is: ```int32_t CapControls_Get_Next(void);```
    */
    func CapControlsGetNext() -> Int {
        return Int(CapControls_Get_Next())
    }
        
    /**
    Threshold to switch off a step. See Mode for units..
    The C function called is: ```double CapControls_Get_OFFSetting(void);```
    */
    func CapControlsGetOFFSetting() -> Double {
        return CapControls_Get_OFFSetting()
    }
        
    /**
    Threshold to arm or switch on a step.  See Mode for units..
    The C function called is: ```double CapControls_Get_ONSetting(void);```
    */
    func CapControlsGetONSetting() -> Double {
        return CapControls_Get_ONSetting()
    }
        
    /**
    Transducer ratio from primary feeder to control voltage..
    The C function called is: ```double CapControls_Get_PTratio(void);```
    */
    func CapControlsGetPTratio() -> Double {
        return CapControls_Get_PTratio()
    }
        
    /**
    Enables Vmin and Vmax to override the control Mode.
    The C function called is: ```uint16_t CapControls_Get_UseVoltOverride(void);```
    */
    func CapControlsGetUseVoltOverride() -> Int {
        return Int(CapControls_Get_UseVoltOverride())
    }
        
    /**
    With VoltOverride, swtich off whenever PT voltage exceeds this level..
    The C function called is: ```double CapControls_Get_Vmax(void);```
    */
    func CapControlsGetVmax() -> Double {
        return CapControls_Get_Vmax()
    }
        
    /**
    With VoltOverride, switch ON whenever PT voltage drops below this level..
    The C function called is: ```double CapControls_Get_Vmin(void);```
    */
    func CapControlsGetVmin() -> Double {
        return CapControls_Get_Vmin()
    }
        
    /**
    Name of the Capacitor that is controlled..
    The C function called is: ```void CapControls_Set_Capacitor(char* Value);```
    */
    func CapControlsSetCapacitor(_ value: String) {
        CapControls_Set_Capacitor(DSS.getPointer(to: value))
    }
        
    /**
    Transducer ratio from pirmary current to control current..
    The C function called is: ```void CapControls_Set_CTratio(double Value);```
    */
    func CapControlsSetCTratio(_ value: Double) {
        CapControls_Set_CTratio(value)
    }
        
    /**
    The C function called is: ```void CapControls_Set_DeadTime(double Value);```
    */
    func CapControlsSetDeadTime(_ value: Double) {
        CapControls_Set_DeadTime(value)
    }
        
    /**
    Time delay [s] to switch on after arming.  Control may reset before actually switching..
    The C function called is: ```void CapControls_Set_Delay(double Value);```
    */
    func CapControlsSetDelay(_ value: Double) {
        CapControls_Set_Delay(value)
    }
        
    /**
    Time delay [s] before swithcing off a step. Control may reset before actually switching..
    The C function called is: ```void CapControls_Set_DelayOff(double Value);```
    */
    func CapControlsSetDelayOff(_ value: Double) {
        CapControls_Set_DelayOff(value)
    }
        
    /**
    Type of automatic controller..
    The C function called is: ```void CapControls_Set_Mode(int32_t Value);```
    */
    func CapControlsSetMode(_ value: Int) {
        CapControls_Set_Mode(Int32(value))
    }
        
    /**
    Full name of the element that PT and CT are connected to..
    The C function called is: ```void CapControls_Set_MonitoredObj(char* Value);```
    */
    func CapControlsSetMonitoredObj(_ value: String) {
        CapControls_Set_MonitoredObj(DSS.getPointer(to: value))
    }
        
    /**
    Terminal number on the element that PT and CT are connected to..
    The C function called is: ```void CapControls_Set_MonitoredTerm(int32_t Value);```
    */
    func CapControlsSetMonitoredTerm(_ value: Int) {
        CapControls_Set_MonitoredTerm(Int32(value))
    }
        
    /**
    Sets a CapControl active by name..
    The C function called is: ```void CapControls_Set_Name(char* Value);```
    */
    func CapControlsSetName(_ value: String) {
        CapControls_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Threshold to switch off a step. See Mode for units..
    The C function called is: ```void CapControls_Set_OFFSetting(double Value);```
    */
    func CapControlsSetOFFSetting(_ value: Double) {
        CapControls_Set_OFFSetting(value)
    }
        
    /**
    Threshold to arm or switch on a step.  See Mode for units..
    The C function called is: ```void CapControls_Set_ONSetting(double Value);```
    */
    func CapControlsSetONSetting(_ value: Double) {
        CapControls_Set_ONSetting(value)
    }
        
    /**
    Transducer ratio from primary feeder to control voltage..
    The C function called is: ```void CapControls_Set_PTratio(double Value);```
    */
    func CapControlsSetPTratio(_ value: Double) {
        CapControls_Set_PTratio(value)
    }
        
    /**
    Enables Vmin and Vmax to override the control Mode.
    The C function called is: ```void CapControls_Set_UseVoltOverride(uint16_t Value);```
    */
    func CapControlsSetUseVoltOverride(_ value: Int) {
        CapControls_Set_UseVoltOverride(UInt16(value))
    }
        
    /**
    With VoltOverride, swtich off whenever PT voltage exceeds this level..
    The C function called is: ```void CapControls_Set_Vmax(double Value);```
    */
    func CapControlsSetVmax(_ value: Double) {
        CapControls_Set_Vmax(value)
    }
        
    /**
    With VoltOverride, switch ON whenever PT voltage drops below this level..
    The C function called is: ```void CapControls_Set_Vmin(double Value);```
    */
    func CapControlsSetVmin(_ value: Double) {
        CapControls_Set_Vmin(value)
    }
        
    /**
    Number of CapControls in Active Circuit.
    The C function called is: ```int32_t CapControls_Get_Count(void);```
    */
    func CapControlsGetCount() -> Int {
        return Int(CapControls_Get_Count())
    }
        
    /**
    The C function called is: ```void CapControls_Reset(void);```
    */
    func CapControlsReset() {
        CapControls_Reset()
    }
        
    /**
    Name of the active circuit..
    The C function called is: ```char* Circuit_Get_Name(void);```
    */
    func CircuitGetName() -> String? {
        return DSS.getString(from: Circuit_Get_Name)
    }
        
    /**
    Total number of Buses in the circuit..
    The C function called is: ```int32_t Circuit_Get_NumBuses(void);```
    */
    func CircuitGetNumBuses() -> Int {
        return Int(Circuit_Get_NumBuses())
    }
        
    /**
    Number of CktElements in the circuit..
    The C function called is: ```int32_t Circuit_Get_NumCktElements(void);```
    */
    func CircuitGetNumCktElements() -> Int {
        return Int(Circuit_Get_NumCktElements())
    }
        
    /**
    Total number of nodes in the circuit..
    The C function called is: ```int32_t Circuit_Get_NumNodes(void);```
    */
    func CircuitGetNumNodes() -> Int {
        return Int(Circuit_Get_NumNodes())
    }
        
    /**
    Complex total line losses in the circuit.
    The C function called is: ```void Circuit_Get_LineLosses(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetLineLosses() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_LineLosses)
    }
        
    /**
    Same as Circuit_Get_LineLosses but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_LineLosses_GR(void);```
    */
    func CircuitGetLineLossesGR() {
        Circuit_Get_LineLosses_GR()
    }
        
    /**
    Total losses in active circuit, complex number (two-element array of double)..
    The C function called is: ```void Circuit_Get_Losses(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetLosses() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_Losses)
    }
        
    /**
    Same as Circuit_Get_Losses but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_Losses_GR(void);```
    */
    func CircuitGetLossesGR() {
        Circuit_Get_Losses_GR()
    }
        
    /**
    Array of magnitudes (doubles) of voltages at all buses.
    The C function called is: ```void Circuit_Get_AllBusVmag(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetAllBusVmag() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_AllBusVmag)
    }
        
    /**
    Same as Circuit_Get_AllBusVmag but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllBusVmag_GR(void);```
    */
    func CircuitGetAllBusVmagGR() {
        Circuit_Get_AllBusVmag_GR()
    }
        
    /**
    Complex array of all bus, node voltages from most recent solution.
    The C function called is: ```void Circuit_Get_AllBusVolts(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetAllBusVolts() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_AllBusVolts)
    }
        
    /**
    Same as Circuit_Get_AllBusVolts but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllBusVolts_GR(void);```
    */
    func CircuitGetAllBusVoltsGR() {
        Circuit_Get_AllBusVolts_GR()
    }
        
    /**
    Array of strings containing Full Name of all elements..
    The C function called is: ```void Circuit_Get_AllElementNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetAllElementNames() -> [String] {
        return DSS.getStringArray(Circuit_Get_AllElementNames)
    }
        
    /**
    Same as Circuit_Get_AllElementNames but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllElementNames_GR(void);```
    */
    func CircuitGetAllElementNamesGR() {
        Circuit_Get_AllElementNames_GR()
    }
        
    /**
    Complex losses in all transformers designated to substations..
    The C function called is: ```void Circuit_Get_SubstationLosses(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetSubstationLosses() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_SubstationLosses)
    }
        
    /**
    Same as Circuit_Get_SubstationLosses but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_SubstationLosses_GR(void);```
    */
    func CircuitGetSubstationLossesGR() {
        Circuit_Get_SubstationLosses_GR()
    }
        
    /**
    Total power, watts delivered to the circuit.
    The C function called is: ```void Circuit_Get_TotalPower(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetTotalPower() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_TotalPower)
    }
        
    /**
    Same as Circuit_Get_TotalPower but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_TotalPower_GR(void);```
    */
    func CircuitGetTotalPowerGR() {
        Circuit_Get_TotalPower_GR()
    }
        
    /**
    The C function called is: ```void Circuit_Disable(char* Name);```
    */
    func CircuitDisable(_ value: String) {
        Circuit_Disable(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Circuit_Enable(char* Name);```
    */
    func CircuitEnable(_ value: String) {
        Circuit_Enable(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```int32_t Circuit_FirstPCElement(void);```
    */
    func CircuitFirstPCElement() -> Int {
        return Int(Circuit_FirstPCElement())
    }
        
    /**
    The C function called is: ```int32_t Circuit_FirstPDElement(void);```
    */
    func CircuitFirstPDElement() -> Int {
        return Int(Circuit_FirstPDElement())
    }
        
    /**
    The C function called is: ```int32_t Circuit_NextPCElement(void);```
    */
    func CircuitNextPCElement() -> Int {
        return Int(Circuit_NextPCElement())
    }
        
    /**
    The C function called is: ```int32_t Circuit_NextPDElement(void);```
    */
    func CircuitNextPDElement() -> Int {
        return Int(Circuit_NextPDElement())
    }
        
    /**
    Array of strings containing names of all buses in circuit (see AllNodeNames)..
    The C function called is: ```void Circuit_Get_AllBusNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetAllBusNames() -> [String] {
        return DSS.getStringArray(Circuit_Get_AllBusNames)
    }
        
    /**
    Same as Circuit_Get_AllBusNames but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllBusNames_GR(void);```
    */
    func CircuitGetAllBusNamesGR() {
        Circuit_Get_AllBusNames_GR()
    }
        
    /**
    Array of total losses (complex) in each circuit element.
    The C function called is: ```void Circuit_Get_AllElementLosses(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetAllElementLosses() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_AllElementLosses)
    }
        
    /**
    Same as Circuit_Get_AllElementLosses but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllElementLosses_GR(void);```
    */
    func CircuitGetAllElementLossesGR() {
        Circuit_Get_AllElementLosses_GR()
    }
        
    /**
    The C function called is: ```void Circuit_Sample(void);```
    */
    func CircuitSample() {
        Circuit_Sample()
    }
        
    /**
    The C function called is: ```void Circuit_SaveSample(void);```
    */
    func CircuitSaveSample() {
        Circuit_SaveSample()
    }
        
    /**
    The C function called is: ```int32_t Circuit_SetActiveElement(char* FullName);```
    */
        
    /**
    The C function called is: ```double Circuit_Capacity(double Start, double Increment);```
    */
        
    /**
    Double Array of all bus voltages (each node) magnitudes in Per unit.
    The C function called is: ```void Circuit_Get_AllBusVmagPu(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetAllBusVmagPu() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_AllBusVmagPu)
    }
        
    /**
    Same as Circuit_Get_AllBusVmagPu but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllBusVmagPu_GR(void);```
    */
    func CircuitGetAllBusVmagPuGR() {
        Circuit_Get_AllBusVmagPu_GR()
    }
        
    /**
    The C function called is: ```int32_t Circuit_SetActiveBus(char* BusName);```
    */
        
    /**
    The C function called is: ```int32_t Circuit_SetActiveBusi(int32_t BusIndex);```
    */
    func CircuitSetActiveBusi(_ value: Int) -> Int {
        return Int(Circuit_SetActiveBusi(Int32(value)))
    }
        
    /**
    Array of strings containing full name of each node in system in same order as returned by AllBusVolts, etc..
    The C function called is: ```void Circuit_Get_AllNodeNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetAllNodeNames() -> [String] {
        return DSS.getStringArray(Circuit_Get_AllNodeNames)
    }
        
    /**
    Same as Circuit_Get_AllNodeNames but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllNodeNames_GR(void);```
    */
    func CircuitGetAllNodeNamesGR() {
        Circuit_Get_AllNodeNames_GR()
    }
        
    /**
    System Y matrix (after a solution has been performed).
    The C function called is: ```void Circuit_Get_SystemY(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetSystemY() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_SystemY)
    }
        
    /**
    Same as Circuit_Get_SystemY but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_SystemY_GR(void);```
    */
    func CircuitGetSystemYGR() {
        Circuit_Get_SystemY_GR()
    }
        
    /**
    Returns distance from each bus to parent EnergyMeter. Corresponds to sequence in AllBusNames..
    The C function called is: ```void Circuit_Get_AllBusDistances(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetAllBusDistances() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_AllBusDistances)
    }
        
    /**
    Same as Circuit_Get_AllBusDistances but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllBusDistances_GR(void);```
    */
    func CircuitGetAllBusDistancesGR() {
        Circuit_Get_AllBusDistances_GR()
    }
        
    /**
    Returns an array of distances from parent EnergyMeter for each Node. Corresponds to AllBusVMag sequence..
    The C function called is: ```void Circuit_Get_AllNodeDistances(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetAllNodeDistances() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_AllNodeDistances)
    }
        
    /**
    Same as Circuit_Get_AllNodeDistances but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllNodeDistances_GR(void);```
    */
    func CircuitGetAllNodeDistancesGR() {
        Circuit_Get_AllNodeDistances_GR()
    }
        
    /**
    Returns an array of doubles representing the distances to parent EnergyMeter. Sequence of array corresponds to other node ByPhase properties..
    The C function called is: ```void Circuit_Get_AllNodeDistancesByPhase(double** ResultPtr, int32_t* ResultCount, int32_t Phase);```
    */
    func CircuitGetAllNodeDistancesByPhase(_ value: Int) -> [Double] {
        return DSS.getDoublePhaseArray(Circuit_Get_AllNodeDistancesByPhase, Int32(value))
    }
        
    /**
    Same as Circuit_Get_AllNodeDistancesByPhase but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllNodeDistancesByPhase_GR(int32_t Phase);```
    */
    func CircuitGetAllNodeDistancesByPhaseGR(_ value: Int) {
        Circuit_Get_AllNodeDistancesByPhase_GR(Int32(value))
    }
        
    /**
    Returns Array of doubles represent voltage magnitudes for nodes on the specified phase..
    The C function called is: ```void Circuit_Get_AllNodeVmagByPhase(double** ResultPtr, int32_t* ResultCount, int32_t Phase);```
    */
    func CircuitGetAllNodeVmagByPhase(_ value: Int) -> [Double] {
        return DSS.getDoublePhaseArray(Circuit_Get_AllNodeVmagByPhase, Int32(value))
    }
        
    /**
    Same as Circuit_Get_AllNodeVmagByPhase but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllNodeVmagByPhase_GR(int32_t Phase);```
    */
    func CircuitGetAllNodeVmagByPhaseGR(_ value: Int) {
        Circuit_Get_AllNodeVmagByPhase_GR(Int32(value))
    }
        
    /**
    Returns array of per unit voltage magnitudes for each node by phase.
    The C function called is: ```void Circuit_Get_AllNodeVmagPUByPhase(double** ResultPtr, int32_t* ResultCount, int32_t Phase);```
    */
    func CircuitGetAllNodeVmagPUByPhase(_ value: Int) -> [Double] {
        return DSS.getDoublePhaseArray(Circuit_Get_AllNodeVmagPUByPhase, Int32(value))
    }
        
    /**
    Same as Circuit_Get_AllNodeVmagPUByPhase but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllNodeVmagPUByPhase_GR(int32_t Phase);```
    */
    func CircuitGetAllNodeVmagPUByPhaseGR(_ value: Int) {
        Circuit_Get_AllNodeVmagPUByPhase_GR(Int32(value))
    }
        
    /**
    Return array of strings of the node names for the By Phase criteria. Sequence corresponds to other ByPhase properties..
    The C function called is: ```void Circuit_Get_AllNodeNamesByPhase(char*** ResultPtr, int32_t* ResultCount, int32_t Phase);```
    */
        
    /**
    Same as Circuit_Get_AllNodeNamesByPhase but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_AllNodeNamesByPhase_GR(int32_t Phase);```
    */
    func CircuitGetAllNodeNamesByPhaseGR(_ value: Int) {
        Circuit_Get_AllNodeNamesByPhase_GR(Int32(value))
    }
        
    /**
    The C function called is: ```int32_t Circuit_SetActiveClass(char* ClassName);```
    */
        
    /**
    The C function called is: ```int32_t Circuit_FirstElement(void);```
    */
    func CircuitFirstElement() -> Int {
        return Int(Circuit_FirstElement())
    }
        
    /**
    The C function called is: ```int32_t Circuit_NextElement(void);```
    */
    func CircuitNextElement() -> Int {
        return Int(Circuit_NextElement())
    }
        
    /**
    The C function called is: ```void Circuit_UpdateStorage(void);```
    */
    func CircuitUpdateStorage() {
        Circuit_UpdateStorage()
    }
        
    /**
    Sets Parent PD element, if any, to be the active circuit element and returns index>0; Returns 0 if it fails or not applicable..
    The C function called is: ```int32_t Circuit_Get_ParentPDElement(void);```
    */
    func CircuitGetParentPDElement() -> Int {
        return Int(Circuit_Get_ParentPDElement())
    }
        
    /**
    The C function called is: ```void Circuit_EndOfTimeStepUpdate(void);```
    */
    func CircuitEndOfTimeStepUpdate() {
        Circuit_EndOfTimeStepUpdate()
    }
        
    /**
    Array of strings containing the names of the nodes in the same order as the Y matrix.
    The C function called is: ```void Circuit_Get_YNodeOrder(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetYNodeOrder() -> [String] {
        return DSS.getStringArray(Circuit_Get_YNodeOrder)
    }
        
    /**
    Same as Circuit_Get_YNodeOrder but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_YNodeOrder_GR(void);```
    */
    func CircuitGetYNodeOrderGR() {
        Circuit_Get_YNodeOrder_GR()
    }
        
    /**
    Array of doubles containing complex injection currents for the present solution. Is is the "I" vector of I=YV.
    The C function called is: ```void Circuit_Get_YCurrents(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetYCurrents() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_YCurrents)
    }
        
    /**
    Same as Circuit_Get_YCurrents but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_YCurrents_GR(void);```
    */
    func CircuitGetYCurrentsGR() {
        Circuit_Get_YCurrents_GR()
    }
        
    /**
    Complex array of actual node voltages in same order as SystemY matrix..
    The C function called is: ```void Circuit_Get_YNodeVarray(double** ResultPtr, int32_t* ResultCount);```
    */
    func CircuitGetYNodeVarray() -> [Double] {
        return DSS.getDoubleArray(Circuit_Get_YNodeVarray)
    }
        
    /**
    Same as Circuit_Get_YNodeVarray but using the global buffer interface for results.
    The C function called is: ```void Circuit_Get_YNodeVarray_GR(void);```
    */
    func CircuitGetYNodeVarrayGR() {
        Circuit_Get_YNodeVarray_GR()
    }
        
    /**
    The C function called is: ```void Circuit_SetCktElementName(char* Value);```
    */
    func CircuitSetCktElementName(_ value: String) {
        Circuit_SetCktElementName(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Circuit_SetCktElementIndex(int32_t Value);```
    */
    func CircuitSetCktElementIndex(_ value: Int) {
        Circuit_SetCktElementIndex(Int32(value))
    }
        
    /**
    Array of strings. Get  Bus definitions to which each terminal is connected. 0-based array..
    The C function called is: ```void CktElement_Get_BusNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetBusNames() -> [String] {
        return DSS.getStringArray(CktElement_Get_BusNames)
    }
        
    /**
    Same as CktElement_Get_BusNames but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_BusNames_GR(void);```
    */
    func CktElementGetBusNamesGR() {
        CktElement_Get_BusNames_GR()
    }
        
    /**
    Full Name of Active Circuit Element.
    The C function called is: ```char* CktElement_Get_Name(void);```
    */
    func CktElementGetName() -> String? {
        return DSS.getString(from: CktElement_Get_Name)
    }
        
    /**
    Number of Conductors per Terminal.
    The C function called is: ```int32_t CktElement_Get_NumConductors(void);```
    */
    func CktElementGetNumConductors() -> Int {
        return Int(CktElement_Get_NumConductors())
    }
        
    /**
    Number of Phases.
    The C function called is: ```int32_t CktElement_Get_NumPhases(void);```
    */
    func CktElementGetNumPhases() -> Int {
        return Int(CktElement_Get_NumPhases())
    }
        
    /**
    Number of Terminals this Circuit Element.
    The C function called is: ```int32_t CktElement_Get_NumTerminals(void);```
    */
    func CktElementGetNumTerminals() -> Int {
        return Int(CktElement_Get_NumTerminals())
    }
        
    /**
    Array of strings. Set Bus definitions for each terminal is connected..
    The C function called is: ```void CktElement_Set_BusNames(char** ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Complex array of currents into each conductor of each terminal.
    The C function called is: ```void CktElement_Get_Currents(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetCurrents() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_Currents)
    }
        
    /**
    Same as CktElement_Get_Currents but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_Currents_GR(void);```
    */
    func CktElementGetCurrentsGR() {
        CktElement_Get_Currents_GR()
    }
        
    /**
    Complex array of voltages at terminals.
    The C function called is: ```void CktElement_Get_Voltages(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetVoltages() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_Voltages)
    }
        
    /**
    Same as CktElement_Get_Voltages but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_Voltages_GR(void);```
    */
    func CktElementGetVoltagesGR() {
        CktElement_Get_Voltages_GR()
    }
        
    /**
    Emergency Ampere Rating for PD elements.
    The C function called is: ```double CktElement_Get_EmergAmps(void);```
    */
    func CktElementGetEmergAmps() -> Double {
        return CktElement_Get_EmergAmps()
    }
        
    /**
    Boolean indicating that element is currently in the circuit..
    The C function called is: ```uint16_t CktElement_Get_Enabled(void);```
    */
    func CktElementGetEnabled() -> Int {
        return Int(CktElement_Get_Enabled())
    }
        
    /**
    Total losses in the element: two-element complex array.
    The C function called is: ```void CktElement_Get_Losses(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetLosses() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_Losses)
    }
        
    /**
    Same as CktElement_Get_Losses but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_Losses_GR(void);```
    */
    func CktElementGetLossesGR() {
        CktElement_Get_Losses_GR()
    }
        
    /**
    Normal ampere rating for PD Elements.
    The C function called is: ```double CktElement_Get_NormalAmps(void);```
    */
    func CktElementGetNormalAmps() -> Double {
        return CktElement_Get_NormalAmps()
    }
        
    /**
    Complex array of losses by phase.
    The C function called is: ```void CktElement_Get_PhaseLosses(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetPhaseLosses() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_PhaseLosses)
    }
        
    /**
    Same as CktElement_Get_PhaseLosses but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_PhaseLosses_GR(void);```
    */
    func CktElementGetPhaseLossesGR() {
        CktElement_Get_PhaseLosses_GR()
    }
        
    /**
    Complex array of powers into each conductor of each terminal.
    The C function called is: ```void CktElement_Get_Powers(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetPowers() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_Powers)
    }
        
    /**
    Same as CktElement_Get_Powers but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_Powers_GR(void);```
    */
    func CktElementGetPowersGR() {
        CktElement_Get_Powers_GR()
    }
        
    /**
    Double array of symmetrical component currents into each 3-phase terminal.
    The C function called is: ```void CktElement_Get_SeqCurrents(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetSeqCurrents() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_SeqCurrents)
    }
        
    /**
    Same as CktElement_Get_SeqCurrents but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_SeqCurrents_GR(void);```
    */
    func CktElementGetSeqCurrentsGR() {
        CktElement_Get_SeqCurrents_GR()
    }
        
    /**
    Double array of sequence powers into each 3-phase teminal.
    The C function called is: ```void CktElement_Get_SeqPowers(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetSeqPowers() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_SeqPowers)
    }
        
    /**
    Same as CktElement_Get_SeqPowers but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_SeqPowers_GR(void);```
    */
    func CktElementGetSeqPowersGR() {
        CktElement_Get_SeqPowers_GR()
    }
        
    /**
    Double array of symmetrical component voltages at each 3-phase terminal.
    The C function called is: ```void CktElement_Get_SeqVoltages(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetSeqVoltages() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_SeqVoltages)
    }
        
    /**
    Same as CktElement_Get_SeqVoltages but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_SeqVoltages_GR(void);```
    */
    func CktElementGetSeqVoltagesGR() {
        CktElement_Get_SeqVoltages_GR()
    }
        
    /**
    The C function called is: ```void CktElement_Close(int32_t Term, int32_t Phs);```
    */
        
    /**
    The C function called is: ```void CktElement_Open(int32_t Term, int32_t Phs);```
    */
        
    /**
    Emergency Ampere Rating.
    The C function called is: ```void CktElement_Set_EmergAmps(double Value);```
    */
    func CktElementSetEmergAmps(_ value: Double) {
        CktElement_Set_EmergAmps(value)
    }
        
    /**
    Boolean indicating that element is currently in the circuit..
    The C function called is: ```void CktElement_Set_Enabled(uint16_t Value);```
    */
    func CktElementSetEnabled(_ value: Int) {
        CktElement_Set_Enabled(UInt16(value))
    }
        
    /**
    Normal ampere rating.
    The C function called is: ```void CktElement_Set_NormalAmps(double Value);```
    */
    func CktElementSetNormalAmps(_ value: Double) {
        CktElement_Set_NormalAmps(value)
    }
        
    /**
    The C function called is: ```uint16_t CktElement_IsOpen(int32_t Term, int32_t Phs);```
    */
        
    /**
    Array containing all property names of the active device..
    The C function called is: ```void CktElement_Get_AllPropertyNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetAllPropertyNames() -> [String] {
        return DSS.getStringArray(CktElement_Get_AllPropertyNames)
    }
        
    /**
    Same as CktElement_Get_AllPropertyNames but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_AllPropertyNames_GR(void);```
    */
    func CktElementGetAllPropertyNamesGR() {
        CktElement_Get_AllPropertyNames_GR()
    }
        
    /**
    Number of Properties this Circuit Element..
    The C function called is: ```int32_t CktElement_Get_NumProperties(void);```
    */
    func CktElementGetNumProperties() -> Int {
        return Int(CktElement_Get_NumProperties())
    }
        
    /**
    Residual currents for each terminal: (mag, angle).
    The C function called is: ```void CktElement_Get_Residuals(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetResiduals() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_Residuals)
    }
        
    /**
    Same as CktElement_Get_Residuals but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_Residuals_GR(void);```
    */
    func CktElementGetResidualsGR() {
        CktElement_Get_Residuals_GR()
    }
        
    /**
    YPrim matrix, column order, complex numbers (paired).
    The C function called is: ```void CktElement_Get_Yprim(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetYprim() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_Yprim)
    }
        
    /**
    Same as CktElement_Get_Yprim but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_Yprim_GR(void);```
    */
    func CktElementGetYprimGR() {
        CktElement_Get_Yprim_GR()
    }
        
    /**
    Display name of the object (not necessarily unique).
    The C function called is: ```char* CktElement_Get_DisplayName(void);```
    */
    func CktElementGetDisplayName() -> String? {
        return DSS.getString(from: CktElement_Get_DisplayName)
    }
        
    /**
    globally unique identifier for this object.
    The C function called is: ```char* CktElement_Get_GUID(void);```
    */
    func CktElementGetGUID() -> String? {
        return DSS.getString(from: CktElement_Get_GUID)
    }
        
    /**
    Pointer to this object.
    The C function called is: ```int32_t CktElement_Get_Handle(void);```
    */
    func CktElementGetHandle() -> Int {
        return Int(CktElement_Get_Handle())
    }
        
    /**
    Display name of the object (not necessarily unique).
    The C function called is: ```void CktElement_Set_DisplayName(char* Value);```
    */
    func CktElementSetDisplayName(_ value: String) {
        CktElement_Set_DisplayName(DSS.getPointer(to: value))
    }
        
    /**
    Full name of the i-th controller attached to this element. Ex: str = Controller(2).  See NumControls to determine valid index range.
    The C function called is: ```char* CktElement_Get_Controller(int32_t idx);```
    */
    func CktElementGetController(_ value: Int) -> String? {
        return DSS.getString(from: CktElement_Get_Controller, for: value)
    }
        
    /**
    Name of the Energy Meter this element is assigned to..
    The C function called is: ```char* CktElement_Get_EnergyMeter(void);```
    */
    func CktElementGetEnergyMeter() -> String? {
        return DSS.getString(from: CktElement_Get_EnergyMeter)
    }
        
    /**
    This element has a CapControl or RegControl attached..
    The C function called is: ```uint16_t CktElement_Get_HasVoltControl(void);```
    */
    func CktElementGetHasVoltControl() -> Int {
        return Int(CktElement_Get_HasVoltControl())
    }
        
    /**
    This element has a SwtControl attached..
    The C function called is: ```uint16_t CktElement_Get_HasSwitchControl(void);```
    */
    func CktElementGetHasSwitchControl() -> Int {
        return Int(CktElement_Get_HasSwitchControl())
    }
        
    /**
    Complex double array of Sequence Voltage for all terminals of active circuit element..
    The C function called is: ```void CktElement_Get_CplxSeqVoltages(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetCplxSeqVoltages() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_CplxSeqVoltages)
    }
        
    /**
    Same as CktElement_Get_CplxSeqVoltages but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_CplxSeqVoltages_GR(void);```
    */
    func CktElementGetCplxSeqVoltagesGR() {
        CktElement_Get_CplxSeqVoltages_GR()
    }
        
    /**
    Complex double array of Sequence Currents for all conductors of all terminals of active circuit element..
    The C function called is: ```void CktElement_Get_CplxSeqCurrents(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetCplxSeqCurrents() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_CplxSeqCurrents)
    }
        
    /**
    Same as CktElement_Get_CplxSeqCurrents but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_CplxSeqCurrents_GR(void);```
    */
    func CktElementGetCplxSeqCurrentsGR() {
        CktElement_Get_CplxSeqCurrents_GR()
    }
        
    /**
    Array of strings listing all the published variable names, if a PCElement. Otherwise, null string..
    The C function called is: ```void CktElement_Get_AllVariableNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetAllVariableNames() -> [String] {
        return DSS.getStringArray(CktElement_Get_AllVariableNames)
    }
        
    /**
    Same as CktElement_Get_AllVariableNames but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_AllVariableNames_GR(void);```
    */
    func CktElementGetAllVariableNamesGR() {
        CktElement_Get_AllVariableNames_GR()
    }
        
    /**
    Array of doubles. Values of state variables of active element if PC element..
    The C function called is: ```void CktElement_Get_AllVariableValues(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetAllVariableValues() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_AllVariableValues)
    }
        
    /**
    Same as CktElement_Get_AllVariableValues but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_AllVariableValues_GR(void);```
    */
    func CktElementGetAllVariableValuesGR() {
        CktElement_Get_AllVariableValues_GR()
    }
        
    /**
    For PCElement, get the value of a variable by name. If Code>0 Then no variable by this name or not a PCelement..
    The C function called is: ```double CktElement_Get_Variable(char* MyVarName, int32_t Code);```
    */
        
    /**
    For PCElement, get the value of a variable by integer index..
    The C function called is: ```double CktElement_Get_Variablei(int32_t Idx, int32_t Code);```
    */
        
    /**
    Array of integer containing the node numbers (representing phases, for example) for each conductor of each terminal..
    The C function called is: ```void CktElement_Get_NodeOrder(int32_t** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetNodeOrder() -> [Int] {
        return DSS.getIntArray(CktElement_Get_NodeOrder)
    }
        
    /**
    Same as CktElement_Get_NodeOrder but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_NodeOrder_GR(void);```
    */
    func CktElementGetNodeOrderGR() {
        CktElement_Get_NodeOrder_GR()
    }
        
    /**
    True if a recloser, relay, or fuse controlling this ckt element. OCP = Overcurrent Protection.
    The C function called is: ```uint16_t CktElement_Get_HasOCPDevice(void);```
    */
    func CktElementGetHasOCPDevice() -> Int {
        return Int(CktElement_Get_HasOCPDevice())
    }
        
    /**
    Number of controls connected to this device. Use to determine valid range for index into Controller array..
    The C function called is: ```int32_t CktElement_Get_NumControls(void);```
    */
    func CktElementGetNumControls() -> Int {
        return Int(CktElement_Get_NumControls())
    }
        
    /**
    Index into Controller list of OCP Device controlling this CktElement.
    The C function called is: ```int32_t CktElement_Get_OCPDevIndex(void);```
    */
    func CktElementGetOCPDevIndex() -> Int {
        return Int(CktElement_Get_OCPDevIndex())
    }
        
    /**
    0=None; 1=Fuse; 2=Recloser; 3=Relay;  Type of OCP controller device.
    The C function called is: ```int32_t CktElement_Get_OCPDevType(void);```
    */
    func CktElementGetOCPDevType() -> Int {
        return Int(CktElement_Get_OCPDevType())
    }
        
    /**
    Currents in magnitude, angle format as a array of doubles..
    The C function called is: ```void CktElement_Get_CurrentsMagAng(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetCurrentsMagAng() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_CurrentsMagAng)
    }
        
    /**
    Same as CktElement_Get_CurrentsMagAng but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_CurrentsMagAng_GR(void);```
    */
    func CktElementGetCurrentsMagAngGR() {
        CktElement_Get_CurrentsMagAng_GR()
    }
        
    /**
    Voltages at each conductor in magnitude, angle form as array of doubles..
    The C function called is: ```void CktElement_Get_VoltagesMagAng(double** ResultPtr, int32_t* ResultCount);```
    */
    func CktElementGetVoltagesMagAng() -> [Double] {
        return DSS.getDoubleArray(CktElement_Get_VoltagesMagAng)
    }
        
    /**
    Same as CktElement_Get_VoltagesMagAng but using the global buffer interface for results.
    The C function called is: ```void CktElement_Get_VoltagesMagAng_GR(void);```
    */
    func CktElementGetVoltagesMagAngGR() {
        CktElement_Get_VoltagesMagAng_GR()
    }
        
    /**
    Convert real and imaginary doubles to Array of doubles.
    The C function called is: ```void CmathLib_Get_cmplx(double** ResultPtr, int32_t* ResultCount, double RealPart, double ImagPart);```
    */
        
    /**
    Same as CmathLib_Get_cmplx but using the global buffer interface for results.
    The C function called is: ```void CmathLib_Get_cmplx_GR(double RealPart, double ImagPart);```
    */
        
    /**
    Return abs value of complex number given in real and imag doubles.
    The C function called is: ```double CmathLib_Get_cabs(double realpart, double imagpart);```
    */
        
    /**
    Returns the angle, in degrees, of a complex number specified as two doubles: Realpart and imagpart..
    The C function called is: ```double CmathLib_Get_cdang(double RealPart, double ImagPart);```
    */
        
    /**
    Convert complex number to magnitude and angle, degrees. Returns array of two doubles..
    The C function called is: ```void CmathLib_Get_ctopolardeg(double** ResultPtr, int32_t* ResultCount, double RealPart, double ImagPart);```
    */
        
    /**
    Same as CmathLib_Get_ctopolardeg but using the global buffer interface for results.
    The C function called is: ```void CmathLib_Get_ctopolardeg_GR(double RealPart, double ImagPart);```
    */
        
    /**
    Convert magnitude, angle in degrees to a complex number. Returns Array of two doubles..
    The C function called is: ```void CmathLib_Get_pdegtocomplex(double** ResultPtr, int32_t* ResultCount, double magnitude, double angle);```
    */
        
    /**
    Same as CmathLib_Get_pdegtocomplex but using the global buffer interface for results.
    The C function called is: ```void CmathLib_Get_pdegtocomplex_GR(double magnitude, double angle);```
    */
        
    /**
    Multiply two complex numbers: (a1, b1) * (a2, b2). Returns result as a array of two doubles..
    The C function called is: ```void CmathLib_Get_cmul(double** ResultPtr, int32_t* ResultCount, double a1, double b1, double a2, double b2);```
    */
        
    /**
    Same as CmathLib_Get_cmul but using the global buffer interface for results.
    The C function called is: ```void CmathLib_Get_cmul_GR(double a1, double b1, double a2, double b2);```
    */
        
    /**
    Divide two complex number: (a1, b1)/(a2, b2). Returns array of two doubles representing complex result..
    The C function called is: ```void CmathLib_Get_cdiv(double** ResultPtr, int32_t* ResultCount, double a1, double b1, double a2, double b2);```
    */
        
    /**
    Same as CmathLib_Get_cdiv but using the global buffer interface for results.
    The C function called is: ```void CmathLib_Get_cdiv_GR(double a1, double b1, double a2, double b2);```
    */
        
    /**
    The C function called is: ```void CtrlQueue_ClearQueue(void);```
    */
    func CtrlQueueClearQueue() {
        CtrlQueue_ClearQueue()
    }
        
    /**
    The C function called is: ```void CtrlQueue_Delete(int32_t ActionHandle);```
    */
    func CtrlQueueDelete(_ value: Int) {
        CtrlQueue_Delete(Int32(value))
    }
        
    /**
    Code for the active action. Long integer code to tell the control device what to do.
    The C function called is: ```int32_t CtrlQueue_Get_ActionCode(void);```
    */
    func CtrlQueueGetActionCode() -> Int {
        return Int(CtrlQueue_Get_ActionCode())
    }
        
    /**
    Handle (User defined) to device that must act on the pending action..
    The C function called is: ```int32_t CtrlQueue_Get_DeviceHandle(void);```
    */
    func CtrlQueueGetDeviceHandle() -> Int {
        return Int(CtrlQueue_Get_DeviceHandle())
    }
        
    /**
    Number of Actions on the current actionlist (that have been popped off the control queue by CheckControlActions).
    The C function called is: ```int32_t CtrlQueue_Get_NumActions(void);```
    */
    func CtrlQueueGetNumActions() -> Int {
        return Int(CtrlQueue_Get_NumActions())
    }
        
    /**
    The C function called is: ```void CtrlQueue_Show(void);```
    */
    func CtrlQueueShow() {
        CtrlQueue_Show()
    }
        
    /**
    The C function called is: ```void CtrlQueue_ClearActions(void);```
    */
    func CtrlQueueClearActions() {
        CtrlQueue_ClearActions()
    }
        
    /**
    Pops next action off the action list and makes it the active action. Returns zero if none..
    The C function called is: ```int32_t CtrlQueue_Get_PopAction(void);```
    */
    func CtrlQueueGetPopAction() -> Int {
        return Int(CtrlQueue_Get_PopAction())
    }
        
    /**
    Set the active action by index.
    The C function called is: ```void CtrlQueue_Set_Action(int32_t Param1);```
    */
    func CtrlQueueSetAction(_ value: Int) {
        CtrlQueue_Set_Action(Int32(value))
    }
        
    /**
    Number of items on the OpenDSS control Queue.
    The C function called is: ```int32_t CtrlQueue_Get_QueueSize(void);```
    */
    func CtrlQueueGetQueueSize() -> Int {
        return Int(CtrlQueue_Get_QueueSize())
    }
        
    /**
    The C function called is: ```void CtrlQueue_DoAllQueue(void);```
    */
    func CtrlQueueDoAllQueue() {
        CtrlQueue_DoAllQueue()
    }
        
    /**
    Array of strings containing the entire queue in CSV format.
    The C function called is: ```void CtrlQueue_Get_Queue(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CtrlQueueGetQueue() -> [String] {
        return DSS.getStringArray(CtrlQueue_Get_Queue)
    }
        
    /**
    Same as CtrlQueue_Get_Queue but using the global buffer interface for results.
    The C function called is: ```void CtrlQueue_Get_Queue_GR(void);```
    */
    func CtrlQueueGetQueueGR() {
        CtrlQueue_Get_Queue_GR()
    }
        
    /**
    Number of Circuits currently defined.
    The C function called is: ```int32_t DSS_Get_NumCircuits(void);```
    */
    func DSSGetNumCircuits() -> Int {
        return Int(DSS_Get_NumCircuits())
    }
        
    /**
    The C function called is: ```void DSS_ClearAll(void);```
    */
    func DSSClearAll() {
        DSS_ClearAll()
    }
        
    /**
    Get version string for the DSS..
    The C function called is: ```char* DSS_Get_Version(void);```
    */
    func DSSGetVersion() -> String? {
        return DSS.getString(from: DSS_Get_Version)
    }
        
    /**
    The C function called is: ```uint16_t DSS_Start(int32_t code);```
    */
    func DSSStart(_ value: Int) -> Int {
        return Int(DSS_Start(Int32(value)))
    }
        
    /**
    List of DSS intrinsic classes (names of the classes).
    The C function called is: ```void DSS_Get_Classes(char*** ResultPtr, int32_t* ResultCount);```
    */
    func DSSGetClasses() -> [String] {
        return DSS.getStringArray(DSS_Get_Classes)
    }
        
    /**
    Same as DSS_Get_Classes but using the global buffer interface for results.
    The C function called is: ```void DSS_Get_Classes_GR(void);```
    */
    func DSSGetClassesGR() {
        DSS_Get_Classes_GR()
    }
        
    /**
    List of user-defined classes.
    The C function called is: ```void DSS_Get_UserClasses(char*** ResultPtr, int32_t* ResultCount);```
    */
    func DSSGetUserClasses() -> [String] {
        return DSS.getStringArray(DSS_Get_UserClasses)
    }
        
    /**
    Same as DSS_Get_UserClasses but using the global buffer interface for results.
    The C function called is: ```void DSS_Get_UserClasses_GR(void);```
    */
    func DSSGetUserClassesGR() {
        DSS_Get_UserClasses_GR()
    }
        
    /**
    Number of DSS intrinsic classes.
    The C function called is: ```int32_t DSS_Get_NumClasses(void);```
    */
    func DSSGetNumClasses() -> Int {
        return Int(DSS_Get_NumClasses())
    }
        
    /**
    Number of user-defined classes.
    The C function called is: ```int32_t DSS_Get_NumUserClasses(void);```
    */
    func DSSGetNumUserClasses() -> Int {
        return Int(DSS_Get_NumUserClasses())
    }
        
    /**
    DSS Data File Path.  Default path for reports, etc. from DSS.
    The C function called is: ```char* DSS_Get_DataPath(void);```
    */
    func DSSGetDataPath() -> String? {
        return DSS.getString(from: DSS_Get_DataPath)
    }
        
    /**
    DSS Data File Path.  Default path for reports, etc. from DSS.
    The C function called is: ```void DSS_Set_DataPath(char* Value);```
    */
    func DSSSetDataPath(_ value: String) {
        DSS_Set_DataPath(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void DSS_Reset(void);```
    */
    func DSSReset() {
        DSS_Reset()
    }
        
    /**
    Returns the path name for the default text editor..
    The C function called is: ```char* DSS_Get_DefaultEditor(void);```
    */
    func DSSGetDefaultEditor() -> String? {
        return DSS.getString(from: DSS_Get_DefaultEditor)
    }
        
    /**
    The C function called is: ```int32_t DSS_SetActiveClass(char* ClassName);```
    */
        
    /**
    The C function called is: ```uint16_t DSS_Get_AllowForms(void);```
    */
    func DSSGetAllowForms() -> Int {
        return Int(DSS_Get_AllowForms())
    }
        
    /**
    The C function called is: ```void DSS_Set_AllowForms(uint16_t Value);```
    */
    func DSSSetAllowForms(_ value: Int) {
        DSS_Set_AllowForms(UInt16(value))
    }
        
    /**
    Array of strings containing the names of all properties for the active DSS object..
    The C function called is: ```void DSSElement_Get_AllPropertyNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func DSSElementGetAllPropertyNames() -> [String] {
        return DSS.getStringArray(DSSElement_Get_AllPropertyNames)
    }
        
    /**
    Same as DSSElement_Get_AllPropertyNames but using the global buffer interface for results.
    The C function called is: ```void DSSElement_Get_AllPropertyNames_GR(void);```
    */
    func DSSElementGetAllPropertyNamesGR() {
        DSSElement_Get_AllPropertyNames_GR()
    }
        
    /**
    Full Name of Active DSS Object (general element or circuit element)..
    The C function called is: ```char* DSSElement_Get_Name(void);```
    */
    func DSSElementGetName() -> String? {
        return DSS.getString(from: DSSElement_Get_Name)
    }
        
    /**
    Number of Properties for the active DSS object..
    The C function called is: ```int32_t DSSElement_Get_NumProperties(void);```
    */
    func DSSElementGetNumProperties() -> Int {
        return Int(DSSElement_Get_NumProperties())
    }
        
    /**
    The C function called is: ```void DSSimComs_BusVoltagepu(double** ResultPtr, int32_t* ResultCount, size_t Index);```
    */
        
    /**
    Same as DSSimComs_BusVoltagepu but using the global buffer interface for results.
    The C function called is: ```void DSSimComs_BusVoltagepu_GR(size_t Index);```
    */
        
    /**
    The C function called is: ```void DSSimComs_BusVoltage(double** ResultPtr, int32_t* ResultCount, size_t Index);```
    */
        
    /**
    Same as DSSimComs_BusVoltage but using the global buffer interface for results.
    The C function called is: ```void DSSimComs_BusVoltage_GR(size_t Index);```
    */
        
    /**
    The C function called is: ```void DSSProgress_Close(void);```
    */
    func DSSProgressClose() {
        DSSProgress_Close()
    }
        
    /**
    Caption to appear on the bottom of the DSS Progress form..
    The C function called is: ```void DSSProgress_Set_Caption(char* Value);```
    */
    func DSSProgressSetCaption(_ value: String) {
        DSSProgress_Set_Caption(DSS.getPointer(to: value))
    }
        
    /**
    Percent progress to indicate [0..100].
    The C function called is: ```void DSSProgress_Set_PctProgress(int32_t Value);```
    */
    func DSSProgressSetPctProgress(_ value: Int) {
        DSSProgress_Set_PctProgress(Int32(value))
    }
        
    /**
    The C function called is: ```void DSSProgress_Show(void);```
    */
    func DSSProgressShow() {
        DSSProgress_Show()
    }
        
    /**
    Description of the property..
    The C function called is: ```char* DSSProperty_Get_Description(void);```
    */
    func DSSPropertyGetDescription() -> String? {
        return DSS.getString(from: DSSProperty_Get_Description)
    }
        
    /**
    Name of Property.
    The C function called is: ```char* DSSProperty_Get_Name(void);```
    */
    func DSSPropertyGetName() -> String? {
        return DSS.getString(from: DSSProperty_Get_Name)
    }
        
    /**
    The C function called is: ```char* DSSProperty_Get_Val(void);```
    */
    func DSSPropertyGetVal() -> String? {
        return DSS.getString(from: DSSProperty_Get_Val)
    }
        
    /**
    The C function called is: ```void DSSProperty_Set_Val(char* Value);```
    */
    func DSSPropertySetVal(_ value: String) {
        DSSProperty_Set_Val(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void DSSProperty_Set_Name(char* Value);```
    */
    func DSSPropertySetName(_ value: String) {
        DSSProperty_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void DSSProperty_Set_Index(int32_t Value);```
    */
    func DSSPropertySetIndex(_ value: Int) {
        DSSProperty_Set_Index(Int32(value))
    }
        
    /**
    Get i-th command.
    The C function called is: ```char* DSS_Executive_Get_Command(int32_t i);```
    */
    func DSSExecutiveGetCommand(_ value: Int) -> String? {
        return DSS.getString(from: DSS_Executive_Get_Command, for: value)
    }
        
    /**
    Number of DSS Executive Commands.
    The C function called is: ```int32_t DSS_Executive_Get_NumCommands(void);```
    */
    func DSSExecutiveGetNumCommands() -> Int {
        return Int(DSS_Executive_Get_NumCommands())
    }
        
    /**
    Number of DSS Executive Options.
    The C function called is: ```int32_t DSS_Executive_Get_NumOptions(void);```
    */
    func DSSExecutiveGetNumOptions() -> Int {
        return Int(DSS_Executive_Get_NumOptions())
    }
        
    /**
    Get i-th option.
    The C function called is: ```char* DSS_Executive_Get_Option(int32_t i);```
    */
    func DSSExecutiveGetOption(_ value: Int) -> String? {
        return DSS.getString(from: DSS_Executive_Get_Option, for: value)
    }
        
    /**
    Get help string for i-th command.
    The C function called is: ```char* DSS_Executive_Get_CommandHelp(int32_t i);```
    */
    func DSSExecutiveGetCommandHelp(_ value: Int) -> String? {
        return DSS.getString(from: DSS_Executive_Get_CommandHelp, for: value)
    }
        
    /**
    Get help string for i-th option.
    The C function called is: ```char* DSS_Executive_Get_OptionHelp(int32_t i);```
    */
    func DSSExecutiveGetOptionHelp(_ value: Int) -> String? {
        return DSS.getString(from: DSS_Executive_Get_OptionHelp, for: value)
    }
        
    /**
    Get present value of i-th option.
    The C function called is: ```char* DSS_Executive_Get_OptionValue(int32_t i);```
    */
    func DSSExecutiveGetOptionValue(_ value: Int) -> String? {
        return DSS.getString(from: DSS_Executive_Get_OptionValue, for: value)
    }
        
    /**
    Description of error for last operation.
    The C function called is: ```char* Error_Get_Description(void);```
    */
    func ErrorGetDescription() -> String? {
        return DSS.getString(from: Error_Get_Description)
    }
        
    /**
    Error Number.
    The C function called is: ```int32_t Error_Get_Number(void);```
    */
    func ErrorGetNumber() -> Int {
        return Int(Error_Get_Number())
    }
        
    /**
    Array of strings containing names of all Fuses in the circuit.
    The C function called is: ```void Fuses_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func FusesGetAllNames() -> [String] {
        return DSS.getStringArray(Fuses_Get_AllNames)
    }
        
    /**
    Same as Fuses_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Fuses_Get_AllNames_GR(void);```
    */
    func FusesGetAllNamesGR() {
        Fuses_Get_AllNames_GR()
    }
        
    /**
    Number of Fuse elements in the circuit.
    The C function called is: ```int32_t Fuses_Get_Count(void);```
    */
    func FusesGetCount() -> Int {
        return Int(Fuses_Get_Count())
    }
        
    /**
    Set the first Fuse to be the active fuse. Returns 0 if none..
    The C function called is: ```int32_t Fuses_Get_First(void);```
    */
    func FusesGetFirst() -> Int {
        return Int(Fuses_Get_First())
    }
        
    /**
    Get the name of the active Fuse element.
    The C function called is: ```char* Fuses_Get_Name(void);```
    */
    func FusesGetName() -> String? {
        return DSS.getString(from: Fuses_Get_Name)
    }
        
    /**
    Advance the active Fuse element pointer to the next fuse. Returns 0 if no more fuses..
    The C function called is: ```int32_t Fuses_Get_Next(void);```
    */
    func FusesGetNext() -> Int {
        return Int(Fuses_Get_Next())
    }
        
    /**
    Set the active Fuse element by name..
    The C function called is: ```void Fuses_Set_Name(char* Value);```
    */
    func FusesSetName(_ value: String) {
        Fuses_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Full name of the circuit element to which the fuse is connected..
    The C function called is: ```char* Fuses_Get_MonitoredObj(void);```
    */
    func FusesGetMonitoredObj() -> String? {
        return DSS.getString(from: Fuses_Get_MonitoredObj)
    }
        
    /**
    Terminal number to which the fuse is connected..
    The C function called is: ```int32_t Fuses_Get_MonitoredTerm(void);```
    */
    func FusesGetMonitoredTerm() -> Int {
        return Int(Fuses_Get_MonitoredTerm())
    }
        
    /**
    Full name of the circuit element switch that the fuse controls. Defaults to the MonitoredObj..
    The C function called is: ```char* Fuses_Get_SwitchedObj(void);```
    */
    func FusesGetSwitchedObj() -> String? {
        return DSS.getString(from: Fuses_Get_SwitchedObj)
    }
        
    /**
    Full name of the circuit element to which the fuse is connected..
    The C function called is: ```void Fuses_Set_MonitoredObj(char* Value);```
    */
    func FusesSetMonitoredObj(_ value: String) {
        Fuses_Set_MonitoredObj(DSS.getPointer(to: value))
    }
        
    /**
    Number of the terminal to which the fuse is connected.
    The C function called is: ```void Fuses_Set_MonitoredTerm(int32_t Value);```
    */
    func FusesSetMonitoredTerm(_ value: Int) {
        Fuses_Set_MonitoredTerm(Int32(value))
    }
        
    /**
    Full name of the circuit element switch that the fuse controls. Defaults to MonitoredObj..
    The C function called is: ```void Fuses_Set_SwitchedObj(char* Value);```
    */
    func FusesSetSwitchedObj(_ value: String) {
        Fuses_Set_SwitchedObj(DSS.getPointer(to: value))
    }
        
    /**
    Number of the terminal containing the switch controlled by the fuse..
    The C function called is: ```int32_t Fuses_Get_SwitchedTerm(void);```
    */
    func FusesGetSwitchedTerm() -> Int {
        return Int(Fuses_Get_SwitchedTerm())
    }
        
    /**
    Number of the terminal of the controlled element containing the switch controlled by the fuse..
    The C function called is: ```void Fuses_Set_SwitchedTerm(int32_t Value);```
    */
    func FusesSetSwitchedTerm(_ value: Int) {
        Fuses_Set_SwitchedTerm(Int32(value))
    }
        
    /**
    Name of the TCCcurve object that determines fuse blowing..
    The C function called is: ```char* Fuses_Get_TCCcurve(void);```
    */
    func FusesGetTCCcurve() -> String? {
        return DSS.getString(from: Fuses_Get_TCCcurve)
    }
        
    /**
    Name of the TCCcurve object that determines fuse blowing..
    The C function called is: ```void Fuses_Set_TCCcurve(char* Value);```
    */
    func FusesSetTCCcurve(_ value: String) {
        Fuses_Set_TCCcurve(DSS.getPointer(to: value))
    }
        
    /**
    Multiplier or actual amps for the TCCcurve object. Defaults to 1.0.  Multipliy current values of TCC curve by this to get actual amps..
    The C function called is: ```double Fuses_Get_RatedCurrent(void);```
    */
    func FusesGetRatedCurrent() -> Double {
        return Fuses_Get_RatedCurrent()
    }
        
    /**
    Multiplier or actual fuse amps for the TCC curve. Defaults to 1.0. Has to correspond to the Current axis of TCCcurve object..
    The C function called is: ```void Fuses_Set_RatedCurrent(double Value);```
    */
    func FusesSetRatedCurrent(_ value: Double) {
        Fuses_Set_RatedCurrent(value)
    }
        
    /**
    A fixed delay time in seconds added to the fuse blowing time determined by the TCC curve. Default is 0..
    The C function called is: ```double Fuses_Get_Delay(void);```
    */
    func FusesGetDelay() -> Double {
        return Fuses_Get_Delay()
    }
        
    /**
    The C function called is: ```void Fuses_Open(void);```
    */
    func FusesOpen() {
        Fuses_Open()
    }
        
    /**
    The C function called is: ```void Fuses_Close(void);```
    */
    func FusesClose() {
        Fuses_Close()
    }
        
    /**
    Fixed delay time in seconds added to the fuse blowing time to represent fuse clear or other delay..
    The C function called is: ```void Fuses_Set_Delay(double Value);```
    */
    func FusesSetDelay(_ value: Double) {
        Fuses_Set_Delay(value)
    }
        
    /**
    The C function called is: ```uint16_t Fuses_IsBlown(void);```
    */
    func FusesIsBlown() -> Int {
        return Int(Fuses_IsBlown())
    }
        
    /**
    Get/set active fuse by index into the list of fuses. 1 based: 1..count.
    The C function called is: ```int32_t Fuses_Get_idx(void);```
    */
    func FusesGetIdx() -> Int {
        return Int(Fuses_Get_idx())
    }
        
    /**
    Set Fuse active by index into the list of fuses. 1..count.
    The C function called is: ```void Fuses_Set_idx(int32_t Value);```
    */
    func FusesSetIdx(_ value: Int) {
        Fuses_Set_idx(Int32(value))
    }
        
    /**
    Number of phases, this fuse..
    The C function called is: ```int32_t Fuses_Get_NumPhases(void);```
    */
    func FusesGetNumPhases() -> Int {
        return Int(Fuses_Get_NumPhases())
    }
        
    /**
    Array of names of all Generator objects..
    The C function called is: ```void Generators_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func GeneratorsGetAllNames() -> [String] {
        return DSS.getStringArray(Generators_Get_AllNames)
    }
        
    /**
    Same as Generators_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Generators_Get_AllNames_GR(void);```
    */
    func GeneratorsGetAllNamesGR() {
        Generators_Get_AllNames_GR()
    }
        
    /**
    Sets first Generator to be active.  Returns 0 if none..
    The C function called is: ```int32_t Generators_Get_First(void);```
    */
    func GeneratorsGetFirst() -> Int {
        return Int(Generators_Get_First())
    }
        
    /**
    Sets a generator active by name..
    The C function called is: ```char* Generators_Get_Name(void);```
    */
    func GeneratorsGetName() -> String? {
        return DSS.getString(from: Generators_Get_Name)
    }
        
    /**
    Sets next Generator to be active.  Returns 0 if no more..
    The C function called is: ```int32_t Generators_Get_Next(void);```
    */
    func GeneratorsGetNext() -> Int {
        return Int(Generators_Get_Next())
    }
        
    /**
    Array of Names of all generator energy meter registers.
    The C function called is: ```void Generators_Get_RegisterNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func GeneratorsGetRegisterNames() -> [String] {
        return DSS.getStringArray(Generators_Get_RegisterNames)
    }
        
    /**
    Same as Generators_Get_RegisterNames but using the global buffer interface for results.
    The C function called is: ```void Generators_Get_RegisterNames_GR(void);```
    */
    func GeneratorsGetRegisterNamesGR() {
        Generators_Get_RegisterNames_GR()
    }
        
    /**
    Array of valus in generator energy meter registers..
    The C function called is: ```void Generators_Get_RegisterValues(double** ResultPtr, int32_t* ResultCount);```
    */
    func GeneratorsGetRegisterValues() -> [Double] {
        return DSS.getDoubleArray(Generators_Get_RegisterValues)
    }
        
    /**
    Same as Generators_Get_RegisterValues but using the global buffer interface for results.
    The C function called is: ```void Generators_Get_RegisterValues_GR(void);```
    */
    func GeneratorsGetRegisterValuesGR() {
        Generators_Get_RegisterValues_GR()
    }
        
    /**
    Indicates whether the generator is forced ON regardles of other dispatch criteria..
    The C function called is: ```uint16_t Generators_Get_ForcedON(void);```
    */
    func GeneratorsGetForcedON() -> Int {
        return Int(Generators_Get_ForcedON())
    }
        
    /**
    Indicates whether the generator is forced ON regardles of other dispatch criteria..
    The C function called is: ```void Generators_Set_ForcedON(uint16_t Value);```
    */
    func GeneratorsSetForcedON(_ value: Int) {
        Generators_Set_ForcedON(UInt16(value))
    }
        
    /**
    Sets a generator active by name..
    The C function called is: ```void Generators_Set_Name(char* Value);```
    */
    func GeneratorsSetName(_ value: String) {
        Generators_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Voltage base for the active generator, kV.
    The C function called is: ```double Generators_Get_kV(void);```
    */
    func GeneratorsGetKV() -> Double {
        return Generators_Get_kV()
    }
        
    /**
    kvar output for the active generator. Updates power factor based on present kW value..
    The C function called is: ```double Generators_Get_kvar(void);```
    */
    func GeneratorsGetKvar() -> Double {
        return Generators_Get_kvar()
    }
        
    /**
    kW output for the active generator. kvar is updated for current power factor..
    The C function called is: ```double Generators_Get_kW(void);```
    */
    func GeneratorsGetKW() -> Double {
        return Generators_Get_kW()
    }
        
    /**
    Power factor (pos. = producing vars). Updates kvar based on present kW value..
    The C function called is: ```double Generators_Get_PF(void);```
    */
    func GeneratorsGetPF() -> Double {
        return Generators_Get_PF()
    }
        
    /**
    Number of phases.
    The C function called is: ```int32_t Generators_Get_Phases(void);```
    */
    func GeneratorsGetPhases() -> Int {
        return Int(Generators_Get_Phases())
    }
        
    /**
    Voltage base for the active generator, kV.
    The C function called is: ```void Generators_Set_kV(double Value);```
    */
    func GeneratorsSetKV(_ value: Double) {
        Generators_Set_kV(value)
    }
        
    /**
    kvar output for the active generator. Updates power factor based on present kW..
    The C function called is: ```void Generators_Set_kvar(double Value);```
    */
    func GeneratorsSetKvar(_ value: Double) {
        Generators_Set_kvar(value)
    }
        
    /**
    kW output for the active generator. kvar is updated for current power factor.
    The C function called is: ```void Generators_Set_kW(double Value);```
    */
    func GeneratorsSetKW(_ value: Double) {
        Generators_Set_kW(value)
    }
        
    /**
    Power factor (pos. = producing vars). Updates kvar based on present kW value..
    The C function called is: ```void Generators_Set_PF(double Value);```
    */
    func GeneratorsSetPF(_ value: Double) {
        Generators_Set_PF(value)
    }
        
    /**
    Number of phases.
    The C function called is: ```void Generators_Set_Phases(int32_t Value);```
    */
    func GeneratorsSetPhases(_ value: Int) {
        Generators_Set_Phases(Int32(value))
    }
        
    /**
    Number of Generator Objects in Active Circuit.
    The C function called is: ```int32_t Generators_Get_Count(void);```
    */
    func GeneratorsGetCount() -> Int {
        return Int(Generators_Get_Count())
    }
        
    /**
    Get/Set active Generator by index into generators list.  1..Count.
    The C function called is: ```int32_t Generators_Get_idx(void);```
    */
    func GeneratorsGetIdx() -> Int {
        return Int(Generators_Get_idx())
    }
        
    /**
    Get/Set active Generator by index into generators list. 1..Count.
    The C function called is: ```void Generators_Set_idx(int32_t Value);```
    */
    func GeneratorsSetIdx(_ value: Int) {
        Generators_Set_idx(Int32(value))
    }
        
    /**
    Generator Model.
    The C function called is: ```int32_t Generators_Get_Model(void);```
    */
    func GeneratorsGetModel() -> Int {
        return Int(Generators_Get_Model())
    }
        
    /**
    Generator Model.
    The C function called is: ```void Generators_Set_Model(int32_t Value);```
    */
    func GeneratorsSetModel(_ value: Int) {
        Generators_Set_Model(Int32(value))
    }
        
    /**
    kVA rating of the generator.
    The C function called is: ```double Generators_Get_kVArated(void);```
    */
    func GeneratorsGetKVArated() -> Double {
        return Generators_Get_kVArated()
    }
        
    /**
    KVA Rating of the generator.
    The C function called is: ```void Generators_Set_kVArated(double Value);```
    */
    func GeneratorsSetKVArated(_ value: Double) {
        Generators_Set_kVArated(value)
    }
        
    /**
    vmaxpu for Generator model.
    The C function called is: ```double Generators_Get_Vmaxpu(void);```
    */
    func GeneratorsGetVmaxpu() -> Double {
        return Generators_Get_Vmaxpu()
    }
        
    /**
    Vminpu for Generator model.
    The C function called is: ```double Generators_Get_Vminpu(void);```
    */
    func GeneratorsGetVminpu() -> Double {
        return Generators_Get_Vminpu()
    }
        
    /**
    Vmaxpu for generator model.
    The C function called is: ```void Generators_Set_Vmaxpu(double Value);```
    */
    func GeneratorsSetVmaxpu(_ value: Double) {
        Generators_Set_Vmaxpu(value)
    }
        
    /**
    Vminpu for Generator model.
    The C function called is: ```void Generators_Set_Vminpu(double Value);```
    */
    func GeneratorsSetVminpu(_ value: Double) {
        Generators_Set_Vminpu(value)
    }
        
    /**
    Array of strings containing names of all ISOURCE elements..
    The C function called is: ```void ISources_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func ISourcesGetAllNames() -> [String] {
        return DSS.getStringArray(ISources_Get_AllNames)
    }
        
    /**
    Same as ISources_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void ISources_Get_AllNames_GR(void);```
    */
    func ISourcesGetAllNamesGR() {
        ISources_Get_AllNames_GR()
    }
        
    /**
    Count: Number of ISOURCE elements..
    The C function called is: ```int32_t ISources_Get_Count(void);```
    */
    func ISourcesGetCount() -> Int {
        return Int(ISources_Get_Count())
    }
        
    /**
    Set the First ISOURCE to be active; returns Zero if none..
    The C function called is: ```int32_t ISources_Get_First(void);```
    */
    func ISourcesGetFirst() -> Int {
        return Int(ISources_Get_First())
    }
        
    /**
    Sets the next ISOURCE element to be the active one. Returns Zero if no more..
    The C function called is: ```int32_t ISources_Get_Next(void);```
    */
    func ISourcesGetNext() -> Int {
        return Int(ISources_Get_Next())
    }
        
    /**
    Get name of active ISOURCE.
    The C function called is: ```char* ISources_Get_Name(void);```
    */
    func ISourcesGetName() -> String? {
        return DSS.getString(from: ISources_Get_Name)
    }
        
    /**
    Set Active ISOURCE by name.
    The C function called is: ```void ISources_Set_Name(char* Value);```
    */
    func ISourcesSetName(_ value: String) {
        ISources_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Get the magnitude of the ISOURCE in amps.
    The C function called is: ```double ISources_Get_Amps(void);```
    */
    func ISourcesGetAmps() -> Double {
        return ISources_Get_Amps()
    }
        
    /**
    Set the magnitude of the ISOURCE, amps.
    The C function called is: ```void ISources_Set_Amps(double Value);```
    */
    func ISourcesSetAmps(_ value: Double) {
        ISources_Set_Amps(value)
    }
        
    /**
    Phase angle for ISOURCE, degrees.
    The C function called is: ```double ISources_Get_AngleDeg(void);```
    */
    func ISourcesGetAngleDeg() -> Double {
        return ISources_Get_AngleDeg()
    }
        
    /**
    The present frequency of the ISOURCE, Hz.
    The C function called is: ```double ISources_Get_Frequency(void);```
    */
    func ISourcesGetFrequency() -> Double {
        return ISources_Get_Frequency()
    }
        
    /**
    Phase angle for ISOURCE, degrees.
    The C function called is: ```void ISources_Set_AngleDeg(double Value);```
    */
    func ISourcesSetAngleDeg(_ value: Double) {
        ISources_Set_AngleDeg(value)
    }
        
    /**
    Set the present frequency for the ISOURCE.
    The C function called is: ```void ISources_Set_Frequency(double Value);```
    */
    func ISourcesSetFrequency(_ value: Double) {
        ISources_Set_Frequency(value)
    }
        
    /**
    Number of LineCodes.
    The C function called is: ```int32_t LineCodes_Get_Count(void);```
    */
    func LineCodesGetCount() -> Int {
        return Int(LineCodes_Get_Count())
    }
        
    /**
    The C function called is: ```int32_t LineCodes_Get_First(void);```
    */
    func LineCodesGetFirst() -> Int {
        return Int(LineCodes_Get_First())
    }
        
    /**
    The C function called is: ```int32_t LineCodes_Get_Next(void);```
    */
    func LineCodesGetNext() -> Int {
        return Int(LineCodes_Get_Next())
    }
        
    /**
    Name of active LineCode.
    The C function called is: ```char* LineCodes_Get_Name(void);```
    */
    func LineCodesGetName() -> String? {
        return DSS.getString(from: LineCodes_Get_Name)
    }
        
    /**
    The C function called is: ```void LineCodes_Set_Name(char* Value);```
    */
    func LineCodesSetName(_ value: String) {
        LineCodes_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Flag denoting whether impedance data were entered in symmetrical components.
    The C function called is: ```uint16_t LineCodes_Get_IsZ1Z0(void);```
    */
    func LineCodesGetIsZ1Z0() -> Int {
        return Int(LineCodes_Get_IsZ1Z0())
    }
        
    /**
    The C function called is: ```int32_t LineCodes_Get_Units(void);```
    */
    func LineCodesGetUnits() -> Int {
        return Int(LineCodes_Get_Units())
    }
        
    /**
    The C function called is: ```void LineCodes_Set_Units(int32_t Value);```
    */
    func LineCodesSetUnits(_ value: Int) {
        LineCodes_Set_Units(Int32(value))
    }
        
    /**
    Number of Phases.
    The C function called is: ```int32_t LineCodes_Get_Phases(void);```
    */
    func LineCodesGetPhases() -> Int {
        return Int(LineCodes_Get_Phases())
    }
        
    /**
    Number of Phases.
    The C function called is: ```void LineCodes_Set_Phases(int32_t Value);```
    */
    func LineCodesSetPhases(_ value: Int) {
        LineCodes_Set_Phases(Int32(value))
    }
        
    /**
    Positive-sequence resistance ohms per unit length.
    The C function called is: ```double LineCodes_Get_R1(void);```
    */
    func LineCodesGetR1() -> Double {
        return LineCodes_Get_R1()
    }
        
    /**
    The C function called is: ```void LineCodes_Set_R1(double Value);```
    */
    func LineCodesSetR1(_ value: Double) {
        LineCodes_Set_R1(value)
    }
        
    /**
    Posiive-sequence reactance, ohms per unit length.
    The C function called is: ```double LineCodes_Get_X1(void);```
    */
    func LineCodesGetX1() -> Double {
        return LineCodes_Get_X1()
    }
        
    /**
    The C function called is: ```void LineCodes_Set_X1(double Value);```
    */
    func LineCodesSetX1(_ value: Double) {
        LineCodes_Set_X1(value)
    }
        
    /**
    Zero-Sequence Resistance, ohms per unit length.
    The C function called is: ```double LineCodes_Get_R0(void);```
    */
    func LineCodesGetR0() -> Double {
        return LineCodes_Get_R0()
    }
        
    /**
    Zero Sequence Reactance, Ohms per unit length.
    The C function called is: ```double LineCodes_Get_X0(void);```
    */
    func LineCodesGetX0() -> Double {
        return LineCodes_Get_X0()
    }
        
    /**
    The C function called is: ```void LineCodes_Set_R0(double Value);```
    */
    func LineCodesSetR0(_ value: Double) {
        LineCodes_Set_R0(value)
    }
        
    /**
    The C function called is: ```void LineCodes_Set_X0(double Value);```
    */
    func LineCodesSetX0(_ value: Double) {
        LineCodes_Set_X0(value)
    }
        
    /**
    Zero-sequence capacitance, nF per unit length.
    The C function called is: ```double LineCodes_Get_C0(void);```
    */
    func LineCodesGetC0() -> Double {
        return LineCodes_Get_C0()
    }
        
    /**
    Positive-sequence capacitance, nF per unit length.
    The C function called is: ```double LineCodes_Get_C1(void);```
    */
    func LineCodesGetC1() -> Double {
        return LineCodes_Get_C1()
    }
        
    /**
    The C function called is: ```void LineCodes_Set_C0(double Value);```
    */
    func LineCodesSetC0(_ value: Double) {
        LineCodes_Set_C0(value)
    }
        
    /**
    The C function called is: ```void LineCodes_Set_C1(double Value);```
    */
    func LineCodesSetC1(_ value: Double) {
        LineCodes_Set_C1(value)
    }
        
    /**
    Capacitance matrix, nF per unit length.
    The C function called is: ```void LineCodes_Get_Cmatrix(double** ResultPtr, int32_t* ResultCount);```
    */
    func LineCodesGetCmatrix() -> [Double] {
        return DSS.getDoubleArray(LineCodes_Get_Cmatrix)
    }
        
    /**
    Same as LineCodes_Get_Cmatrix but using the global buffer interface for results.
    The C function called is: ```void LineCodes_Get_Cmatrix_GR(void);```
    */
    func LineCodesGetCmatrixGR() {
        LineCodes_Get_Cmatrix_GR()
    }
        
    /**
    Resistance matrix, ohms per unit length.
    The C function called is: ```void LineCodes_Get_Rmatrix(double** ResultPtr, int32_t* ResultCount);```
    */
    func LineCodesGetRmatrix() -> [Double] {
        return DSS.getDoubleArray(LineCodes_Get_Rmatrix)
    }
        
    /**
    Same as LineCodes_Get_Rmatrix but using the global buffer interface for results.
    The C function called is: ```void LineCodes_Get_Rmatrix_GR(void);```
    */
    func LineCodesGetRmatrixGR() {
        LineCodes_Get_Rmatrix_GR()
    }
        
    /**
    Reactance matrix, ohms per unit length.
    The C function called is: ```void LineCodes_Get_Xmatrix(double** ResultPtr, int32_t* ResultCount);```
    */
    func LineCodesGetXmatrix() -> [Double] {
        return DSS.getDoubleArray(LineCodes_Get_Xmatrix)
    }
        
    /**
    Same as LineCodes_Get_Xmatrix but using the global buffer interface for results.
    The C function called is: ```void LineCodes_Get_Xmatrix_GR(void);```
    */
    func LineCodesGetXmatrixGR() {
        LineCodes_Get_Xmatrix_GR()
    }
        
    /**
    The C function called is: ```void LineCodes_Set_Cmatrix(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void LineCodes_Set_Rmatrix(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void LineCodes_Set_Xmatrix(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Normal Ampere rating.
    The C function called is: ```double LineCodes_Get_NormAmps(void);```
    */
    func LineCodesGetNormAmps() -> Double {
        return LineCodes_Get_NormAmps()
    }
        
    /**
    The C function called is: ```void LineCodes_Set_NormAmps(double Value);```
    */
    func LineCodesSetNormAmps(_ value: Double) {
        LineCodes_Set_NormAmps(value)
    }
        
    /**
    Emergency ampere rating.
    The C function called is: ```double LineCodes_Get_EmergAmps(void);```
    */
    func LineCodesGetEmergAmps() -> Double {
        return LineCodes_Get_EmergAmps()
    }
        
    /**
    The C function called is: ```void LineCodes_Set_EmergAmps(double Value);```
    */
    func LineCodesSetEmergAmps(_ value: Double) {
        LineCodes_Set_EmergAmps(value)
    }
        
    /**
    Array of strings with names of all devices.
    The C function called is: ```void LineCodes_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func LineCodesGetAllNames() -> [String] {
        return DSS.getStringArray(LineCodes_Get_AllNames)
    }
        
    /**
    Same as LineCodes_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void LineCodes_Get_AllNames_GR(void);```
    */
    func LineCodesGetAllNamesGR() {
        LineCodes_Get_AllNames_GR()
    }
        
    /**
    Names of all Line Objects.
    The C function called is: ```void Lines_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func LinesGetAllNames() -> [String] {
        return DSS.getStringArray(Lines_Get_AllNames)
    }
        
    /**
    Same as Lines_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Lines_Get_AllNames_GR(void);```
    */
    func LinesGetAllNamesGR() {
        Lines_Get_AllNames_GR()
    }
        
    /**
    Name of bus for terminal 1..
    The C function called is: ```char* Lines_Get_Bus1(void);```
    */
    func LinesGetBus1() -> String? {
        return DSS.getString(from: Lines_Get_Bus1)
    }
        
    /**
    Name of bus for terminal 2..
    The C function called is: ```char* Lines_Get_Bus2(void);```
    */
    func LinesGetBus2() -> String? {
        return DSS.getString(from: Lines_Get_Bus2)
    }
        
    /**
    Invoking this property sets the first element active.  Returns 0 if no lines.  Otherwise, index of the line element..
    The C function called is: ```int32_t Lines_Get_First(void);```
    */
    func LinesGetFirst() -> Int {
        return Int(Lines_Get_First())
    }
        
    /**
    Length of line section in units compatible with the LineCode definition..
    The C function called is: ```double Lines_Get_Length(void);```
    */
    func LinesGetLength() -> Double {
        return Lines_Get_Length()
    }
        
    /**
    Name of LineCode object that defines the impedances..
    The C function called is: ```char* Lines_Get_LineCode(void);```
    */
    func LinesGetLineCode() -> String? {
        return DSS.getString(from: Lines_Get_LineCode)
    }
        
    /**
    Specify the name of the Line element to set it active..
    The C function called is: ```char* Lines_Get_Name(void);```
    */
    func LinesGetName() -> String? {
        return DSS.getString(from: Lines_Get_Name)
    }
        
    /**
    Invoking this property advances to the next Line element active.  Returns 0 if no more lines.  Otherwise, index of the line element..
    The C function called is: ```int32_t Lines_Get_Next(void);```
    */
    func LinesGetNext() -> Int {
        return Int(Lines_Get_Next())
    }
        
    /**
    Number of Phases, this Line element..
    The C function called is: ```int32_t Lines_Get_Phases(void);```
    */
    func LinesGetPhases() -> Int {
        return Int(Lines_Get_Phases())
    }
        
    /**
    Positive Sequence resistance, ohms per unit length..
    The C function called is: ```double Lines_Get_R1(void);```
    */
    func LinesGetR1() -> Double {
        return Lines_Get_R1()
    }
        
    /**
    Positive Sequence reactance, ohms per unit length..
    The C function called is: ```double Lines_Get_X1(void);```
    */
    func LinesGetX1() -> Double {
        return Lines_Get_X1()
    }
        
    /**
    The C function called is: ```int32_t Lines_New(char* Name);```
    */
        
    /**
    Name of bus for terminal 1..
    The C function called is: ```void Lines_Set_Bus1(char* Value);```
    */
    func LinesSetBus1(_ value: String) {
        Lines_Set_Bus1(DSS.getPointer(to: value))
    }
        
    /**
    Name of bus for terminal 2..
    The C function called is: ```void Lines_Set_Bus2(char* Value);```
    */
    func LinesSetBus2(_ value: String) {
        Lines_Set_Bus2(DSS.getPointer(to: value))
    }
        
    /**
    Length of line section in units compatible with the LineCode definition..
    The C function called is: ```void Lines_Set_Length(double Value);```
    */
    func LinesSetLength(_ value: Double) {
        Lines_Set_Length(value)
    }
        
    /**
    Name of LineCode object that defines the impedances..
    The C function called is: ```void Lines_Set_LineCode(char* Value);```
    */
    func LinesSetLineCode(_ value: String) {
        Lines_Set_LineCode(DSS.getPointer(to: value))
    }
        
    /**
    Specify the name of the Line element to set it active..
    The C function called is: ```void Lines_Set_Name(char* Value);```
    */
    func LinesSetName(_ value: String) {
        Lines_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Number of Phases, this Line element..
    The C function called is: ```void Lines_Set_Phases(int32_t Value);```
    */
    func LinesSetPhases(_ value: Int) {
        Lines_Set_Phases(Int32(value))
    }
        
    /**
    Positive Sequence resistance, ohms per unit length..
    The C function called is: ```void Lines_Set_R1(double Value);```
    */
    func LinesSetR1(_ value: Double) {
        Lines_Set_R1(value)
    }
        
    /**
    Positive Sequence reactance, ohms per unit length..
    The C function called is: ```void Lines_Set_X1(double Value);```
    */
    func LinesSetX1(_ value: Double) {
        Lines_Set_X1(value)
    }
        
    /**
    Zero Sequence capacitance, nanofarads per unit length..
    The C function called is: ```double Lines_Get_C0(void);```
    */
    func LinesGetC0() -> Double {
        return Lines_Get_C0()
    }
        
    /**
    Positive Sequence capacitance, nanofarads per unit length..
    The C function called is: ```double Lines_Get_C1(void);```
    */
    func LinesGetC1() -> Double {
        return Lines_Get_C1()
    }
        
    /**
    The C function called is: ```void Lines_Get_Cmatrix(double** ResultPtr, int32_t* ResultCount);```
    */
    func LinesGetCmatrix() -> [Double] {
        return DSS.getDoubleArray(Lines_Get_Cmatrix)
    }
        
    /**
    Same as Lines_Get_Cmatrix but using the global buffer interface for results.
    The C function called is: ```void Lines_Get_Cmatrix_GR(void);```
    */
    func LinesGetCmatrixGR() {
        Lines_Get_Cmatrix_GR()
    }
        
    /**
    Zero Sequence resistance, ohms per unit length..
    The C function called is: ```double Lines_Get_R0(void);```
    */
    func LinesGetR0() -> Double {
        return Lines_Get_R0()
    }
        
    /**
    Resistance matrix (full), ohms per unit length. Array of doubles..
    The C function called is: ```void Lines_Get_Rmatrix(double** ResultPtr, int32_t* ResultCount);```
    */
    func LinesGetRmatrix() -> [Double] {
        return DSS.getDoubleArray(Lines_Get_Rmatrix)
    }
        
    /**
    Same as Lines_Get_Rmatrix but using the global buffer interface for results.
    The C function called is: ```void Lines_Get_Rmatrix_GR(void);```
    */
    func LinesGetRmatrixGR() {
        Lines_Get_Rmatrix_GR()
    }
        
    /**
    Zero Sequence reactance ohms per unit length..
    The C function called is: ```double Lines_Get_X0(void);```
    */
    func LinesGetX0() -> Double {
        return Lines_Get_X0()
    }
        
    /**
    The C function called is: ```void Lines_Get_Xmatrix(double** ResultPtr, int32_t* ResultCount);```
    */
    func LinesGetXmatrix() -> [Double] {
        return DSS.getDoubleArray(Lines_Get_Xmatrix)
    }
        
    /**
    Same as Lines_Get_Xmatrix but using the global buffer interface for results.
    The C function called is: ```void Lines_Get_Xmatrix_GR(void);```
    */
    func LinesGetXmatrixGR() {
        Lines_Get_Xmatrix_GR()
    }
        
    /**
    Zero Sequence capacitance, nanofarads per unit length..
    The C function called is: ```void Lines_Set_C0(double Value);```
    */
    func LinesSetC0(_ value: Double) {
        Lines_Set_C0(value)
    }
        
    /**
    Positive Sequence capacitance, nanofarads per unit length..
    The C function called is: ```void Lines_Set_C1(double Value);```
    */
    func LinesSetC1(_ value: Double) {
        Lines_Set_C1(value)
    }
        
    /**
    The C function called is: ```void Lines_Set_Cmatrix(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Zero Sequence resistance, ohms per unit length..
    The C function called is: ```void Lines_Set_R0(double Value);```
    */
    func LinesSetR0(_ value: Double) {
        Lines_Set_R0(value)
    }
        
    /**
    Resistance matrix (full), ohms per unit length. Array of doubles..
    The C function called is: ```void Lines_Set_Rmatrix(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Zero Sequence reactance ohms per unit length..
    The C function called is: ```void Lines_Set_X0(double Value);```
    */
    func LinesSetX0(_ value: Double) {
        Lines_Set_X0(value)
    }
        
    /**
    The C function called is: ```void Lines_Set_Xmatrix(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Emergency (maximum) ampere rating of Line..
    The C function called is: ```double Lines_Get_EmergAmps(void);```
    */
    func LinesGetEmergAmps() -> Double {
        return Lines_Get_EmergAmps()
    }
        
    /**
    Normal ampere rating of Line..
    The C function called is: ```double Lines_Get_NormAmps(void);```
    */
    func LinesGetNormAmps() -> Double {
        return Lines_Get_NormAmps()
    }
        
    /**
    Emergency (maximum) ampere rating of Line..
    The C function called is: ```void Lines_Set_EmergAmps(double Value);```
    */
    func LinesSetEmergAmps(_ value: Double) {
        Lines_Set_EmergAmps(value)
    }
        
    /**
    Normal ampere rating of Line..
    The C function called is: ```void Lines_Set_NormAmps(double Value);```
    */
    func LinesSetNormAmps(_ value: Double) {
        Lines_Set_NormAmps(value)
    }
        
    /**
    Line geometry code.
    The C function called is: ```char* Lines_Get_Geometry(void);```
    */
    func LinesGetGeometry() -> String? {
        return DSS.getString(from: Lines_Get_Geometry)
    }
        
    /**
    Line geometry code.
    The C function called is: ```void Lines_Set_Geometry(char* Value);```
    */
    func LinesSetGeometry(_ value: String) {
        Lines_Set_Geometry(DSS.getPointer(to: value))
    }
        
    /**
    Earth return resistance value used to compute line impedances at power frequency.
    The C function called is: ```double Lines_Get_Rg(void);```
    */
    func LinesGetRg() -> Double {
        return Lines_Get_Rg()
    }
        
    /**
    Earth Resistivity, m-ohms.
    The C function called is: ```double Lines_Get_Rho(void);```
    */
    func LinesGetRho() -> Double {
        return Lines_Get_Rho()
    }
        
    /**
    Earth return reactance value used to compute line impedances at power frequency.
    The C function called is: ```double Lines_Get_Xg(void);```
    */
    func LinesGetXg() -> Double {
        return Lines_Get_Xg()
    }
        
    /**
    Earth return resistance value used to compute line impedances at power frequency.
    The C function called is: ```void Lines_Set_Rg(double Value);```
    */
    func LinesSetRg(_ value: Double) {
        Lines_Set_Rg(value)
    }
        
    /**
    Earth Resistivity, m-ohms.
    The C function called is: ```void Lines_Set_Rho(double Value);```
    */
    func LinesSetRho(_ value: Double) {
        Lines_Set_Rho(value)
    }
        
    /**
    Earth return reactance value used to compute line impedances at power frequency.
    The C function called is: ```void Lines_Set_Xg(double Value);```
    */
    func LinesSetXg(_ value: Double) {
        Lines_Set_Xg(value)
    }
        
    /**
    Yprimitive: Does Nothing at present on Put; Dangerous.
    The C function called is: ```void Lines_Get_Yprim(double** ResultPtr, int32_t* ResultCount);```
    */
    func LinesGetYprim() -> [Double] {
        return DSS.getDoubleArray(Lines_Get_Yprim)
    }
        
    /**
    Same as Lines_Get_Yprim but using the global buffer interface for results.
    The C function called is: ```void Lines_Get_Yprim_GR(void);```
    */
    func LinesGetYprimGR() {
        Lines_Get_Yprim_GR()
    }
        
    /**
    Yprimitive: Does Nothing at present on Put; Dangerous.
    The C function called is: ```void Lines_Set_Yprim(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Number of customers on this line section..
    The C function called is: ```int32_t Lines_Get_NumCust(void);```
    */
    func LinesGetNumCust() -> Int {
        return Int(Lines_Get_NumCust())
    }
        
    /**
    Total Number of customers served from this line section..
    The C function called is: ```int32_t Lines_Get_TotalCust(void);```
    */
    func LinesGetTotalCust() -> Int {
        return Int(Lines_Get_TotalCust())
    }
        
    /**
    Sets Parent of the active Line to be the active line. Returns 0 if no parent or action fails..
    The C function called is: ```int32_t Lines_Get_Parent(void);```
    */
    func LinesGetParent() -> Int {
        return Int(Lines_Get_Parent())
    }
        
    /**
    Number of Line objects in Active Circuit..
    The C function called is: ```int32_t Lines_Get_Count(void);```
    */
    func LinesGetCount() -> Int {
        return Int(Lines_Get_Count())
    }
        
    /**
    Line spacing code.
    The C function called is: ```char* Lines_Get_Spacing(void);```
    */
    func LinesGetSpacing() -> String? {
        return DSS.getString(from: Lines_Get_Spacing)
    }
        
    /**
    Line spacing code.
    The C function called is: ```void Lines_Set_Spacing(char* Value);```
    */
    func LinesSetSpacing(_ value: String) {
        Lines_Set_Spacing(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```int32_t Lines_Get_Units(void);```
    */
    func LinesGetUnits() -> Int {
        return Int(Lines_Get_Units())
    }
        
    /**
    The C function called is: ```void Lines_Set_Units(int32_t Value);```
    */
    func LinesSetUnits(_ value: Int) {
        Lines_Set_Units(Int32(value))
    }
        
    /**
    Array of strings containing all Load names.
    The C function called is: ```void Loads_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func LoadsGetAllNames() -> [String] {
        return DSS.getStringArray(Loads_Get_AllNames)
    }
        
    /**
    Same as Loads_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Loads_Get_AllNames_GR(void);```
    */
    func LoadsGetAllNamesGR() {
        Loads_Get_AllNames_GR()
    }
        
    /**
    Set first Load element to be active; returns 0 if none..
    The C function called is: ```int32_t Loads_Get_First(void);```
    */
    func LoadsGetFirst() -> Int {
        return Int(Loads_Get_First())
    }
        
    /**
    The C function called is: ```int32_t Loads_Get_idx(void);```
    */
    func LoadsGetIdx() -> Int {
        return Int(Loads_Get_idx())
    }
        
    /**
    Set active load by name..
    The C function called is: ```char* Loads_Get_Name(void);```
    */
    func LoadsGetName() -> String? {
        return DSS.getString(from: Loads_Get_Name)
    }
        
    /**
    Sets next Load element to be active; returns 0 of none else index of active load..
    The C function called is: ```int32_t Loads_Get_Next(void);```
    */
    func LoadsGetNext() -> Int {
        return Int(Loads_Get_Next())
    }
        
    /**
    The C function called is: ```void Loads_Set_idx(int32_t Value);```
    */
    func LoadsSetIdx(_ value: Int) {
        Loads_Set_idx(Int32(value))
    }
        
    /**
    Set active load by name..
    The C function called is: ```void Loads_Set_Name(char* Value);```
    */
    func LoadsSetName(_ value: String) {
        Loads_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Set kV rating for active Load. For 2 or more phases set Line-Line kV. Else actual kV across terminals..
    The C function called is: ```double Loads_Get_kV(void);```
    */
    func LoadsGetKV() -> Double {
        return Loads_Get_kV()
    }
        
    /**
    Set kvar for active Load. Updates PF based in present kW..
    The C function called is: ```double Loads_Get_kvar(void);```
    */
    func LoadsGetKvar() -> Double {
        return Loads_Get_kvar()
    }
        
    /**
    Set kW for active Load. Updates kvar based on present PF..
    The C function called is: ```double Loads_Get_kW(void);```
    */
    func LoadsGetKW() -> Double {
        return Loads_Get_kW()
    }
        
    /**
    Set Power Factor for Active Load. Specify leading PF as negative. Updates kvar based on kW value.
    The C function called is: ```double Loads_Get_PF(void);```
    */
    func LoadsGetPF() -> Double {
        return Loads_Get_PF()
    }
        
    /**
    Set kV rating for active Load. For 2 or more phases set Line-Line kV. Else actual kV across terminals..
    The C function called is: ```void Loads_Set_kV(double Value);```
    */
    func LoadsSetKV(_ value: Double) {
        Loads_Set_kV(value)
    }
        
    /**
    Set kvar for active Load. Updates PF based on present kW..
    The C function called is: ```void Loads_Set_kvar(double Value);```
    */
    func LoadsSetKvar(_ value: Double) {
        Loads_Set_kvar(value)
    }
        
    /**
    Set kW for active Load. Updates kvar based on present PF..
    The C function called is: ```void Loads_Set_kW(double Value);```
    */
    func LoadsSetKW(_ value: Double) {
        Loads_Set_kW(value)
    }
        
    /**
    Set Power Factor for Active Load. Specify leading PF as negative. Updates kvar based on present value of kW..
    The C function called is: ```void Loads_Set_PF(double Value);```
    */
    func LoadsSetPF(_ value: Double) {
        Loads_Set_PF(value)
    }
        
    /**
    Number of Load objects in active circuit..
    The C function called is: ```int32_t Loads_Get_Count(void);```
    */
    func LoadsGetCount() -> Int {
        return Int(Loads_Get_Count())
    }
        
    /**
    Factor for allocating loads by connected xfkva.
    The C function called is: ```double Loads_Get_AllocationFactor(void);```
    */
    func LoadsGetAllocationFactor() -> Double {
        return Loads_Get_AllocationFactor()
    }
        
    /**
    Factor relates average to peak kw.  Used for allocation with kwh and kwhdays/.
    The C function called is: ```double Loads_Get_Cfactor(void);```
    */
    func LoadsGetCfactor() -> Double {
        return Loads_Get_Cfactor()
    }
        
    /**
    The C function called is: ```int32_t Loads_Get_Class_(void);```
    */
    func LoadsGetClass() -> Int {
        return Int(Loads_Get_Class_())
    }
        
    /**
    Name of a loadshape with both Mult and Qmult, for CVR factors as a function of time..
    The C function called is: ```char* Loads_Get_CVRcurve(void);```
    */
    func LoadsGetCVRcurve() -> String? {
        return DSS.getString(from: Loads_Get_CVRcurve)
    }
        
    /**
    Percent reduction in Q for percent reduction in V. Must be used with dssLoadModelCVR..
    The C function called is: ```double Loads_Get_CVRvars(void);```
    */
    func LoadsGetCVRvars() -> Double {
        return Loads_Get_CVRvars()
    }
        
    /**
    Percent reduction in P for percent reduction in V. Must be used with dssLoadModelCVR..
    The C function called is: ```double Loads_Get_CVRwatts(void);```
    */
    func LoadsGetCVRwatts() -> Double {
        return Loads_Get_CVRwatts()
    }
        
    /**
    Name of the loadshape for a daily load profile..
    The C function called is: ```char* Loads_Get_daily(void);```
    */
    func LoadsGetDaily() -> String? {
        return DSS.getString(from: Loads_Get_daily)
    }
        
    /**
    Name of the loadshape for a duty cycle simulation..
    The C function called is: ```char* Loads_Get_duty(void);```
    */
    func LoadsGetDuty() -> String? {
        return DSS.getString(from: Loads_Get_duty)
    }
        
    /**
    Name of the growthshape curve for yearly load growth factors..
    The C function called is: ```char* Loads_Get_Growth(void);```
    */
    func LoadsGetGrowth() -> String? {
        return DSS.getString(from: Loads_Get_Growth)
    }
        
    /**
    Delta loads are connected line-to-line..
    The C function called is: ```uint16_t Loads_Get_IsDelta(void);```
    */
    func LoadsGetIsDelta() -> Int {
        return Int(Loads_Get_IsDelta())
    }
        
    /**
    Base load kva. Also defined kw and kvar or pf input, or load allocation by kwh or xfkva..
    The C function called is: ```double Loads_Get_kva(void);```
    */
    func LoadsGetKva() -> Double {
        return Loads_Get_kva()
    }
        
    /**
    kwh billed for this period. Can be used with Cfactor for load allocation..
    The C function called is: ```double Loads_Get_kwh(void);```
    */
    func LoadsGetKwh() -> Double {
        return Loads_Get_kwh()
    }
        
    /**
    Length of kwh billing period for average demand calculation. Default 30..
    The C function called is: ```double Loads_Get_kwhdays(void);```
    */
    func LoadsGetKwhdays() -> Double {
        return Loads_Get_kwhdays()
    }
        
    /**
    The Load Model defines variation of P and Q with voltage..
    The C function called is: ```int32_t Loads_Get_Model(void);```
    */
    func LoadsGetModel() -> Int {
        return Int(Loads_Get_Model())
    }
        
    /**
    Number of customers in this load, defaults to one..
    The C function called is: ```int32_t Loads_Get_NumCust(void);```
    */
    func LoadsGetNumCust() -> Int {
        return Int(Loads_Get_NumCust())
    }
        
    /**
    Average percent of nominal load in Monte Carlo studies; only if no loadshape defined for this load..
    The C function called is: ```double Loads_Get_PctMean(void);```
    */
    func LoadsGetPctMean() -> Double {
        return Loads_Get_PctMean()
    }
        
    /**
    Percent standard deviation for Monte Carlo load studies; if there is no loadshape assigned to this load..
    The C function called is: ```double Loads_Get_PctStdDev(void);```
    */
    func LoadsGetPctStdDev() -> Double {
        return Loads_Get_PctStdDev()
    }
        
    /**
    Neutral resistance for wye-connected loads..
    The C function called is: ```double Loads_Get_Rneut(void);```
    */
    func LoadsGetRneut() -> Double {
        return Loads_Get_Rneut()
    }
        
    /**
    Name of harmonic current spectrrum shape..
    The C function called is: ```char* Loads_Get_Spectrum(void);```
    */
    func LoadsGetSpectrum() -> String? {
        return DSS.getString(from: Loads_Get_Spectrum)
    }
        
    /**
    Response to load multipliers: Fixed (growth only), Exempt (no LD curve), Variable (all)..
    The C function called is: ```int32_t Loads_Get_Status(void);```
    */
    func LoadsGetStatus() -> Int {
        return Int(Loads_Get_Status())
    }
        
    /**
    Maximum per-unit voltage to use the load model. Above this, constant Z applies..
    The C function called is: ```double Loads_Get_Vmaxpu(void);```
    */
    func LoadsGetVmaxpu() -> Double {
        return Loads_Get_Vmaxpu()
    }
        
    /**
    Minimum voltage for unserved energy (UE) evaluation..
    The C function called is: ```double Loads_Get_Vminemerg(void);```
    */
    func LoadsGetVminemerg() -> Double {
        return Loads_Get_Vminemerg()
    }
        
    /**
    Minimum voltage for energy exceeding normal (EEN) evaluations..
    The C function called is: ```double Loads_Get_Vminnorm(void);```
    */
    func LoadsGetVminnorm() -> Double {
        return Loads_Get_Vminnorm()
    }
        
    /**
    Minimum voltage to apply the load model. Below this, constant Z is used..
    The C function called is: ```double Loads_Get_Vminpu(void);```
    */
    func LoadsGetVminpu() -> Double {
        return Loads_Get_Vminpu()
    }
        
    /**
    Rated service transformer kVA for load allocation, using AllocationFactor. Affects kW, kvar, and pf..
    The C function called is: ```double Loads_Get_xfkVA(void);```
    */
    func LoadsGetXfkVA() -> Double {
        return Loads_Get_xfkVA()
    }
        
    /**
    Neutral reactance for wye-connected loads..
    The C function called is: ```double Loads_Get_Xneut(void);```
    */
    func LoadsGetXneut() -> Double {
        return Loads_Get_Xneut()
    }
        
    /**
    Name of yearly duration loadshape.
    The C function called is: ```char* Loads_Get_Yearly(void);```
    */
    func LoadsGetYearly() -> String? {
        return DSS.getString(from: Loads_Get_Yearly)
    }
        
    /**
    The C function called is: ```void Loads_Set_AllocationFactor(double Value);```
    */
    func LoadsSetAllocationFactor(_ value: Double) {
        Loads_Set_AllocationFactor(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_Cfactor(double Value);```
    */
    func LoadsSetCfactor(_ value: Double) {
        Loads_Set_Cfactor(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_Class_(int32_t Value);```
    */
    func LoadsSetClass(_ value: Int) {
        Loads_Set_Class_(Int32(value))
    }
        
    /**
    The C function called is: ```void Loads_Set_CVRcurve(char* Value);```
    */
    func LoadsSetCVRcurve(_ value: String) {
        Loads_Set_CVRcurve(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Loads_Set_CVRvars(double Value);```
    */
    func LoadsSetCVRvars(_ value: Double) {
        Loads_Set_CVRvars(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_CVRwatts(double Value);```
    */
    func LoadsSetCVRwatts(_ value: Double) {
        Loads_Set_CVRwatts(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_daily(char* Value);```
    */
    func LoadsSetDaily(_ value: String) {
        Loads_Set_daily(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Loads_Set_duty(char* Value);```
    */
    func LoadsSetDuty(_ value: String) {
        Loads_Set_duty(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Loads_Set_Growth(char* Value);```
    */
    func LoadsSetGrowth(_ value: String) {
        Loads_Set_Growth(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Loads_Set_IsDelta(uint16_t Value);```
    */
    func LoadsSetIsDelta(_ value: Int) {
        Loads_Set_IsDelta(UInt16(value))
    }
        
    /**
    The C function called is: ```void Loads_Set_kva(double Value);```
    */
    func LoadsSetKva(_ value: Double) {
        Loads_Set_kva(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_kwh(double Value);```
    */
    func LoadsSetKwh(_ value: Double) {
        Loads_Set_kwh(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_kwhdays(double Value);```
    */
    func LoadsSetKwhdays(_ value: Double) {
        Loads_Set_kwhdays(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_Model(int32_t Value);```
    */
    func LoadsSetModel(_ value: Int) {
        Loads_Set_Model(Int32(value))
    }
        
    /**
    The C function called is: ```void Loads_Set_NumCust(int32_t Value);```
    */
    func LoadsSetNumCust(_ value: Int) {
        Loads_Set_NumCust(Int32(value))
    }
        
    /**
    The C function called is: ```void Loads_Set_PctMean(double Value);```
    */
    func LoadsSetPctMean(_ value: Double) {
        Loads_Set_PctMean(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_PctStdDev(double Value);```
    */
    func LoadsSetPctStdDev(_ value: Double) {
        Loads_Set_PctStdDev(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_Rneut(double Value);```
    */
    func LoadsSetRneut(_ value: Double) {
        Loads_Set_Rneut(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_Spectrum(char* Value);```
    */
    func LoadsSetSpectrum(_ value: String) {
        Loads_Set_Spectrum(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Loads_Set_Status(int32_t Value);```
    */
    func LoadsSetStatus(_ value: Int) {
        Loads_Set_Status(Int32(value))
    }
        
    /**
    The C function called is: ```void Loads_Set_Vmaxpu(double Value);```
    */
    func LoadsSetVmaxpu(_ value: Double) {
        Loads_Set_Vmaxpu(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_Vminemerg(double Value);```
    */
    func LoadsSetVminemerg(_ value: Double) {
        Loads_Set_Vminemerg(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_Vminnorm(double Value);```
    */
    func LoadsSetVminnorm(_ value: Double) {
        Loads_Set_Vminnorm(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_Vminpu(double Value);```
    */
    func LoadsSetVminpu(_ value: Double) {
        Loads_Set_Vminpu(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_xfkVA(double Value);```
    */
    func LoadsSetXfkVA(_ value: Double) {
        Loads_Set_xfkVA(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_Xneut(double Value);```
    */
    func LoadsSetXneut(_ value: Double) {
        Loads_Set_Xneut(value)
    }
        
    /**
    The C function called is: ```void Loads_Set_Yearly(char* Value);```
    */
    func LoadsSetYearly(_ value: String) {
        Loads_Set_Yearly(DSS.getPointer(to: value))
    }
        
    /**
    Array of 7  doubles with values for ZIPV property of the LOAD object.
    The C function called is: ```void Loads_Get_ZIPV(double** ResultPtr, int32_t* ResultCount);```
    */
    func LoadsGetZIPV() -> [Double] {
        return DSS.getDoubleArray(Loads_Get_ZIPV)
    }
        
    /**
    Same as Loads_Get_ZIPV but using the global buffer interface for results.
    The C function called is: ```void Loads_Get_ZIPV_GR(void);```
    */
    func LoadsGetZIPVGR() {
        Loads_Get_ZIPV_GR()
    }
        
    /**
    The C function called is: ```void Loads_Set_ZIPV(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```double Loads_Get_pctSeriesRL(void);```
    */
    func LoadsGetPctSeriesRL() -> Double {
        return Loads_Get_pctSeriesRL()
    }
        
    /**
    Percent of Load that is modeled as series R-L for harmonics studies.
    The C function called is: ```void Loads_Set_pctSeriesRL(double Value);```
    */
    func LoadsSetPctSeriesRL(_ value: Double) {
        Loads_Set_pctSeriesRL(value)
    }
        
    /**
    Relative Weighting factor for the active LOAD.
    The C function called is: ```double Loads_Get_RelWeight(void);```
    */
    func LoadsGetRelWeight() -> Double {
        return Loads_Get_RelWeight()
    }
        
    /**
    Relative Weighting factor for the active LOAD.
    The C function called is: ```void Loads_Set_RelWeight(double Value);```
    */
    func LoadsSetRelWeight(_ value: Double) {
        Loads_Set_RelWeight(value)
    }
        
    /**
    Get the Name of the active Loadshape.
    The C function called is: ```char* LoadShapes_Get_Name(void);```
    */
    func LoadShapesGetName() -> String? {
        return DSS.getString(from: LoadShapes_Get_Name)
    }
        
    /**
    Set the active Loadshape by name.
    The C function called is: ```void LoadShapes_Set_Name(char* Value);```
    */
    func LoadShapesSetName(_ value: String) {
        LoadShapes_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Number of Loadshape objects currently defined in Loadshape collection.
    The C function called is: ```int32_t LoadShapes_Get_Count(void);```
    */
    func LoadShapesGetCount() -> Int {
        return Int(LoadShapes_Get_Count())
    }
        
    /**
    Set the first loadshape active and return integer index of the loadshape. Returns 0 if none..
    The C function called is: ```int32_t LoadShapes_Get_First(void);```
    */
    func LoadShapesGetFirst() -> Int {
        return Int(LoadShapes_Get_First())
    }
        
    /**
    Advance active Loadshape to the next on in the collection. Returns 0 if no more loadshapes..
    The C function called is: ```int32_t LoadShapes_Get_Next(void);```
    */
    func LoadShapesGetNext() -> Int {
        return Int(LoadShapes_Get_Next())
    }
        
    /**
    Array of strings containing names of all Loadshape objects currently defined..
    The C function called is: ```void LoadShapes_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func LoadShapesGetAllNames() -> [String] {
        return DSS.getStringArray(LoadShapes_Get_AllNames)
    }
        
    /**
    Same as LoadShapes_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void LoadShapes_Get_AllNames_GR(void);```
    */
    func LoadShapesGetAllNamesGR() {
        LoadShapes_Get_AllNames_GR()
    }
        
    /**
    Get Number of points in active Loadshape..
    The C function called is: ```int32_t LoadShapes_Get_Npts(void);```
    */
    func LoadShapesGetNpts() -> Int {
        return Int(LoadShapes_Get_Npts())
    }
        
    /**
    Array of Doubles for the P multiplier in the Loadshape..
    The C function called is: ```void LoadShapes_Get_Pmult(double** ResultPtr, int32_t* ResultCount);```
    */
    func LoadShapesGetPmult() -> [Double] {
        return DSS.getDoubleArray(LoadShapes_Get_Pmult)
    }
        
    /**
    Same as LoadShapes_Get_Pmult but using the global buffer interface for results.
    The C function called is: ```void LoadShapes_Get_Pmult_GR(void);```
    */
    func LoadShapesGetPmultGR() {
        LoadShapes_Get_Pmult_GR()
    }
        
    /**
    Array of doubles containing the Q multipliers..
    The C function called is: ```void LoadShapes_Get_Qmult(double** ResultPtr, int32_t* ResultCount);```
    */
    func LoadShapesGetQmult() -> [Double] {
        return DSS.getDoubleArray(LoadShapes_Get_Qmult)
    }
        
    /**
    Same as LoadShapes_Get_Qmult but using the global buffer interface for results.
    The C function called is: ```void LoadShapes_Get_Qmult_GR(void);```
    */
    func LoadShapesGetQmultGR() {
        LoadShapes_Get_Qmult_GR()
    }
        
    /**
    Set number of points to allocate for active Loadshape..
    The C function called is: ```void LoadShapes_Set_Npts(int32_t Value);```
    */
    func LoadShapesSetNpts(_ value: Int) {
        LoadShapes_Set_Npts(Int32(value))
    }
        
    /**
    Array of doubles containing the P array for the Loadshape..
    The C function called is: ```void LoadShapes_Set_Pmult(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Array of doubles containing the Q multipliers..
    The C function called is: ```void LoadShapes_Set_Qmult(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void LoadShapes_Normalize(void);```
    */
    func LoadShapesNormalize() {
        LoadShapes_Normalize()
    }
        
    /**
    Time array in hours correscponding to P and Q multipliers when the Interval=0..
    The C function called is: ```void LoadShapes_Get_TimeArray(double** ResultPtr, int32_t* ResultCount);```
    */
    func LoadShapesGetTimeArray() -> [Double] {
        return DSS.getDoubleArray(LoadShapes_Get_TimeArray)
    }
        
    /**
    Same as LoadShapes_Get_TimeArray but using the global buffer interface for results.
    The C function called is: ```void LoadShapes_Get_TimeArray_GR(void);```
    */
    func LoadShapesGetTimeArrayGR() {
        LoadShapes_Get_TimeArray_GR()
    }
        
    /**
    Time array in hours correscponding to P and Q multipliers when the Interval=0..
    The C function called is: ```void LoadShapes_Set_TimeArray(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Fixed interval time value, hours.
    The C function called is: ```double LoadShapes_Get_HrInterval(void);```
    */
    func LoadShapesGetHrInterval() -> Double {
        return LoadShapes_Get_HrInterval()
    }
        
    /**
    Fixed Interval time value, in minutes.
    The C function called is: ```double LoadShapes_Get_MinInterval(void);```
    */
    func LoadShapesGetMinInterval() -> Double {
        return LoadShapes_Get_MinInterval()
    }
        
    /**
    The C function called is: ```double LoadShapes_Get_sInterval(void);```
    */
    func LoadShapesGetSInterval() -> Double {
        return LoadShapes_Get_sInterval()
    }
        
    /**
    Fixed interval time value, hours..
    The C function called is: ```void LoadShapes_Set_HrInterval(double Value);```
    */
    func LoadShapesSetHrInterval(_ value: Double) {
        LoadShapes_Set_HrInterval(value)
    }
        
    /**
    Fixed Interval time value, in minutes.
    The C function called is: ```void LoadShapes_Set_MinInterval(double Value);```
    */
    func LoadShapesSetMinInterval(_ value: Double) {
        LoadShapes_Set_MinInterval(value)
    }
        
    /**
    Fixed interval data time interval, seconds.
    The C function called is: ```void LoadShapes_Set_Sinterval(double Value);```
    */
    func LoadShapesSetSinterval(_ value: Double) {
        LoadShapes_Set_Sinterval(value)
    }
        
    /**
    The C function called is: ```int32_t LoadShapes_New(char* Name);```
    */
        
    /**
    The C function called is: ```double LoadShapes_Get_PBase(void);```
    */
    func LoadShapesGetPBase() -> Double {
        return LoadShapes_Get_PBase()
    }
        
    /**
    Base for normalizing Q curve. If left at zero, the peak value is used..
    The C function called is: ```double LoadShapes_Get_Qbase(void);```
    */
    func LoadShapesGetQbase() -> Double {
        return LoadShapes_Get_Qbase()
    }
        
    /**
    The C function called is: ```void LoadShapes_Set_PBase(double Value);```
    */
    func LoadShapesSetPBase(_ value: Double) {
        LoadShapes_Set_PBase(value)
    }
        
    /**
    Base for normalizing Q curve. If left at zero, the peak value is used..
    The C function called is: ```void LoadShapes_Set_Qbase(double Value);```
    */
    func LoadShapesSetQbase(_ value: Double) {
        LoadShapes_Set_Qbase(value)
    }
        
    /**
    T/F flag to let Loads know to use the actual value in the curve rather than use the value as a multiplier..
    The C function called is: ```uint16_t LoadShapes_Get_UseActual(void);```
    */
    func LoadShapesGetUseActual() -> Int {
        return Int(LoadShapes_Get_UseActual())
    }
        
    /**
    T/F flag to let Loads know to use the actual value in the curve rather than use the value as a multiplier..
    The C function called is: ```void LoadShapes_Set_UseActual(uint16_t Value);```
    */
    func LoadShapesSetUseActual(_ value: Int) {
        LoadShapes_Set_UseActual(UInt16(value))
    }
        
    /**
    Array of all energy Meter names.
    The C function called is: ```void Meters_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func MetersGetAllNames() -> [String] {
        return DSS.getStringArray(Meters_Get_AllNames)
    }
        
    /**
    Same as Meters_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Meters_Get_AllNames_GR(void);```
    */
    func MetersGetAllNamesGR() {
        Meters_Get_AllNames_GR()
    }
        
    /**
    Set the first energy Meter active. Returns 0 if none..
    The C function called is: ```int32_t Meters_Get_First(void);```
    */
    func MetersGetFirst() -> Int {
        return Int(Meters_Get_First())
    }
        
    /**
    Get/Set the active meter  name..
    The C function called is: ```char* Meters_Get_Name(void);```
    */
    func MetersGetName() -> String? {
        return DSS.getString(from: Meters_Get_Name)
    }
        
    /**
    Sets the next energy Meter active.  Returns 0 if no more..
    The C function called is: ```int32_t Meters_Get_Next(void);```
    */
    func MetersGetNext() -> Int {
        return Int(Meters_Get_Next())
    }
        
    /**
    Array of strings containing the names of the registers..
    The C function called is: ```void Meters_Get_RegisterNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func MetersGetRegisterNames() -> [String] {
        return DSS.getStringArray(Meters_Get_RegisterNames)
    }
        
    /**
    Same as Meters_Get_RegisterNames but using the global buffer interface for results.
    The C function called is: ```void Meters_Get_RegisterNames_GR(void);```
    */
    func MetersGetRegisterNamesGR() {
        Meters_Get_RegisterNames_GR()
    }
        
    /**
    Array of all the values contained in the Meter registers for the active Meter..
    The C function called is: ```void Meters_Get_RegisterValues(double** ResultPtr, int32_t* ResultCount);```
    */
    func MetersGetRegisterValues() -> [Double] {
        return DSS.getDoubleArray(Meters_Get_RegisterValues)
    }
        
    /**
    Same as Meters_Get_RegisterValues but using the global buffer interface for results.
    The C function called is: ```void Meters_Get_RegisterValues_GR(void);```
    */
    func MetersGetRegisterValuesGR() {
        Meters_Get_RegisterValues_GR()
    }
        
    /**
    The C function called is: ```void Meters_Reset(void);```
    */
    func MetersReset() {
        Meters_Reset()
    }
        
    /**
    The C function called is: ```void Meters_ResetAll(void);```
    */
    func MetersResetAll() {
        Meters_ResetAll()
    }
        
    /**
    The C function called is: ```void Meters_Sample(void);```
    */
    func MetersSample() {
        Meters_Sample()
    }
        
    /**
    The C function called is: ```void Meters_Save(void);```
    */
    func MetersSave() {
        Meters_Save()
    }
        
    /**
    Set a meter to be active by name..
    The C function called is: ```void Meters_Set_Name(char* Value);```
    */
    func MetersSetName(_ value: String) {
        Meters_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Totals of all registers of all meters.
    The C function called is: ```void Meters_Get_Totals(double** ResultPtr, int32_t* ResultCount);```
    */
    func MetersGetTotals() -> [Double] {
        return DSS.getDoubleArray(Meters_Get_Totals)
    }
        
    /**
    Same as Meters_Get_Totals but using the global buffer interface for results.
    The C function called is: ```void Meters_Get_Totals_GR(void);```
    */
    func MetersGetTotalsGR() {
        Meters_Get_Totals_GR()
    }
        
    /**
    Array of doubles to set values of Peak Current property.
    The C function called is: ```void Meters_Get_Peakcurrent(double** ResultPtr, int32_t* ResultCount);```
    */
    func MetersGetPeakcurrent() -> [Double] {
        return DSS.getDoubleArray(Meters_Get_Peakcurrent)
    }
        
    /**
    Same as Meters_Get_Peakcurrent but using the global buffer interface for results.
    The C function called is: ```void Meters_Get_Peakcurrent_GR(void);```
    */
    func MetersGetPeakcurrentGR() {
        Meters_Get_Peakcurrent_GR()
    }
        
    /**
    Array of doubles to set values of Peak Current property.
    The C function called is: ```void Meters_Set_Peakcurrent(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Set the magnitude of the real part of the Calculated Current (normally determined by solution) for the Meter to force some behavior on Load Allocation.
    The C function called is: ```void Meters_Get_CalcCurrent(double** ResultPtr, int32_t* ResultCount);```
    */
    func MetersGetCalcCurrent() -> [Double] {
        return DSS.getDoubleArray(Meters_Get_CalcCurrent)
    }
        
    /**
    Same as Meters_Get_CalcCurrent but using the global buffer interface for results.
    The C function called is: ```void Meters_Get_CalcCurrent_GR(void);```
    */
    func MetersGetCalcCurrentGR() {
        Meters_Get_CalcCurrent_GR()
    }
        
    /**
    Set the magnitude of the real part of the Calculated Current (normally determined by solution) for the Meter to force some behavior on Load Allocation.
    The C function called is: ```void Meters_Set_CalcCurrent(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Array of doubles: set the phase allocation factors for the active meter..
    The C function called is: ```void Meters_Get_AllocFactors(double** ResultPtr, int32_t* ResultCount);```
    */
    func MetersGetAllocFactors() -> [Double] {
        return DSS.getDoubleArray(Meters_Get_AllocFactors)
    }
        
    /**
    Same as Meters_Get_AllocFactors but using the global buffer interface for results.
    The C function called is: ```void Meters_Get_AllocFactors_GR(void);```
    */
    func MetersGetAllocFactorsGR() {
        Meters_Get_AllocFactors_GR()
    }
        
    /**
    Array of doubles: set the phase allocation factors for the active meter..
    The C function called is: ```void Meters_Set_AllocFactors(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Set Name of metered element.
    The C function called is: ```char* Meters_Get_MeteredElement(void);```
    */
    func MetersGetMeteredElement() -> String? {
        return DSS.getString(from: Meters_Get_MeteredElement)
    }
        
    /**
    set Number of Metered Terminal.
    The C function called is: ```int32_t Meters_Get_MeteredTerminal(void);```
    */
    func MetersGetMeteredTerminal() -> Int {
        return Int(Meters_Get_MeteredTerminal())
    }
        
    /**
    Set Name of metered element.
    The C function called is: ```void Meters_Set_MeteredElement(char* Value);```
    */
    func MetersSetMeteredElement(_ value: String) {
        Meters_Set_MeteredElement(DSS.getPointer(to: value))
    }
        
    /**
    set Number of Metered Terminal.
    The C function called is: ```void Meters_Set_MeteredTerminal(int32_t Value);```
    */
    func MetersSetMeteredTerminal(_ value: Int) {
        Meters_Set_MeteredTerminal(Int32(value))
    }
        
    /**
    Global Flag in the DSS to indicate if Demand Interval (DI) files have been properly opened..
    The C function called is: ```uint16_t Meters_Get_DIFilesAreOpen(void);```
    */
    func MetersGetDIFilesAreOpen() -> Int {
        return Int(Meters_Get_DIFilesAreOpen())
    }
        
    /**
    The C function called is: ```void Meters_CloseAllDIFiles(void);```
    */
    func MetersCloseAllDIFiles() {
        Meters_CloseAllDIFiles()
    }
        
    /**
    The C function called is: ```void Meters_OpenAllDIFiles(void);```
    */
    func MetersOpenAllDIFiles() {
        Meters_OpenAllDIFiles()
    }
        
    /**
    The C function called is: ```void Meters_SampleAll(void);```
    */
    func MetersSampleAll() {
        Meters_SampleAll()
    }
        
    /**
    The C function called is: ```void Meters_SaveAll(void);```
    */
    func MetersSaveAll() {
        Meters_SaveAll()
    }
        
    /**
    Array of names of all zone end elements..
    The C function called is: ```void Meters_Get_AllEndElements(char*** ResultPtr, int32_t* ResultCount);```
    */
    func MetersGetAllEndElements() -> [String] {
        return DSS.getStringArray(Meters_Get_AllEndElements)
    }
        
    /**
    Same as Meters_Get_AllEndElements but using the global buffer interface for results.
    The C function called is: ```void Meters_Get_AllEndElements_GR(void);```
    */
    func MetersGetAllEndElementsGR() {
        Meters_Get_AllEndElements_GR()
    }
        
    /**
    Number of zone end elements in the active meter zone..
    The C function called is: ```int32_t Meters_Get_CountEndElements(void);```
    */
    func MetersGetCountEndElements() -> Int {
        return Int(Meters_Get_CountEndElements())
    }
        
    /**
    Number of Energy Meters in the Active Circuit.
    The C function called is: ```int32_t Meters_Get_Count(void);```
    */
    func MetersGetCount() -> Int {
        return Int(Meters_Get_Count())
    }
        
    /**
    Wide string list of all branches in zone of the active energymeter object..
    The C function called is: ```void Meters_Get_AllBranchesInZone(char*** ResultPtr, int32_t* ResultCount);```
    */
    func MetersGetAllBranchesInZone() -> [String] {
        return DSS.getStringArray(Meters_Get_AllBranchesInZone)
    }
        
    /**
    Same as Meters_Get_AllBranchesInZone but using the global buffer interface for results.
    The C function called is: ```void Meters_Get_AllBranchesInZone_GR(void);```
    */
    func MetersGetAllBranchesInZoneGR() {
        Meters_Get_AllBranchesInZone_GR()
    }
        
    /**
    Number of branches in Active energymeter zone. (Same as sequencelist size).
    The C function called is: ```int32_t Meters_Get_CountBranches(void);```
    */
    func MetersGetCountBranches() -> Int {
        return Int(Meters_Get_CountBranches())
    }
        
    /**
    Returns SAIFI for this meter's Zone. Execute Reliability Calc method first..
    The C function called is: ```double Meters_Get_SAIFI(void);```
    */
    func MetersGetSAIFI() -> Double {
        return Meters_Get_SAIFI()
    }
        
    /**
    Get/set Index into Meter's SequenceList that contains branch pointers in lexical order. Earlier index guaranteed to be upline from later index. Sets PDelement active..
    The C function called is: ```int32_t Meters_Get_SequenceIndex(void);```
    */
    func MetersGetSequenceIndex() -> Int {
        return Int(Meters_Get_SequenceIndex())
    }
        
    /**
    Get/set Index into Meter's SequenceList that contains branch pointers in lexical order. Earlier index guaranteed to be upline from later index. Sets PDelement active..
    The C function called is: ```void Meters_Set_SequenceIndex(int32_t Value);```
    */
    func MetersSetSequenceIndex(_ value: Int) {
        Meters_Set_SequenceIndex(Int32(value))
    }
        
    /**
    SAIFI based on kW rather than number of customers. Get after reliability calcs..
    The C function called is: ```double Meters_Get_SAIFIKW(void);```
    */
    func MetersGetSAIFIKW() -> Double {
        return Meters_Get_SAIFIKW()
    }
        
    /**
    The C function called is: ```void Meters_DoReliabilityCalc(uint16_t AssumeRestoration);```
    */
    func MetersDoReliabilityCalc(_ value: Int) {
        Meters_DoReliabilityCalc(UInt16(value))
    }
        
    /**
    Size of Sequence List.
    The C function called is: ```int32_t Meters_Get_SeqListSize(void);```
    */
    func MetersGetSeqListSize() -> Int {
        return Int(Meters_Get_SeqListSize())
    }
        
    /**
    Total Number of customers in this zone (downline from the EnergyMeter).
    The C function called is: ```int32_t Meters_Get_TotalCustomers(void);```
    */
    func MetersGetTotalCustomers() -> Int {
        return Int(Meters_Get_TotalCustomers())
    }
        
    /**
    SAIDI for this meter's zone. Execute DoReliabilityCalc first..
    The C function called is: ```double Meters_Get_SAIDI(void);```
    */
    func MetersGetSAIDI() -> Double {
        return Meters_Get_SAIDI()
    }
        
    /**
    Total customer interruptions for this Meter zone based on reliability calcs..
    The C function called is: ```double Meters_Get_CustInterrupts(void);```
    */
    func MetersGetCustInterrupts() -> Double {
        return Meters_Get_CustInterrupts()
    }
        
    /**
    Number of feeder sections in this meter's zone.
    The C function called is: ```int32_t Meters_Get_NumSections(void);```
    */
    func MetersGetNumSections() -> Int {
        return Int(Meters_Get_NumSections())
    }
        
    /**
    The C function called is: ```void Meters_SetActiveSection(int32_t SectIdx);```
    */
    func MetersSetActiveSection(_ value: Int) {
        Meters_SetActiveSection(Int32(value))
    }
        
    /**
    Average Repair time in this section of the meter zone.
    The C function called is: ```double Meters_Get_AvgRepairTime(void);```
    */
    func MetersGetAvgRepairTime() -> Double {
        return Meters_Get_AvgRepairTime()
    }
        
    /**
    Sum of Fault Rate time Repair Hrs in this section of the meter zone.
    The C function called is: ```double Meters_Get_FaultRateXRepairHrs(void);```
    */
    func MetersGetFaultRateXRepairHrs() -> Double {
        return Meters_Get_FaultRateXRepairHrs()
    }
        
    /**
    Number of branches (lines) in this section.
    The C function called is: ```int32_t Meters_Get_NumSectionBranches(void);```
    */
    func MetersGetNumSectionBranches() -> Int {
        return Int(Meters_Get_NumSectionBranches())
    }
        
    /**
    Number of Customers in the active section..
    The C function called is: ```int32_t Meters_Get_NumSectionCustomers(void);```
    */
    func MetersGetNumSectionCustomers() -> Int {
        return Int(Meters_Get_NumSectionCustomers())
    }
        
    /**
    Type of OCP device. 1=Fuse; 2=Recloser; 3=Relay.
    The C function called is: ```int32_t Meters_Get_OCPDeviceType(void);```
    */
    func MetersGetOCPDeviceType() -> Int {
        return Int(Meters_Get_OCPDeviceType())
    }
        
    /**
    Sum of the branch fault rates in this section of the meter's zone.
    The C function called is: ```double Meters_Get_SumBranchFltRates(void);```
    */
    func MetersGetSumBranchFltRates() -> Double {
        return Meters_Get_SumBranchFltRates()
    }
        
    /**
    SequenceIndex of the branch at the head of this section.
    The C function called is: ```int32_t Meters_Get_SectSeqIdx(void);```
    */
    func MetersGetSectSeqIdx() -> Int {
        return Int(Meters_Get_SectSeqIdx())
    }
        
    /**
    Total Customers downline from this section.
    The C function called is: ```int32_t Meters_Get_SectTotalCust(void);```
    */
    func MetersGetSectTotalCust() -> Int {
        return Int(Meters_Get_SectTotalCust())
    }
        
    /**
    Array of all Monitor Names.
    The C function called is: ```void Monitors_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func MonitorsGetAllNames() -> [String] {
        return DSS.getStringArray(Monitors_Get_AllNames)
    }
        
    /**
    Same as Monitors_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Monitors_Get_AllNames_GR(void);```
    */
    func MonitorsGetAllNamesGR() {
        Monitors_Get_AllNames_GR()
    }
        
    /**
    Name of CSV file associated with active Monitor..
    The C function called is: ```char* Monitors_Get_FileName(void);```
    */
    func MonitorsGetFileName() -> String? {
        return DSS.getString(from: Monitors_Get_FileName)
    }
        
    /**
    Sets the first Monitor active.  Returns 0 if no monitors..
    The C function called is: ```int32_t Monitors_Get_First(void);```
    */
    func MonitorsGetFirst() -> Int {
        return Int(Monitors_Get_First())
    }
        
    /**
    Set Monitor mode (bitmask integer - see DSS Help).
    The C function called is: ```int32_t Monitors_Get_Mode(void);```
    */
    func MonitorsGetMode() -> Int {
        return Int(Monitors_Get_Mode())
    }
        
    /**
    Sets the active Monitor object by name.
    The C function called is: ```char* Monitors_Get_Name(void);```
    */
    func MonitorsGetName() -> String? {
        return DSS.getString(from: Monitors_Get_Name)
    }
        
    /**
    Sets next monitor active.  Returns 0 if no more..
    The C function called is: ```int32_t Monitors_Get_Next(void);```
    */
    func MonitorsGetNext() -> Int {
        return Int(Monitors_Get_Next())
    }
        
    /**
    The C function called is: ```void Monitors_Reset(void);```
    */
    func MonitorsReset() {
        Monitors_Reset()
    }
        
    /**
    The C function called is: ```void Monitors_ResetAll(void);```
    */
    func MonitorsResetAll() {
        Monitors_ResetAll()
    }
        
    /**
    The C function called is: ```void Monitors_Sample(void);```
    */
    func MonitorsSample() {
        Monitors_Sample()
    }
        
    /**
    The C function called is: ```void Monitors_Save(void);```
    */
    func MonitorsSave() {
        Monitors_Save()
    }
        
    /**
    Set Monitor mode (bitmask integer - see DSS Help).
    The C function called is: ```void Monitors_Set_Mode(int32_t Value);```
    */
    func MonitorsSetMode(_ value: Int) {
        Monitors_Set_Mode(Int32(value))
    }
        
    /**
    The C function called is: ```void Monitors_Show(void);```
    */
    func MonitorsShow() {
        Monitors_Show()
    }
        
    /**
    Sets the active Monitor object by name.
    The C function called is: ```void Monitors_Set_Name(char* Value);```
    */
    func MonitorsSetName(_ value: String) {
        Monitors_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Byte Array containing monitor stream values. Make sure a "save" is done first (standard solution modes do this automatically).
    The C function called is: ```void Monitors_Get_ByteStream(int8_t** ResultPtr, int32_t* ResultCount);```
    */
        
    /**
    Same as Monitors_Get_ByteStream but using the global buffer interface for results.
    The C function called is: ```void Monitors_Get_ByteStream_GR(void);```
    */
    func MonitorsGetByteStreamGR() {
        Monitors_Get_ByteStream_GR()
    }
        
    /**
    Number of Samples in Monitor at Present.
    The C function called is: ```int32_t Monitors_Get_SampleCount(void);```
    */
    func MonitorsGetSampleCount() -> Int {
        return Int(Monitors_Get_SampleCount())
    }
        
    /**
    The C function called is: ```void Monitors_SampleAll(void);```
    */
    func MonitorsSampleAll() {
        Monitors_SampleAll()
    }
        
    /**
    The C function called is: ```void Monitors_SaveAll(void);```
    */
    func MonitorsSaveAll() {
        Monitors_SaveAll()
    }
        
    /**
    Number of Monitors.
    The C function called is: ```int32_t Monitors_Get_Count(void);```
    */
    func MonitorsGetCount() -> Int {
        return Int(Monitors_Get_Count())
    }
        
    /**
    The C function called is: ```void Monitors_Process(void);```
    */
    func MonitorsProcess() {
        Monitors_Process()
    }
        
    /**
    The C function called is: ```void Monitors_ProcessAll(void);```
    */
    func MonitorsProcessAll() {
        Monitors_ProcessAll()
    }
        
    /**
    Array of doubles for the specified channel  (usage: MyArray = DSSMonitor.Channel(i)) A Save or SaveAll  should be executed first. Done automatically by most standard solution modes..
    The C function called is: ```void Monitors_Get_Channel(double** ResultPtr, int32_t* ResultCount, int32_t Index);```
    */
    func MonitorsGetChannel(_ value: Int) -> [Double] {
        return DSS.getDoublePhaseArray(Monitors_Get_Channel, Int32(value))
    }
        
    /**
    Same as Monitors_Get_Channel but using the global buffer interface for results.
    The C function called is: ```void Monitors_Get_Channel_GR(int32_t Index);```
    */
    func MonitorsGetChannelGR(_ value: Int) {
        Monitors_Get_Channel_GR(Int32(value))
    }
        
    /**
    Array of doubles containing frequency values for harmonics mode solutions; Empty for time mode solutions (use dblHour).
    The C function called is: ```void Monitors_Get_dblFreq(double** ResultPtr, int32_t* ResultCount);```
    */
    func MonitorsGetDblFreq() -> [Double] {
        return DSS.getDoubleArray(Monitors_Get_dblFreq)
    }
        
    /**
    Same as Monitors_Get_dblFreq but using the global buffer interface for results.
    The C function called is: ```void Monitors_Get_dblFreq_GR(void);```
    */
    func MonitorsGetDblFreqGR() {
        Monitors_Get_dblFreq_GR()
    }
        
    /**
    Array of doubles containgin time value in hours for time-sampled monitor values; Empty if frequency-sampled values for harmonics solution  (see dblFreq).
    The C function called is: ```void Monitors_Get_dblHour(double** ResultPtr, int32_t* ResultCount);```
    */
    func MonitorsGetDblHour() -> [Double] {
        return DSS.getDoubleArray(Monitors_Get_dblHour)
    }
        
    /**
    Same as Monitors_Get_dblHour but using the global buffer interface for results.
    The C function called is: ```void Monitors_Get_dblHour_GR(void);```
    */
    func MonitorsGetDblHourGR() {
        Monitors_Get_dblHour_GR()
    }
        
    /**
    Monitor File Version (integer).
    The C function called is: ```int32_t Monitors_Get_FileVersion(void);```
    */
    func MonitorsGetFileVersion() -> Int {
        return Int(Monitors_Get_FileVersion())
    }
        
    /**
    Header string;  Array of strings containing Channel names.
    The C function called is: ```void Monitors_Get_Header(char*** ResultPtr, int32_t* ResultCount);```
    */
    func MonitorsGetHeader() -> [String] {
        return DSS.getStringArray(Monitors_Get_Header)
    }
        
    /**
    Same as Monitors_Get_Header but using the global buffer interface for results.
    The C function called is: ```void Monitors_Get_Header_GR(void);```
    */
    func MonitorsGetHeaderGR() {
        Monitors_Get_Header_GR()
    }
        
    /**
    Number of Channels in the active Monitor.
    The C function called is: ```int32_t Monitors_Get_NumChannels(void);```
    */
    func MonitorsGetNumChannels() -> Int {
        return Int(Monitors_Get_NumChannels())
    }
        
    /**
    Size of each record in ByteStream (Integer). Same as NumChannels..
    The C function called is: ```int32_t Monitors_Get_RecordSize(void);```
    */
    func MonitorsGetRecordSize() -> Int {
        return Int(Monitors_Get_RecordSize())
    }
        
    /**
    Full object name of element being monitored..
    The C function called is: ```char* Monitors_Get_Element(void);```
    */
    func MonitorsGetElement() -> String? {
        return DSS.getString(from: Monitors_Get_Element)
    }
        
    /**
    Full object name of element being monitored..
    The C function called is: ```void Monitors_Set_Element(char* Value);```
    */
    func MonitorsSetElement(_ value: String) {
        Monitors_Set_Element(DSS.getPointer(to: value))
    }
        
    /**
    Terminal number of element being monitored.
    The C function called is: ```int32_t Monitors_Get_Terminal(void);```
    */
    func MonitorsGetTerminal() -> Int {
        return Int(Monitors_Get_Terminal())
    }
        
    /**
    Terminal number of element being monitored..
    The C function called is: ```void Monitors_Set_Terminal(int32_t Value);```
    */
    func MonitorsSetTerminal(_ value: Int) {
        Monitors_Set_Terminal(Int32(value))
    }
        
    /**
    String to be parsed. Loading this string resets the Parser to the beginning of the line. Then parse off the tokens in sequence..
    The C function called is: ```char* Parser_Get_CmdString(void);```
    */
    func ParserGetCmdString() -> String? {
        return DSS.getString(from: Parser_Get_CmdString)
    }
        
    /**
    String to be parsed. Loading this string resets the Parser to the beginning of the line. Then parse off the tokens in sequence..
    The C function called is: ```void Parser_Set_CmdString(char* Value);```
    */
    func ParserSetCmdString(_ value: String) {
        Parser_Set_CmdString(DSS.getPointer(to: value))
    }
        
    /**
    Get next token and return tag name (before = sign) if any. See AutoIncrement..
    The C function called is: ```char* Parser_Get_NextParam(void);```
    */
    func ParserGetNextParam() -> String? {
        return DSS.getString(from: Parser_Get_NextParam)
    }
        
    /**
    Default is FALSE. If TRUE parser automatically advances to next token after DblValue, IntValue, or StrValue. Simpler when you don't need to check for parameter names..
    The C function called is: ```uint16_t Parser_Get_AutoIncrement(void);```
    */
    func ParserGetAutoIncrement() -> Int {
        return Int(Parser_Get_AutoIncrement())
    }
        
    /**
    Default is FALSE. If TRUE parser automatically advances to next token after DblValue, IntValue, or StrValue. Simpler when you don't need to check for parameter names..
    The C function called is: ```void Parser_Set_AutoIncrement(uint16_t Value);```
    */
    func ParserSetAutoIncrement(_ value: Int) {
        Parser_Set_AutoIncrement(UInt16(value))
    }
        
    /**
    Return next parameter as a double..
    The C function called is: ```double Parser_Get_DblValue(void);```
    */
    func ParserGetDblValue() -> Double {
        return Parser_Get_DblValue()
    }
        
    /**
    Return next parameter as a long integer..
    The C function called is: ```int32_t Parser_Get_IntValue(void);```
    */
    func ParserGetIntValue() -> Int {
        return Int(Parser_Get_IntValue())
    }
        
    /**
    Return next parameter as a string.
    The C function called is: ```char* Parser_Get_StrValue(void);```
    */
    func ParserGetStrValue() -> String? {
        return DSS.getString(from: Parser_Get_StrValue)
    }
        
    /**
    Get the characters used for White space in the command string.  Default is blank and Tab..
    The C function called is: ```char* Parser_Get_WhiteSpace(void);```
    */
    func ParserGetWhiteSpace() -> String? {
        return DSS.getString(from: Parser_Get_WhiteSpace)
    }
        
    /**
    Set the characters used for White space in the command string.  Default is blank and Tab..
    The C function called is: ```void Parser_Set_WhiteSpace(char* Value);```
    */
    func ParserSetWhiteSpace(_ value: String) {
        Parser_Set_WhiteSpace(DSS.getPointer(to: value))
    }
        
    /**
    Get String containing the the characters for Quoting in OpenDSS scripts. Matching pairs defined in EndQuote. Default is "'([{..
        The C function called is: ```char* Parser_Get_BeginQuote(void);```
        */
        func ParserGetBeginQuote() -> String? {
        return DSS.getString(from: Parser_Get_BeginQuote)
    }
        
    /**
    String containing characters, in order, that match the beginning quote characters in BeginQuote. Default is "')]}.
    The C function called is: ```char* Parser_Get_EndQuote(void);```
    */
    func ParserGetEndQuote() -> String? {
        return DSS.getString(from: Parser_Get_EndQuote)
    }
        
    /**
    Set String containing the the characters for Quoting in OpenDSS scripts. Matching pairs defined in EndQuote. Default is "'([{..
        The C function called is: ```void Parser_Set_BeginQuote(char* Value);```
        */
        func ParserSetBeginQuote(_ value: String) {
        Parser_Set_BeginQuote(DSS.getPointer(to: value))
    }
        
    /**
    String containing characters, in order, that match the beginning quote characters in BeginQuote. Default is "')]}.
    The C function called is: ```void Parser_Set_EndQuote(char* Value);```
    */
    func ParserSetEndQuote(_ value: String) {
        Parser_Set_EndQuote(DSS.getPointer(to: value))
    }
        
    /**
    String defining hard delimiters used to separate token on the command string. Default is , and =. The = separates token name from token value. These override whitesspace to separate tokens..
    The C function called is: ```char* Parser_Get_Delimiters(void);```
    */
    func ParserGetDelimiters() -> String? {
        return DSS.getString(from: Parser_Get_Delimiters)
    }
        
    /**
    String defining hard delimiters used to separate token on the command string. Default is , and =. The = separates token name from token value. These override whitesspace to separate tokens..
    The C function called is: ```void Parser_Set_Delimiters(char* Value);```
    */
    func ParserSetDelimiters(_ value: String) {
        Parser_Set_Delimiters(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Parser_ResetDelimiters(void);```
    */
    func ParserResetDelimiters() {
        Parser_ResetDelimiters()
    }
        
    /**
    Returns token as array of doubles. For parsing quoted array syntax..
    The C function called is: ```void Parser_Get_Vector(double** ResultPtr, int32_t* ResultCount, int32_t ExpectedSize);```
    */
    func ParserGetVector(_ value: Int) -> [Double] {
        return DSS.getDoublePhaseArray(Parser_Get_Vector, Int32(value))
    }
        
    /**
    Same as Parser_Get_Vector but using the global buffer interface for results.
    The C function called is: ```void Parser_Get_Vector_GR(int32_t ExpectedSize);```
    */
    func ParserGetVectorGR(_ value: Int) {
        Parser_Get_Vector_GR(Int32(value))
    }
        
    /**
    Use this property to parse a Matrix token in OpenDSS format.  Returns square matrix of order specified. Order same as default Fortran order: column by column..
    The C function called is: ```void Parser_Get_Matrix(double** ResultPtr, int32_t* ResultCount, int32_t ExpectedOrder);```
    */
    func ParserGetMatrix(_ value: Int) -> [Double] {
        return DSS.getDoublePhaseArray(Parser_Get_Matrix, Int32(value))
    }
        
    /**
    Same as Parser_Get_Matrix but using the global buffer interface for results.
    The C function called is: ```void Parser_Get_Matrix_GR(int32_t ExpectedOrder);```
    */
    func ParserGetMatrixGR(_ value: Int) {
        Parser_Get_Matrix_GR(Int32(value))
    }
        
    /**
    Use this property to parse a matrix token specified in lower triangle form. Symmetry is forced..
    The C function called is: ```void Parser_Get_SymMatrix(double** ResultPtr, int32_t* ResultCount, int32_t ExpectedOrder);```
    */
    func ParserGetSymMatrix(_ value: Int) -> [Double] {
        return DSS.getDoublePhaseArray(Parser_Get_SymMatrix, Int32(value))
    }
        
    /**
    Same as Parser_Get_SymMatrix but using the global buffer interface for results.
    The C function called is: ```void Parser_Get_SymMatrix_GR(int32_t ExpectedOrder);```
    */
    func ParserGetSymMatrixGR(_ value: Int) {
        Parser_Get_SymMatrix_GR(Int32(value))
    }
        
    /**
    Number of PD elements (including disabled elements).
    The C function called is: ```int32_t PDElements_Get_Count(void);```
    */
    func PDElementsGetCount() -> Int {
        return Int(PDElements_Get_Count())
    }
        
    /**
    Get/Set Number of failures per year. For LINE elements: Number of failures per unit length per year..
    The C function called is: ```double PDElements_Get_FaultRate(void);```
    */
    func PDElementsGetFaultRate() -> Double {
        return PDElements_Get_FaultRate()
    }
        
    /**
    Set the first enabled PD element to be the active element.  Returns 0 if none found..
    The C function called is: ```int32_t PDElements_Get_First(void);```
    */
    func PDElementsGetFirst() -> Int {
        return Int(PDElements_Get_First())
    }
        
    /**
    Variant boolean indicating of PD element should be treated as a shunt element rather than a series element. Applies to Capacitor and Reactor elements in particular..
    The C function called is: ```uint16_t PDElements_Get_IsShunt(void);```
    */
    func PDElementsGetIsShunt() -> Int {
        return Int(PDElements_Get_IsShunt())
    }
        
    /**
    Advance to the next PD element in the circuit. Enabled elements only. Returns 0 when no more elements..
    The C function called is: ```int32_t PDElements_Get_Next(void);```
    */
    func PDElementsGetNext() -> Int {
        return Int(PDElements_Get_Next())
    }
        
    /**
    Get/Set percent of faults that are permanent (require repair). Otherwise, fault is assumed to be transient/temporary..
    The C function called is: ```double PDElements_Get_pctPermanent(void);```
    */
    func PDElementsGetPctPermanent() -> Double {
        return PDElements_Get_pctPermanent()
    }
        
    /**
    The C function called is: ```void PDElements_Set_FaultRate(double Value);```
    */
    func PDElementsSetFaultRate(_ value: Double) {
        PDElements_Set_FaultRate(value)
    }
        
    /**
    The C function called is: ```void PDElements_Set_pctPermanent(double Value);```
    */
    func PDElementsSetPctPermanent(_ value: Double) {
        PDElements_Set_pctPermanent(value)
    }
        
    /**
    Get/Set name of active PD Element. Returns null string if active element is not PDElement type..
    The C function called is: ```char* PDElements_Get_Name(void);```
    */
    func PDElementsGetName() -> String? {
        return DSS.getString(from: PDElements_Get_Name)
    }
        
    /**
    The C function called is: ```void PDElements_Set_Name(char* Value);```
    */
    func PDElementsSetName(_ value: String) {
        PDElements_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    accummulated failure rate for this branch on downline.
    The C function called is: ```double PDElements_Get_AccumulatedL(void);```
    */
    func PDElementsGetAccumulatedL() -> Double {
        return PDElements_Get_AccumulatedL()
    }
        
    /**
    Failure rate for this branch. Faults per year including length of line..
    The C function called is: ```double PDElements_Get_Lambda(void);```
    */
    func PDElementsGetLambda() -> Double {
        return PDElements_Get_Lambda()
    }
        
    /**
    Number of customers, this branch.
    The C function called is: ```int32_t PDElements_Get_Numcustomers(void);```
    */
    func PDElementsGetNumcustomers() -> Int {
        return Int(PDElements_Get_Numcustomers())
    }
        
    /**
    Sets the parent PD element to be the active circuit element.  Returns 0 if no more elements upline..
    The C function called is: ```int32_t PDElements_Get_ParentPDElement(void);```
    */
    func PDElementsGetParentPDElement() -> Int {
        return Int(PDElements_Get_ParentPDElement())
    }
        
    /**
    Average repair time for this element in hours.
    The C function called is: ```double PDElements_Get_RepairTime(void);```
    */
    func PDElementsGetRepairTime() -> Double {
        return PDElements_Get_RepairTime()
    }
        
    /**
    Total number of customers from this branch to the end of the zone.
    The C function called is: ```int32_t PDElements_Get_Totalcustomers(void);```
    */
    func PDElementsGetTotalcustomers() -> Int {
        return Int(PDElements_Get_Totalcustomers())
    }
        
    /**
    Number of the terminal of active PD element that is on the "from" side. This is set after the meter zone is determined..
    The C function called is: ```int32_t PDElements_Get_FromTerminal(void);```
    */
    func PDElementsGetFromTerminal() -> Int {
        return Int(PDElements_Get_FromTerminal())
    }
        
    /**
    Total miles of line from this element to the end of the zone. For recloser siting algorithm..
    The C function called is: ```double PDElements_Get_TotalMiles(void);```
    */
    func PDElementsGetTotalMiles() -> Double {
        return PDElements_Get_TotalMiles()
    }
        
    /**
    Integer ID of the feeder section that this PDElement branch is part of.
    The C function called is: ```int32_t PDElements_Get_SectionID(void);```
    */
    func PDElementsGetSectionID() -> Int {
        return Int(PDElements_Get_SectionID())
    }
        
    /**
    Average repair time for this element in hours.
    The C function called is: ```void PDElements_Set_RepairTime(double Value);```
    */
    func PDElementsSetRepairTime(_ value: Double) {
        PDElements_Set_RepairTime(value)
    }
        
    /**
    Vairant array of strings with all PVSystem names.
    The C function called is: ```void PVSystems_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func PVSystemsGetAllNames() -> [String] {
        return DSS.getStringArray(PVSystems_Get_AllNames)
    }
        
    /**
    Same as PVSystems_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void PVSystems_Get_AllNames_GR(void);```
    */
    func PVSystemsGetAllNamesGR() {
        PVSystems_Get_AllNames_GR()
    }
        
    /**
    Variant Array of PVSYSTEM energy meter register names.
    The C function called is: ```void PVSystems_Get_RegisterNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func PVSystemsGetRegisterNames() -> [String] {
        return DSS.getStringArray(PVSystems_Get_RegisterNames)
    }
        
    /**
    Same as PVSystems_Get_RegisterNames but using the global buffer interface for results.
    The C function called is: ```void PVSystems_Get_RegisterNames_GR(void);```
    */
    func PVSystemsGetRegisterNamesGR() {
        PVSystems_Get_RegisterNames_GR()
    }
        
    /**
    Array of doubles containing values in PVSystem registers..
    The C function called is: ```void PVSystems_Get_RegisterValues(double** ResultPtr, int32_t* ResultCount);```
    */
    func PVSystemsGetRegisterValues() -> [Double] {
        return DSS.getDoubleArray(PVSystems_Get_RegisterValues)
    }
        
    /**
    Same as PVSystems_Get_RegisterValues but using the global buffer interface for results.
    The C function called is: ```void PVSystems_Get_RegisterValues_GR(void);```
    */
    func PVSystemsGetRegisterValuesGR() {
        PVSystems_Get_RegisterValues_GR()
    }
        
    /**
    Set first PVSystem active; returns 0 if none..
    The C function called is: ```int32_t PVSystems_Get_First(void);```
    */
    func PVSystemsGetFirst() -> Int {
        return Int(PVSystems_Get_First())
    }
        
    /**
    Sets next PVSystem active; returns 0 if no more..
    The C function called is: ```int32_t PVSystems_Get_Next(void);```
    */
    func PVSystemsGetNext() -> Int {
        return Int(PVSystems_Get_Next())
    }
        
    /**
    Number of PVSystems.
    The C function called is: ```int32_t PVSystems_Get_Count(void);```
    */
    func PVSystemsGetCount() -> Int {
        return Int(PVSystems_Get_Count())
    }
        
    /**
    Get/set active PVSystem by index;  1..Count.
    The C function called is: ```int32_t PVSystems_Get_idx(void);```
    */
    func PVSystemsGetIdx() -> Int {
        return Int(PVSystems_Get_idx())
    }
        
    /**
    Get/Set Active PVSystem by index:  1.. Count.
    The C function called is: ```void PVSystems_Set_idx(int32_t Value);```
    */
    func PVSystemsSetIdx(_ value: Int) {
        PVSystems_Set_idx(Int32(value))
    }
        
    /**
    Get the name of the active PVSystem.
    The C function called is: ```char* PVSystems_Get_Name(void);```
    */
    func PVSystemsGetName() -> String? {
        return DSS.getString(from: PVSystems_Get_Name)
    }
        
    /**
    Set the name of the active PVSystem.
    The C function called is: ```void PVSystems_Set_Name(char* Value);```
    */
    func PVSystemsSetName(_ value: String) {
        PVSystems_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Get the present value of the Irradiance property in W/sq-m.
    The C function called is: ```double PVSystems_Get_Irradiance(void);```
    */
    func PVSystemsGetIrradiance() -> Double {
        return PVSystems_Get_Irradiance()
    }
        
    /**
    Set the present Irradiance value in W/sq-m.
    The C function called is: ```void PVSystems_Set_Irradiance(double Value);```
    */
    func PVSystemsSetIrradiance(_ value: Double) {
        PVSystems_Set_Irradiance(value)
    }
        
    /**
    Get kvar value.
    The C function called is: ```double PVSystems_Get_kvar(void);```
    */
    func PVSystemsGetKvar() -> Double {
        return PVSystems_Get_kvar()
    }
        
    /**
    Get Rated kVA of the PVSystem.
    The C function called is: ```double PVSystems_Get_kVArated(void);```
    */
    func PVSystemsGetKVArated() -> Double {
        return PVSystems_Get_kVArated()
    }
        
    /**
    get kW output.
    The C function called is: ```double PVSystems_Get_kW(void);```
    */
    func PVSystemsGetKW() -> Double {
        return PVSystems_Get_kW()
    }
        
    /**
    Get Power factor.
    The C function called is: ```double PVSystems_Get_PF(void);```
    */
    func PVSystemsGetPF() -> Double {
        return PVSystems_Get_PF()
    }
        
    /**
    Set kva rated.
    The C function called is: ```void PVSystems_Set_kVArated(double Value);```
    */
    func PVSystemsSetKVArated(_ value: Double) {
        PVSystems_Set_kVArated(value)
    }
        
    /**
    Set PF.
    The C function called is: ```void PVSystems_Set_PF(double Value);```
    */
    func PVSystemsSetPF(_ value: Double) {
        PVSystems_Set_PF(value)
    }
        
    /**
    Set kvar output value.
    The C function called is: ```void PVSystems_Set_kvar(double Value);```
    */
    func PVSystemsSetKvar(_ value: Double) {
        PVSystems_Set_kvar(value)
    }
        
    /**
    Array of strings with names of all Reclosers in Active Circuit.
    The C function called is: ```void Reclosers_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func ReclosersGetAllNames() -> [String] {
        return DSS.getStringArray(Reclosers_Get_AllNames)
    }
        
    /**
    Same as Reclosers_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Reclosers_Get_AllNames_GR(void);```
    */
    func ReclosersGetAllNamesGR() {
        Reclosers_Get_AllNames_GR()
    }
        
    /**
    Number of Reclosers in active circuit..
    The C function called is: ```int32_t Reclosers_Get_Count(void);```
    */
    func ReclosersGetCount() -> Int {
        return Int(Reclosers_Get_Count())
    }
        
    /**
    Set First Recloser to be Active Ckt Element. Returns 0 if none..
    The C function called is: ```int32_t Reclosers_Get_First(void);```
    */
    func ReclosersGetFirst() -> Int {
        return Int(Reclosers_Get_First())
    }
        
    /**
    Get Name of active Recloser or set the active Recloser by name..
    The C function called is: ```char* Reclosers_Get_Name(void);```
    */
    func ReclosersGetName() -> String? {
        return DSS.getString(from: Reclosers_Get_Name)
    }
        
    /**
    Iterate to the next recloser in the circuit. Returns zero if no more..
    The C function called is: ```int32_t Reclosers_Get_Next(void);```
    */
    func ReclosersGetNext() -> Int {
        return Int(Reclosers_Get_Next())
    }
        
    /**
    The C function called is: ```void Reclosers_Set_Name(char* Value);```
    */
    func ReclosersSetName(_ value: String) {
        Reclosers_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Terminal number of Monitored object for the Recloser.
    The C function called is: ```int32_t Reclosers_Get_MonitoredTerm(void);```
    */
    func ReclosersGetMonitoredTerm() -> Int {
        return Int(Reclosers_Get_MonitoredTerm())
    }
        
    /**
    The C function called is: ```void Reclosers_Set_MonitoredTerm(int32_t Value);```
    */
    func ReclosersSetMonitoredTerm(_ value: Int) {
        Reclosers_Set_MonitoredTerm(Int32(value))
    }
        
    /**
    Full name of the circuit element that is being switched by the Recloser..
    The C function called is: ```char* Reclosers_Get_SwitchedObj(void);```
    */
    func ReclosersGetSwitchedObj() -> String? {
        return DSS.getString(from: Reclosers_Get_SwitchedObj)
    }
        
    /**
    The C function called is: ```void Reclosers_Set_SwitchedObj(char* Value);```
    */
    func ReclosersSetSwitchedObj(_ value: String) {
        Reclosers_Set_SwitchedObj(DSS.getPointer(to: value))
    }
        
    /**
    Full name of object this Recloser is monitoring..
    The C function called is: ```char* Reclosers_Get_MonitoredObj(void);```
    */
    func ReclosersGetMonitoredObj() -> String? {
        return DSS.getString(from: Reclosers_Get_MonitoredObj)
    }
        
    /**
    Terminal number of the controlled device being switched by the Recloser.
    The C function called is: ```int32_t Reclosers_Get_SwitchedTerm(void);```
    */
    func ReclosersGetSwitchedTerm() -> Int {
        return Int(Reclosers_Get_SwitchedTerm())
    }
        
    /**
    Set monitored object by full name..
    The C function called is: ```void Reclosers_Set_MonitoredObj(char* Value);```
    */
    func ReclosersSetMonitoredObj(_ value: String) {
        Reclosers_Set_MonitoredObj(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Reclosers_Set_SwitchedTerm(int32_t Value);```
    */
    func ReclosersSetSwitchedTerm(_ value: Int) {
        Reclosers_Set_SwitchedTerm(Int32(value))
    }
        
    /**
    Number of fast shots.
    The C function called is: ```int32_t Reclosers_Get_NumFast(void);```
    */
    func ReclosersGetNumFast() -> Int {
        return Int(Reclosers_Get_NumFast())
    }
        
    /**
    Variant Array of Doubles: reclose intervals, s, between shots..
    The C function called is: ```void Reclosers_Get_RecloseIntervals(double** ResultPtr, int32_t* ResultCount);```
    */
    func ReclosersGetRecloseIntervals() -> [Double] {
        return DSS.getDoubleArray(Reclosers_Get_RecloseIntervals)
    }
        
    /**
    Same as Reclosers_Get_RecloseIntervals but using the global buffer interface for results.
    The C function called is: ```void Reclosers_Get_RecloseIntervals_GR(void);```
    */
    func ReclosersGetRecloseIntervalsGR() {
        Reclosers_Get_RecloseIntervals_GR()
    }
        
    /**
    Number of shots to lockout (fast + delayed).
    The C function called is: ```int32_t Reclosers_Get_Shots(void);```
    */
    func ReclosersGetShots() -> Int {
        return Int(Reclosers_Get_Shots())
    }
        
    /**
    The C function called is: ```void Reclosers_Set_NumFast(int32_t Value);```
    */
    func ReclosersSetNumFast(_ value: Int) {
        Reclosers_Set_NumFast(Int32(value))
    }
        
    /**
    The C function called is: ```void Reclosers_Set_Shots(int32_t Value);```
    */
    func ReclosersSetShots(_ value: Int) {
        Reclosers_Set_Shots(Int32(value))
    }
        
    /**
    Phase trip curve multiplier or actual amps.
    The C function called is: ```double Reclosers_Get_PhaseTrip(void);```
    */
    func ReclosersGetPhaseTrip() -> Double {
        return Reclosers_Get_PhaseTrip()
    }
        
    /**
    Phase Trip multiplier or actual amps.
    The C function called is: ```void Reclosers_Set_PhaseTrip(double Value);```
    */
    func ReclosersSetPhaseTrip(_ value: Double) {
        Reclosers_Set_PhaseTrip(value)
    }
        
    /**
    Ground (3I0) instantaneous trip setting - curve multipler or actual amps..
    The C function called is: ```double Reclosers_Get_GroundInst(void);```
    */
    func ReclosersGetGroundInst() -> Double {
        return Reclosers_Get_GroundInst()
    }
        
    /**
    Ground (3I0) trip multiplier or actual amps.
    The C function called is: ```double Reclosers_Get_GroundTrip(void);```
    */
    func ReclosersGetGroundTrip() -> Double {
        return Reclosers_Get_GroundTrip()
    }
        
    /**
    Phase instantaneous curve multipler or actual amps.
    The C function called is: ```double Reclosers_Get_PhaseInst(void);```
    */
    func ReclosersGetPhaseInst() -> Double {
        return Reclosers_Get_PhaseInst()
    }
        
    /**
    Ground (3I0) trip instantaneous multiplier or actual amps.
    The C function called is: ```void Reclosers_Set_GroundInst(double Value);```
    */
    func ReclosersSetGroundInst(_ value: Double) {
        Reclosers_Set_GroundInst(value)
    }
        
    /**
    The C function called is: ```void Reclosers_Set_GroundTrip(double Value);```
    */
    func ReclosersSetGroundTrip(_ value: Double) {
        Reclosers_Set_GroundTrip(value)
    }
        
    /**
    The C function called is: ```void Reclosers_Set_PhaseInst(double Value);```
    */
    func ReclosersSetPhaseInst(_ value: Double) {
        Reclosers_Set_PhaseInst(value)
    }
        
    /**
    The C function called is: ```void Reclosers_Close(void);```
    */
    func ReclosersClose() {
        Reclosers_Close()
    }
        
    /**
    The C function called is: ```void Reclosers_Open(void);```
    */
    func ReclosersOpen() {
        Reclosers_Open()
    }
        
    /**
    Get/Set the active Recloser by index into the recloser list.  1..Count.
    The C function called is: ```int32_t Reclosers_Get_idx(void);```
    */
    func ReclosersGetIdx() -> Int {
        return Int(Reclosers_Get_idx())
    }
        
    /**
    Get/Set the Active Recloser by index into the recloser list. 1..Count.
    The C function called is: ```void Reclosers_Set_idx(int32_t Value);```
    */
    func ReclosersSetIdx(_ value: Int) {
        Reclosers_Set_idx(Int32(value))
    }
        
    /**
    Array of strings containing all RegControl names.
    The C function called is: ```void RegControls_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func RegControlsGetAllNames() -> [String] {
        return DSS.getStringArray(RegControls_Get_AllNames)
    }
        
    /**
    Same as RegControls_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void RegControls_Get_AllNames_GR(void);```
    */
    func RegControlsGetAllNamesGR() {
        RegControls_Get_AllNames_GR()
    }
        
    /**
    CT primary ampere rating (secondary is 0.2 amperes).
    The C function called is: ```double RegControls_Get_CTPrimary(void);```
    */
    func RegControlsGetCTPrimary() -> Double {
        return RegControls_Get_CTPrimary()
    }
        
    /**
    Time delay [s] after arming before the first tap change. Control may reset before actually changing taps..
    The C function called is: ```double RegControls_Get_Delay(void);```
    */
    func RegControlsGetDelay() -> Double {
        return RegControls_Get_Delay()
    }
        
    /**
    Sets the first RegControl active. Returns 0 if none..
    The C function called is: ```int32_t RegControls_Get_First(void);```
    */
    func RegControlsGetFirst() -> Int {
        return Int(RegControls_Get_First())
    }
        
    /**
    Regulation bandwidth in forward direciton, centered on Vreg.
    The C function called is: ```double RegControls_Get_ForwardBand(void);```
    */
    func RegControlsGetForwardBand() -> Double {
        return RegControls_Get_ForwardBand()
    }
        
    /**
    LDC R setting in Volts.
    The C function called is: ```double RegControls_Get_ForwardR(void);```
    */
    func RegControlsGetForwardR() -> Double {
        return RegControls_Get_ForwardR()
    }
        
    /**
    Target voltage in the forward direction, on PT secondary base..
    The C function called is: ```double RegControls_Get_ForwardVreg(void);```
    */
    func RegControlsGetForwardVreg() -> Double {
        return RegControls_Get_ForwardVreg()
    }
        
    /**
    LDC X setting in Volts.
    The C function called is: ```double RegControls_Get_ForwardX(void);```
    */
    func RegControlsGetForwardX() -> Double {
        return RegControls_Get_ForwardX()
    }
        
    /**
    Time delay is inversely adjsuted, proportinal to the amount of voltage outside the regulating band..
    The C function called is: ```uint16_t RegControls_Get_IsInverseTime(void);```
    */
    func RegControlsGetIsInverseTime() -> Int {
        return Int(RegControls_Get_IsInverseTime())
    }
        
    /**
    Regulator can use different settings in the reverse direction.  Usually not applicable to substation transformers..
    The C function called is: ```uint16_t RegControls_Get_IsReversible(void);```
    */
    func RegControlsGetIsReversible() -> Int {
        return Int(RegControls_Get_IsReversible())
    }
        
    /**
    Maximum tap change per iteration in STATIC solution mode. 1 is more realistic, 16 is the default for a faster soluiton..
    The C function called is: ```int32_t RegControls_Get_MaxTapChange(void);```
    */
    func RegControlsGetMaxTapChange() -> Int {
        return Int(RegControls_Get_MaxTapChange())
    }
        
    /**
    Name of a remote regulated bus, in lieu of LDC settings.
    The C function called is: ```char* RegControls_Get_MonitoredBus(void);```
    */
    func RegControlsGetMonitoredBus() -> String? {
        return DSS.getString(from: RegControls_Get_MonitoredBus)
    }
        
    /**
    Get/set Active RegControl  name.
    The C function called is: ```char* RegControls_Get_Name(void);```
    */
    func RegControlsGetName() -> String? {
        return DSS.getString(from: RegControls_Get_Name)
    }
        
    /**
    Sets the next RegControl active. Returns 0 if none..
    The C function called is: ```int32_t RegControls_Get_Next(void);```
    */
    func RegControlsGetNext() -> Int {
        return Int(RegControls_Get_Next())
    }
        
    /**
    PT ratio for voltage control settings.
    The C function called is: ```double RegControls_Get_PTratio(void);```
    */
    func RegControlsGetPTratio() -> Double {
        return RegControls_Get_PTratio()
    }
        
    /**
    Bandwidth in reverse direction, centered on reverse Vreg..
    The C function called is: ```double RegControls_Get_ReverseBand(void);```
    */
    func RegControlsGetReverseBand() -> Double {
        return RegControls_Get_ReverseBand()
    }
        
    /**
    Reverse LDC R setting in Volts..
    The C function called is: ```double RegControls_Get_ReverseR(void);```
    */
    func RegControlsGetReverseR() -> Double {
        return RegControls_Get_ReverseR()
    }
        
    /**
    Target voltage in the revese direction, on PT secondary base..
    The C function called is: ```double RegControls_Get_ReverseVreg(void);```
    */
    func RegControlsGetReverseVreg() -> Double {
        return RegControls_Get_ReverseVreg()
    }
        
    /**
    Reverse LDC X setting in volts..
    The C function called is: ```double RegControls_Get_ReverseX(void);```
    */
    func RegControlsGetReverseX() -> Double {
        return RegControls_Get_ReverseX()
    }
        
    /**
    Time delay [s] for subsequent tap changes in a set. Control may reset before actually changing taps..
    The C function called is: ```double RegControls_Get_TapDelay(void);```
    */
    func RegControlsGetTapDelay() -> Double {
        return RegControls_Get_TapDelay()
    }
        
    /**
    Tapped winding number.
    The C function called is: ```int32_t RegControls_Get_TapWinding(void);```
    */
    func RegControlsGetTapWinding() -> Int {
        return Int(RegControls_Get_TapWinding())
    }
        
    /**
    Name of the transformer this regulator controls.
    The C function called is: ```char* RegControls_Get_Transformer(void);```
    */
    func RegControlsGetTransformer() -> String? {
        return DSS.getString(from: RegControls_Get_Transformer)
    }
        
    /**
    First house voltage limit on PT secondary base.  Setting to 0 disables this function..
    The C function called is: ```double RegControls_Get_VoltageLimit(void);```
    */
    func RegControlsGetVoltageLimit() -> Double {
        return RegControls_Get_VoltageLimit()
    }
        
    /**
    Winding number for PT and CT connections.
    The C function called is: ```int32_t RegControls_Get_Winding(void);```
    */
    func RegControlsGetWinding() -> Int {
        return Int(RegControls_Get_Winding())
    }
        
    /**
    The C function called is: ```int32_t RegControls_Get_TapNumber(void);```
    */
    func RegControlsGetTapNumber() -> Int {
        return Int(RegControls_Get_TapNumber())
    }
        
    /**
    CT primary ampere rating (secondary is 0.2 amperes).
    The C function called is: ```void RegControls_Set_CTPrimary(double Value);```
    */
    func RegControlsSetCTPrimary(_ value: Double) {
        RegControls_Set_CTPrimary(value)
    }
        
    /**
    Time delay [s] after arming before the first tap change. Control may reset before actually changing taps..
    The C function called is: ```void RegControls_Set_Delay(double Value);```
    */
    func RegControlsSetDelay(_ value: Double) {
        RegControls_Set_Delay(value)
    }
        
    /**
    Regulation bandwidth in forward direciton, centered on Vreg.
    The C function called is: ```void RegControls_Set_ForwardBand(double Value);```
    */
    func RegControlsSetForwardBand(_ value: Double) {
        RegControls_Set_ForwardBand(value)
    }
        
    /**
    LDC R setting in Volts.
    The C function called is: ```void RegControls_Set_ForwardR(double Value);```
    */
    func RegControlsSetForwardR(_ value: Double) {
        RegControls_Set_ForwardR(value)
    }
        
    /**
    Target voltage in the forward direction, on PT secondary base..
    The C function called is: ```void RegControls_Set_ForwardVreg(double Value);```
    */
    func RegControlsSetForwardVreg(_ value: Double) {
        RegControls_Set_ForwardVreg(value)
    }
        
    /**
    LDC X setting in Volts.
    The C function called is: ```void RegControls_Set_ForwardX(double Value);```
    */
    func RegControlsSetForwardX(_ value: Double) {
        RegControls_Set_ForwardX(value)
    }
        
    /**
    Time delay is inversely adjsuted, proportinal to the amount of voltage outside the regulating band..
    The C function called is: ```void RegControls_Set_IsInverseTime(uint16_t Value);```
    */
    func RegControlsSetIsInverseTime(_ value: Int) {
        RegControls_Set_IsInverseTime(UInt16(value))
    }
        
    /**
    Regulator can use different settings in the reverse direction.  Usually not applicable to substation transformers..
    The C function called is: ```void RegControls_Set_IsReversible(uint16_t Value);```
    */
    func RegControlsSetIsReversible(_ value: Int) {
        RegControls_Set_IsReversible(UInt16(value))
    }
        
    /**
    Maximum tap change per iteration in STATIC solution mode. 1 is more realistic, 16 is the default for a faster soluiton..
    The C function called is: ```void RegControls_Set_MaxTapChange(int32_t Value);```
    */
    func RegControlsSetMaxTapChange(_ value: Int) {
        RegControls_Set_MaxTapChange(Int32(value))
    }
        
    /**
    Name of a remote regulated bus, in lieu of LDC settings.
    The C function called is: ```void RegControls_Set_MonitoredBus(char* Value);```
    */
    func RegControlsSetMonitoredBus(_ value: String) {
        RegControls_Set_MonitoredBus(DSS.getPointer(to: value))
    }
        
    /**
    Sets a RegControl active by name.
    The C function called is: ```void RegControls_Set_Name(char* Value);```
    */
    func RegControlsSetName(_ value: String) {
        RegControls_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    PT ratio for voltage control settings.
    The C function called is: ```void RegControls_Set_PTratio(double Value);```
    */
    func RegControlsSetPTratio(_ value: Double) {
        RegControls_Set_PTratio(value)
    }
        
    /**
    Bandwidth in reverse direction, centered on reverse Vreg..
    The C function called is: ```void RegControls_Set_ReverseBand(double Value);```
    */
    func RegControlsSetReverseBand(_ value: Double) {
        RegControls_Set_ReverseBand(value)
    }
        
    /**
    Reverse LDC R setting in Volts..
    The C function called is: ```void RegControls_Set_ReverseR(double Value);```
    */
    func RegControlsSetReverseR(_ value: Double) {
        RegControls_Set_ReverseR(value)
    }
        
    /**
    Target voltage in the revese direction, on PT secondary base..
    The C function called is: ```void RegControls_Set_ReverseVreg(double Value);```
    */
    func RegControlsSetReverseVreg(_ value: Double) {
        RegControls_Set_ReverseVreg(value)
    }
        
    /**
    Reverse LDC X setting in volts..
    The C function called is: ```void RegControls_Set_ReverseX(double Value);```
    */
    func RegControlsSetReverseX(_ value: Double) {
        RegControls_Set_ReverseX(value)
    }
        
    /**
    Time delay [s] for subsequent tap changes in a set. Control may reset before actually changing taps..
    The C function called is: ```void RegControls_Set_TapDelay(double Value);```
    */
    func RegControlsSetTapDelay(_ value: Double) {
        RegControls_Set_TapDelay(value)
    }
        
    /**
    Tapped winding number.
    The C function called is: ```void RegControls_Set_TapWinding(int32_t Value);```
    */
    func RegControlsSetTapWinding(_ value: Int) {
        RegControls_Set_TapWinding(Int32(value))
    }
        
    /**
    Name of the transformer this regulator controls.
    The C function called is: ```void RegControls_Set_Transformer(char* Value);```
    */
    func RegControlsSetTransformer(_ value: String) {
        RegControls_Set_Transformer(DSS.getPointer(to: value))
    }
        
    /**
    First house voltage limit on PT secondary base.  Setting to 0 disables this function..
    The C function called is: ```void RegControls_Set_VoltageLimit(double Value);```
    */
    func RegControlsSetVoltageLimit(_ value: Double) {
        RegControls_Set_VoltageLimit(value)
    }
        
    /**
    Winding number for PT and CT connections.
    The C function called is: ```void RegControls_Set_Winding(int32_t Value);```
    */
    func RegControlsSetWinding(_ value: Int) {
        RegControls_Set_Winding(Int32(value))
    }
        
    /**
    Integer number of the tap that the controlled transformer winding is currentliy on..
    The C function called is: ```void RegControls_Set_TapNumber(int32_t Value);```
    */
    func RegControlsSetTapNumber(_ value: Int) {
        RegControls_Set_TapNumber(Int32(value))
    }
        
    /**
    Number of RegControl objects in Active Circuit.
    The C function called is: ```int32_t RegControls_Get_Count(void);```
    */
    func RegControlsGetCount() -> Int {
        return Int(RegControls_Get_Count())
    }
        
    /**
    The C function called is: ```void RegControls_Reset(void);```
    */
    func RegControlsReset() {
        RegControls_Reset()
    }
        
    /**
    Array of strings containing names of all Relay elements.
    The C function called is: ```void Relays_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func RelaysGetAllNames() -> [String] {
        return DSS.getStringArray(Relays_Get_AllNames)
    }
        
    /**
    Same as Relays_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Relays_Get_AllNames_GR(void);```
    */
    func RelaysGetAllNamesGR() {
        Relays_Get_AllNames_GR()
    }
        
    /**
    Number of Relays in circuit.
    The C function called is: ```int32_t Relays_Get_Count(void);```
    */
    func RelaysGetCount() -> Int {
        return Int(Relays_Get_Count())
    }
        
    /**
    Set First Relay active. If none, returns 0..
    The C function called is: ```int32_t Relays_Get_First(void);```
    */
    func RelaysGetFirst() -> Int {
        return Int(Relays_Get_First())
    }
        
    /**
    Get name of active relay..
    The C function called is: ```char* Relays_Get_Name(void);```
    */
    func RelaysGetName() -> String? {
        return DSS.getString(from: Relays_Get_Name)
    }
        
    /**
    Advance to next Relay object. Returns 0 when no more relays..
    The C function called is: ```int32_t Relays_Get_Next(void);```
    */
    func RelaysGetNext() -> Int {
        return Int(Relays_Get_Next())
    }
        
    /**
    Set Relay active by name.
    The C function called is: ```void Relays_Set_Name(char* Value);```
    */
    func RelaysSetName(_ value: String) {
        Relays_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Full name of object this Relay is monitoring..
    The C function called is: ```char* Relays_Get_MonitoredObj(void);```
    */
    func RelaysGetMonitoredObj() -> String? {
        return DSS.getString(from: Relays_Get_MonitoredObj)
    }
        
    /**
    The C function called is: ```void Relays_Set_MonitoredObj(char* Value);```
    */
    func RelaysSetMonitoredObj(_ value: String) {
        Relays_Set_MonitoredObj(DSS.getPointer(to: value))
    }
        
    /**
    Number of terminal of monitored element that this Relay is monitoring..
    The C function called is: ```int32_t Relays_Get_MonitoredTerm(void);```
    */
    func RelaysGetMonitoredTerm() -> Int {
        return Int(Relays_Get_MonitoredTerm())
    }
        
    /**
    Full name of element that will be switched when relay trips..
    The C function called is: ```char* Relays_Get_SwitchedObj(void);```
    */
    func RelaysGetSwitchedObj() -> String? {
        return DSS.getString(from: Relays_Get_SwitchedObj)
    }
        
    /**
    The C function called is: ```void Relays_Set_MonitoredTerm(int32_t Value);```
    */
    func RelaysSetMonitoredTerm(_ value: Int) {
        Relays_Set_MonitoredTerm(Int32(value))
    }
        
    /**
    The C function called is: ```void Relays_Set_SwitchedObj(char* Value);```
    */
    func RelaysSetSwitchedObj(_ value: String) {
        Relays_Set_SwitchedObj(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```int32_t Relays_Get_SwitchedTerm(void);```
    */
    func RelaysGetSwitchedTerm() -> Int {
        return Int(Relays_Get_SwitchedTerm())
    }
        
    /**
    Terminal number of the switched object that will be opened when the relay trips..
    The C function called is: ```void Relays_Set_SwitchedTerm(int32_t Value);```
    */
    func RelaysSetSwitchedTerm(_ value: Int) {
        Relays_Set_SwitchedTerm(Int32(value))
    }
        
    /**
    Get/Set active Relay by index into the Relay list. 1..Count.
    The C function called is: ```int32_t Relays_Get_idx(void);```
    */
    func RelaysGetIdx() -> Int {
        return Int(Relays_Get_idx())
    }
        
    /**
    Get/Set Relay active by index into relay list. 1..Count.
    The C function called is: ```void Relays_Set_idx(int32_t Value);```
    */
    func RelaysSetIdx(_ value: Int) {
        Relays_Set_idx(Int32(value))
    }
        
    /**
    Array of Sensor names..
    The C function called is: ```void Sensors_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func SensorsGetAllNames() -> [String] {
        return DSS.getStringArray(Sensors_Get_AllNames)
    }
        
    /**
    Same as Sensors_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Sensors_Get_AllNames_GR(void);```
    */
    func SensorsGetAllNamesGR() {
        Sensors_Get_AllNames_GR()
    }
        
    /**
    Number of Sensors in Active Circuit..
    The C function called is: ```int32_t Sensors_Get_Count(void);```
    */
    func SensorsGetCount() -> Int {
        return Int(Sensors_Get_Count())
    }
        
    /**
    Array of doubles for the line current measurements; don't use with kWS and kVARS..
    The C function called is: ```void Sensors_Get_Currents(double** ResultPtr, int32_t* ResultCount);```
    */
    func SensorsGetCurrents() -> [Double] {
        return DSS.getDoubleArray(Sensors_Get_Currents)
    }
        
    /**
    Same as Sensors_Get_Currents but using the global buffer interface for results.
    The C function called is: ```void Sensors_Get_Currents_GR(void);```
    */
    func SensorsGetCurrentsGR() {
        Sensors_Get_Currents_GR()
    }
        
    /**
    Sets the first sensor active. Returns 0 if none..
    The C function called is: ```int32_t Sensors_Get_First(void);```
    */
    func SensorsGetFirst() -> Int {
        return Int(Sensors_Get_First())
    }
        
    /**
    True if measured voltages are line-line. Currents are always line currents..
    The C function called is: ```uint16_t Sensors_Get_IsDelta(void);```
    */
    func SensorsGetIsDelta() -> Int {
        return Int(Sensors_Get_IsDelta())
    }
        
    /**
    Array of doubles for Q measurements. Overwrites Currents with a new estimate using kWS..
    The C function called is: ```void Sensors_Get_kVARS(double** ResultPtr, int32_t* ResultCount);```
    */
    func SensorsGetKVARS() -> [Double] {
        return DSS.getDoubleArray(Sensors_Get_kVARS)
    }
        
    /**
    Same as Sensors_Get_kVARS but using the global buffer interface for results.
    The C function called is: ```void Sensors_Get_kVARS_GR(void);```
    */
    func SensorsGetKVARSGR() {
        Sensors_Get_kVARS_GR()
    }
        
    /**
    Array of doubles for the LL or LN (depending on Delta connection) voltage measurements..
    The C function called is: ```void Sensors_Get_kVS(double** ResultPtr, int32_t* ResultCount);```
    */
    func SensorsGetKVS() -> [Double] {
        return DSS.getDoubleArray(Sensors_Get_kVS)
    }
        
    /**
    Same as Sensors_Get_kVS but using the global buffer interface for results.
    The C function called is: ```void Sensors_Get_kVS_GR(void);```
    */
    func SensorsGetKVSGR() {
        Sensors_Get_kVS_GR()
    }
        
    /**
    Array of doubles for P measurements. Overwrites Currents with a new estimate using kVARS..
    The C function called is: ```void Sensors_Get_kWS(double** ResultPtr, int32_t* ResultCount);```
    */
    func SensorsGetKWS() -> [Double] {
        return DSS.getDoubleArray(Sensors_Get_kWS)
    }
        
    /**
    Same as Sensors_Get_kWS but using the global buffer interface for results.
    The C function called is: ```void Sensors_Get_kWS_GR(void);```
    */
    func SensorsGetKWSGR() {
        Sensors_Get_kWS_GR()
    }
        
    /**
    Full Name of the measured element.
    The C function called is: ```char* Sensors_Get_MeteredElement(void);```
    */
    func SensorsGetMeteredElement() -> String? {
        return DSS.getString(from: Sensors_Get_MeteredElement)
    }
        
    /**
    Number of the measured terminal in the measured element..
    The C function called is: ```int32_t Sensors_Get_MeteredTerminal(void);```
    */
    func SensorsGetMeteredTerminal() -> Int {
        return Int(Sensors_Get_MeteredTerminal())
    }
        
    /**
    Name of the active sensor..
    The C function called is: ```char* Sensors_Get_Name(void);```
    */
    func SensorsGetName() -> String? {
        return DSS.getString(from: Sensors_Get_Name)
    }
        
    /**
    Sets the next Sensor active. Returns 0 if no more..
    The C function called is: ```int32_t Sensors_Get_Next(void);```
    */
    func SensorsGetNext() -> Int {
        return Int(Sensors_Get_Next())
    }
        
    /**
    Assumed percent error in the Sensor measurement. Default is 1..
    The C function called is: ```double Sensors_Get_PctError(void);```
    */
    func SensorsGetPctError() -> Double {
        return Sensors_Get_PctError()
    }
        
    /**
    True if voltage measurements are 1-3, 3-2, 2-1..
    The C function called is: ```uint16_t Sensors_Get_ReverseDelta(void);```
    */
    func SensorsGetReverseDelta() -> Int {
        return Int(Sensors_Get_ReverseDelta())
    }
        
    /**
    Weighting factor for this Sensor measurement with respect to other Sensors. Default is 1..
    The C function called is: ```double Sensors_Get_Weight(void);```
    */
    func SensorsGetWeight() -> Double {
        return Sensors_Get_Weight()
    }
        
    /**
    The C function called is: ```void Sensors_Reset(void);```
    */
    func SensorsReset() {
        Sensors_Reset()
    }
        
    /**
    The C function called is: ```void Sensors_ResetAll(void);```
    */
    func SensorsResetAll() {
        Sensors_ResetAll()
    }
        
    /**
    The C function called is: ```void Sensors_Set_Currents(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void Sensors_Set_IsDelta(uint16_t Value);```
    */
    func SensorsSetIsDelta(_ value: Int) {
        Sensors_Set_IsDelta(UInt16(value))
    }
        
    /**
    The C function called is: ```void Sensors_Set_kVARS(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void Sensors_Set_kVS(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void Sensors_Set_kWS(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void Sensors_Set_MeteredElement(char* Value);```
    */
    func SensorsSetMeteredElement(_ value: String) {
        Sensors_Set_MeteredElement(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Sensors_Set_MeteredTerminal(int32_t Value);```
    */
    func SensorsSetMeteredTerminal(_ value: Int) {
        Sensors_Set_MeteredTerminal(Int32(value))
    }
        
    /**
    Set the active Sensor by name..
    The C function called is: ```void Sensors_Set_Name(char* Value);```
    */
    func SensorsSetName(_ value: String) {
        Sensors_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Sensors_Set_PctError(double Value);```
    */
    func SensorsSetPctError(_ value: Double) {
        Sensors_Set_PctError(value)
    }
        
    /**
    The C function called is: ```void Sensors_Set_ReverseDelta(uint16_t Value);```
    */
    func SensorsSetReverseDelta(_ value: Int) {
        Sensors_Set_ReverseDelta(UInt16(value))
    }
        
    /**
    The C function called is: ```void Sensors_Set_Weight(double Value);```
    */
    func SensorsSetWeight(_ value: Double) {
        Sensors_Set_Weight(value)
    }
        
    /**
    Voltage base for the sensor measurements. LL for 2 and 3-phase sensors, LN for 1-phase sensors..
    The C function called is: ```double Sensors_Get_kVbase(void);```
    */
    func SensorsGetKVbase() -> Double {
        return Sensors_Get_kVbase()
    }
        
    /**
    The C function called is: ```void Sensors_Set_kVbase(double Value);```
    */
    func SensorsSetKVbase(_ value: Double) {
        Sensors_Set_kVbase(value)
    }
        
    /**
    {True | False*} Designates whether to allow duplicate names of objects.
        The C function called is: ```uint16_t Settings_Get_AllowDuplicates(void);```
        */
        func SettingsGetAllowDuplicates() -> Int {
        return Int(Settings_Get_AllowDuplicates())
    }
        
    /**
    List of Buses or (File=xxxx) syntax for the AutoAdd solution mode..
    The C function called is: ```char* Settings_Get_AutoBusList(void);```
    */
    func SettingsGetAutoBusList() -> String? {
        return DSS.getString(from: Settings_Get_AutoBusList)
    }
        
    /**
    {dssMultiphase * | dssPositiveSeq} IIndicate if the circuit model is positive sequence..
        The C function called is: ```int32_t Settings_Get_CktModel(void);```
        */
        func SettingsGetCktModel() -> Int {
        return Int(Settings_Get_CktModel())
    }
        
    /**
    Per Unit maximum voltage for Emergency conditions..
    The C function called is: ```double Settings_Get_EmergVmaxpu(void);```
    */
    func SettingsGetEmergVmaxpu() -> Double {
        return Settings_Get_EmergVmaxpu()
    }
        
    /**
    Per Unit minimum voltage for Emergency conditions..
    The C function called is: ```double Settings_Get_EmergVminpu(void);```
    */
    func SettingsGetEmergVminpu() -> Double {
        return Settings_Get_EmergVminpu()
    }
        
    /**
    Per Unit maximum voltage for Normal conditions..
    The C function called is: ```double Settings_Get_NormVmaxpu(void);```
    */
    func SettingsGetNormVmaxpu() -> Double {
        return Settings_Get_NormVmaxpu()
    }
        
    /**
    Per Unit minimum voltage for Normal conditions..
    The C function called is: ```double Settings_Get_NormVminpu(void);```
    */
    func SettingsGetNormVminpu() -> Double {
        return Settings_Get_NormVminpu()
    }
        
    /**
    {True | False*}  Locks Zones on energy meters to prevent rebuilding if a circuit change occurs..
        The C function called is: ```uint16_t Settings_Get_ZoneLock(void);```
        */
        func SettingsGetZoneLock() -> Int {
        return Int(Settings_Get_ZoneLock())
    }
        
    /**
    Sets all load allocation factors for all loads defined by XFKVA property to this value..
    The C function called is: ```void Settings_Set_AllocationFactors(double Value);```
    */
    func SettingsSetAllocationFactors(_ value: Double) {
        Settings_Set_AllocationFactors(value)
    }
        
    /**
    {True | False*} Designates whether to allow duplicate names of objects.
        The C function called is: ```void Settings_Set_AllowDuplicates(uint16_t Value);```
        */
        func SettingsSetAllowDuplicates(_ value: Int) {
        Settings_Set_AllowDuplicates(UInt16(value))
    }
        
    /**
    List of Buses or (File=xxxx) syntax for the AutoAdd solution mode..
    The C function called is: ```void Settings_Set_AutoBusList(char* Value);```
    */
    func SettingsSetAutoBusList(_ value: String) {
        Settings_Set_AutoBusList(DSS.getPointer(to: value))
    }
        
    /**
    {dssMultiphase * | dssPositiveSeq} IIndicate if the circuit model is positive sequence..
        The C function called is: ```void Settings_Set_CktModel(int32_t Value);```
        */
        func SettingsSetCktModel(_ value: Int) {
        Settings_Set_CktModel(Int32(value))
    }
        
    /**
    Per Unit maximum voltage for Emergency conditions..
    The C function called is: ```void Settings_Set_EmergVmaxpu(double Value);```
    */
    func SettingsSetEmergVmaxpu(_ value: Double) {
        Settings_Set_EmergVmaxpu(value)
    }
        
    /**
    Per Unit minimum voltage for Emergency conditions..
    The C function called is: ```void Settings_Set_EmergVminpu(double Value);```
    */
    func SettingsSetEmergVminpu(_ value: Double) {
        Settings_Set_EmergVminpu(value)
    }
        
    /**
    Per Unit maximum voltage for Normal conditions..
    The C function called is: ```void Settings_Set_NormVmaxpu(double Value);```
    */
    func SettingsSetNormVmaxpu(_ value: Double) {
        Settings_Set_NormVmaxpu(value)
    }
        
    /**
    Per Unit minimum voltage for Normal conditions..
    The C function called is: ```void Settings_Set_NormVminpu(double Value);```
    */
    func SettingsSetNormVminpu(_ value: Double) {
        Settings_Set_NormVminpu(value)
    }
        
    /**
    {True | False*}  Locks Zones on energy meters to prevent rebuilding if a circuit change occurs..
        The C function called is: ```void Settings_Set_ZoneLock(uint16_t Value);```
        */
        func SettingsSetZoneLock(_ value: Int) {
        Settings_Set_ZoneLock(UInt16(value))
    }
        
    /**
    Integer array defining which energy meter registers to use for computing losses.
    The C function called is: ```void Settings_Get_LossRegs(int32_t** ResultPtr, int32_t* ResultCount);```
    */
    func SettingsGetLossRegs() -> [Int] {
        return DSS.getIntArray(Settings_Get_LossRegs)
    }
        
    /**
    Same as Settings_Get_LossRegs but using the global buffer interface for results.
    The C function called is: ```void Settings_Get_LossRegs_GR(void);```
    */
    func SettingsGetLossRegsGR() {
        Settings_Get_LossRegs_GR()
    }
        
    /**
    Weighting factor applied to Loss register values..
    The C function called is: ```double Settings_Get_LossWeight(void);```
    */
    func SettingsGetLossWeight() -> Double {
        return Settings_Get_LossWeight()
    }
        
    /**
    {True | False *} Gets value of trapezoidal integration flag in energy meters..
        The C function called is: ```uint16_t Settings_Get_Trapezoidal(void);```
        */
        func SettingsGetTrapezoidal() -> Int {
        return Int(Settings_Get_Trapezoidal())
    }
        
    /**
    Array of Integers defining energy meter registers to use for computing UE.
    The C function called is: ```void Settings_Get_UEregs(int32_t** ResultPtr, int32_t* ResultCount);```
    */
    func SettingsGetUEregs() -> [Int] {
        return DSS.getIntArray(Settings_Get_UEregs)
    }
        
    /**
    Same as Settings_Get_UEregs but using the global buffer interface for results.
    The C function called is: ```void Settings_Get_UEregs_GR(void);```
    */
    func SettingsGetUEregsGR() {
        Settings_Get_UEregs_GR()
    }
        
    /**
    Weighting factor applied to UE register values..
    The C function called is: ```double Settings_Get_UEweight(void);```
    */
    func SettingsGetUEweight() -> Double {
        return Settings_Get_UEweight()
    }
        
    /**
    Integer array defining which energy meter registers to use for computing losses.
    The C function called is: ```void Settings_Set_LossRegs(int32_t* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Weighting factor applied to Loss register values..
    The C function called is: ```void Settings_Set_LossWeight(double Value);```
    */
    func SettingsSetLossWeight(_ value: Double) {
        Settings_Set_LossWeight(value)
    }
        
    /**
    {True | False *} Gets value of trapezoidal integration flag in energy meters..
        The C function called is: ```void Settings_Set_Trapezoidal(uint16_t Value);```
        */
        func SettingsSetTrapezoidal(_ value: Int) {
        Settings_Set_Trapezoidal(UInt16(value))
    }
        
    /**
    Array of Integers defining energy meter registers to use for computing UE.
    The C function called is: ```void Settings_Set_UEregs(int32_t* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Weighting factor applied to UE register values..
    The C function called is: ```void Settings_Set_UEweight(double Value);```
    */
    func SettingsSetUEweight(_ value: Double) {
        Settings_Set_UEweight(value)
    }
        
    /**
    {True | False*} Denotes whether to trace the control actions to a file..
        The C function called is: ```uint16_t Settings_Get_ControlTrace(void);```
        */
        func SettingsGetControlTrace() -> Int {
        return Int(Settings_Get_ControlTrace())
    }
        
    /**
    Array of doubles defining the legal voltage bases in kV L-L.
    The C function called is: ```void Settings_Get_VoltageBases(double** ResultPtr, int32_t* ResultCount);```
    */
    func SettingsGetVoltageBases() -> [Double] {
        return DSS.getDoubleArray(Settings_Get_VoltageBases)
    }
        
    /**
    Same as Settings_Get_VoltageBases but using the global buffer interface for results.
    The C function called is: ```void Settings_Get_VoltageBases_GR(void);```
    */
    func SettingsGetVoltageBasesGR() {
        Settings_Get_VoltageBases_GR()
    }
        
    /**
    {True | False*} Denotes whether to trace the control actions to a file..
        The C function called is: ```void Settings_Set_ControlTrace(uint16_t Value);```
        */
        func SettingsSetControlTrace(_ value: Int) {
        Settings_Set_ControlTrace(UInt16(value))
    }
        
    /**
    Array of doubles defining the legal voltage bases in kV L-L.
    The C function called is: ```void Settings_Set_VoltageBases(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Name of LoadShape object that serves as the source of price signal data for yearly simulations, etc..
    The C function called is: ```char* Settings_Get_PriceCurve(void);```
    */
    func SettingsGetPriceCurve() -> String? {
        return DSS.getString(from: Settings_Get_PriceCurve)
    }
        
    /**
    Price Signal for the Circuit.
    The C function called is: ```double Settings_Get_PriceSignal(void);```
    */
    func SettingsGetPriceSignal() -> Double {
        return Settings_Get_PriceSignal()
    }
        
    /**
    Name of LoadShape object that serves as the source of price signal data for yearly simulations, etc..
    The C function called is: ```void Settings_Set_PriceCurve(char* Value);```
    */
    func SettingsSetPriceCurve(_ value: String) {
        Settings_Set_PriceCurve(DSS.getPointer(to: value))
    }
        
    /**
    Price Signal for the Circuit.
    The C function called is: ```void Settings_Set_PriceSignal(double Value);```
    */
    func SettingsSetPriceSignal(_ value: Double) {
        Settings_Set_PriceSignal(value)
    }
        
    /**
    Set the Frequency for next solution.
    The C function called is: ```double Solution_Get_Frequency(void);```
    */
    func SolutionGetFrequency() -> Double {
        return Solution_Get_Frequency()
    }
        
    /**
    Set Hour for time series solutions..
    The C function called is: ```int32_t Solution_Get_Hour(void);```
    */
    func SolutionGetHour() -> Int {
        return Int(Solution_Get_Hour())
    }
        
    /**
    Number of iterations taken for last solution. (Same as TotalIterations).
    The C function called is: ```int32_t Solution_Get_Iterations(void);```
    */
    func SolutionGetIterations() -> Int {
        return Int(Solution_Get_Iterations())
    }
        
    /**
    Default load multiplier applied to all non-fixed loads.
    The C function called is: ```double Solution_Get_LoadMult(void);```
    */
    func SolutionGetLoadMult() -> Double {
        return Solution_Get_LoadMult()
    }
        
    /**
    Max allowable iterations..
    The C function called is: ```int32_t Solution_Get_MaxIterations(void);```
    */
    func SolutionGetMaxIterations() -> Int {
        return Int(Solution_Get_MaxIterations())
    }
        
    /**
    Set present solution mode (by a text code - see DSS Help).
    The C function called is: ```int32_t Solution_Get_Mode(void);```
    */
    func SolutionGetMode() -> Int {
        return Int(Solution_Get_Mode())
    }
        
    /**
    Number of solutions to perform for Monte Carlo and time series simulations.
    The C function called is: ```int32_t Solution_Get_Number(void);```
    */
    func SolutionGetNumber() -> Int {
        return Int(Solution_Get_Number())
    }
        
    /**
    Randomization mode for random variables "Gaussian" or "Uniform".
    The C function called is: ```int32_t Solution_Get_Random(void);```
    */
    func SolutionGetRandom() -> Int {
        return Int(Solution_Get_Random())
    }
        
    /**
    Seconds from top of the hour..
    The C function called is: ```double Solution_Get_Seconds(void);```
    */
    func SolutionGetSeconds() -> Double {
        return Solution_Get_Seconds()
    }
        
    /**
    Time step size in sec.
    The C function called is: ```double Solution_Get_StepSize(void);```
    */
    func SolutionGetStepSize() -> Double {
        return Solution_Get_StepSize()
    }
        
    /**
    Solution convergence tolerance..
    The C function called is: ```double Solution_Get_Tolerance(void);```
    */
    func SolutionGetTolerance() -> Double {
        return Solution_Get_Tolerance()
    }
        
    /**
    Set year for planning studies.
    The C function called is: ```int32_t Solution_Get_Year(void);```
    */
    func SolutionGetYear() -> Int {
        return Int(Solution_Get_Year())
    }
        
    /**
    Set the Frequency for next solution.
    The C function called is: ```void Solution_Set_Frequency(double Value);```
    */
    func SolutionSetFrequency(_ value: Double) {
        Solution_Set_Frequency(value)
    }
        
    /**
    Set Hour for time series solutions..
    The C function called is: ```void Solution_Set_Hour(int32_t Value);```
    */
    func SolutionSetHour(_ value: Int) {
        Solution_Set_Hour(Int32(value))
    }
        
    /**
    Default load multiplier applied to all non-fixed loads.
    The C function called is: ```void Solution_Set_LoadMult(double Value);```
    */
    func SolutionSetLoadMult(_ value: Double) {
        Solution_Set_LoadMult(value)
    }
        
    /**
    Max allowable iterations..
    The C function called is: ```void Solution_Set_MaxIterations(int32_t Value);```
    */
    func SolutionSetMaxIterations(_ value: Int) {
        Solution_Set_MaxIterations(Int32(value))
    }
        
    /**
    Set present solution mode (by a text code - see DSS Help).
    The C function called is: ```void Solution_Set_Mode(int32_t Mode);```
    */
    func SolutionSetMode(_ value: Int) {
        Solution_Set_Mode(Int32(value))
    }
        
    /**
    Number of solutions to perform for Monte Carlo and time series simulations.
    The C function called is: ```void Solution_Set_Number(int32_t Value);```
    */
    func SolutionSetNumber(_ value: Int) {
        Solution_Set_Number(Int32(value))
    }
        
    /**
    Randomization mode for random variables "Gaussian" or "Uniform".
    The C function called is: ```void Solution_Set_Random(int32_t Random);```
    */
    func SolutionSetRandom(_ value: Int) {
        Solution_Set_Random(Int32(value))
    }
        
    /**
    Seconds from top of the hour..
    The C function called is: ```void Solution_Set_Seconds(double Value);```
    */
    func SolutionSetSeconds(_ value: Double) {
        Solution_Set_Seconds(value)
    }
        
    /**
    Time step size in sec.
    The C function called is: ```void Solution_Set_StepSize(double Value);```
    */
    func SolutionSetStepSize(_ value: Double) {
        Solution_Set_StepSize(value)
    }
        
    /**
    Solution convergence tolerance..
    The C function called is: ```void Solution_Set_Tolerance(double Value);```
    */
    func SolutionSetTolerance(_ value: Double) {
        Solution_Set_Tolerance(value)
    }
        
    /**
    Set year for planning studies.
    The C function called is: ```void Solution_Set_Year(int32_t Value);```
    */
    func SolutionSetYear(_ value: Int) {
        Solution_Set_Year(Int32(value))
    }
        
    /**
    The C function called is: ```void Solution_Solve(void);```
    */
    func SolutionSolve() {
        Solution_Solve()
    }
        
    /**
    ID (text) of the present solution mode.
    The C function called is: ```char* Solution_Get_ModeID(void);```
    */
    func SolutionGetModeID() -> String? {
        return DSS.getString(from: Solution_Get_ModeID)
    }
        
    /**
    Load Model: {dssPowerFlow (default) | dssAdmittance}.
        The C function called is: ```int32_t Solution_Get_LoadModel(void);```
        */
        func SolutionGetLoadModel() -> Int {
        return Int(Solution_Get_LoadModel())
    }
        
    /**
    Load Model: {dssPowerFlow (default) | dssAdmittance}.
        The C function called is: ```void Solution_Set_LoadModel(int32_t Value);```
        */
        func SolutionSetLoadModel(_ value: Int) {
        Solution_Set_LoadModel(Int32(value))
    }
        
    /**
    Load-Duration Curve name for LD modes.
    The C function called is: ```char* Solution_Get_LDCurve(void);```
    */
    func SolutionGetLDCurve() -> String? {
        return DSS.getString(from: Solution_Get_LDCurve)
    }
        
    /**
    Load-Duration Curve name for LD modes.
    The C function called is: ```void Solution_Set_LDCurve(char* Value);```
    */
    func SolutionSetLDCurve(_ value: String) {
        Solution_Set_LDCurve(DSS.getPointer(to: value))
    }
        
    /**
    Percent default  annual load growth rate.
    The C function called is: ```double Solution_Get_pctGrowth(void);```
    */
    func SolutionGetPctGrowth() -> Double {
        return Solution_Get_pctGrowth()
    }
        
    /**
    Percent default  annual load growth rate.
    The C function called is: ```void Solution_Set_pctGrowth(double Value);```
    */
    func SolutionSetPctGrowth(_ value: Double) {
        Solution_Set_pctGrowth(value)
    }
        
    /**
    Type of device to add in AutoAdd Mode: {dssGen (Default) | dssCap}.
        The C function called is: ```int32_t Solution_Get_AddType(void);```
        */
        func SolutionGetAddType() -> Int {
        return Int(Solution_Get_AddType())
    }
        
    /**
    Type of device to add in AutoAdd Mode: {dssGen (Default) | dssCap}.
        The C function called is: ```void Solution_Set_AddType(int32_t Value);```
        */
        func SolutionSetAddType(_ value: Int) {
        Solution_Set_AddType(Int32(value))
    }
        
    /**
    Generator kW for AutoAdd mode.
    The C function called is: ```double Solution_Get_GenkW(void);```
    */
    func SolutionGetGenkW() -> Double {
        return Solution_Get_GenkW()
    }
        
    /**
    Generator kW for AutoAdd mode.
    The C function called is: ```void Solution_Set_GenkW(double Value);```
    */
    func SolutionSetGenkW(_ value: Double) {
        Solution_Set_GenkW(value)
    }
        
    /**
    PF for generators in AutoAdd mode.
    The C function called is: ```double Solution_Get_GenPF(void);```
    */
    func SolutionGetGenPF() -> Double {
        return Solution_Get_GenPF()
    }
        
    /**
    PF for generators in AutoAdd mode.
    The C function called is: ```void Solution_Set_GenPF(double Value);```
    */
    func SolutionSetGenPF(_ value: Double) {
        Solution_Set_GenPF(value)
    }
        
    /**
    Capacitor kvar for adding capacitors in AutoAdd mode.
    The C function called is: ```double Solution_Get_Capkvar(void);```
    */
    func SolutionGetCapkvar() -> Double {
        return Solution_Get_Capkvar()
    }
        
    /**
    Capacitor kvar for adding capacitors in AutoAdd mode.
    The C function called is: ```void Solution_Set_Capkvar(double Value);```
    */
    func SolutionSetCapkvar(_ value: Double) {
        Solution_Set_Capkvar(value)
    }
        
    /**
    Base Solution algorithm: {dssNormalSolve | dssNewtonSolve}.
        The C function called is: ```int32_t Solution_Get_Algorithm(void);```
        */
        func SolutionGetAlgorithm() -> Int {
        return Int(Solution_Get_Algorithm())
    }
        
    /**
    Base Solution algorithm: {dssNormalSolve | dssNewtonSolve}.
        The C function called is: ```void Solution_Set_Algorithm(int32_t Value);```
        */
        func SolutionSetAlgorithm(_ value: Int) {
        Solution_Set_Algorithm(Int32(value))
    }
        
    /**
    {dssStatic* | dssEvent | dssTime}  Modes for control devices.
        The C function called is: ```int32_t Solution_Get_ControlMode(void);```
        */
        func SolutionGetControlMode() -> Int {
        return Int(Solution_Get_ControlMode())
    }
        
    /**
    {dssStatic* | dssEvent | dssTime}  Modes for control devices.
        The C function called is: ```void Solution_Set_ControlMode(int32_t Value);```
        */
        func SolutionSetControlMode(_ value: Int) {
        Solution_Set_ControlMode(Int32(value))
    }
        
    /**
    Default Multiplier applied to generators (like LoadMult).
    The C function called is: ```double Solution_Get_GenMult(void);```
    */
    func SolutionGetGenMult() -> Double {
        return Solution_Get_GenMult()
    }
        
    /**
    Default Multiplier applied to generators (like LoadMult).
    The C function called is: ```void Solution_Set_GenMult(double Value);```
    */
    func SolutionSetGenMult(_ value: Double) {
        Solution_Set_GenMult(value)
    }
        
    /**
    Default daily load shape (defaults to "Default").
    The C function called is: ```char* Solution_Get_DefaultDaily(void);```
    */
    func SolutionGetDefaultDaily() -> String? {
        return DSS.getString(from: Solution_Get_DefaultDaily)
    }
        
    /**
    Default Yearly load shape (defaults to "Default").
    The C function called is: ```char* Solution_Get_DefaultYearly(void);```
    */
    func SolutionGetDefaultYearly() -> String? {
        return DSS.getString(from: Solution_Get_DefaultYearly)
    }
        
    /**
    Default daily load shape (defaults to "Default").
    The C function called is: ```void Solution_Set_DefaultDaily(char* Value);```
    */
    func SolutionSetDefaultDaily(_ value: String) {
        Solution_Set_DefaultDaily(DSS.getPointer(to: value))
    }
        
    /**
    Default Yearly load shape (defaults to "Default").
    The C function called is: ```void Solution_Set_DefaultYearly(char* Value);```
    */
    func SolutionSetDefaultYearly(_ value: String) {
        Solution_Set_DefaultYearly(DSS.getPointer(to: value))
    }
        
    /**
    Array of strings containing the Event Log.
    The C function called is: ```void Solution_Get_EventLog(char*** ResultPtr, int32_t* ResultCount);```
    */
    func SolutionGetEventLog() -> [String] {
        return DSS.getStringArray(Solution_Get_EventLog)
    }
        
    /**
    Same as Solution_Get_EventLog but using the global buffer interface for results.
    The C function called is: ```void Solution_Get_EventLog_GR(void);```
    */
    func SolutionGetEventLogGR() {
        Solution_Get_EventLog_GR()
    }
        
    /**
    Hour as a double, including fractional part.
    The C function called is: ```double Solution_Get_dblHour(void);```
    */
    func SolutionGetDblHour() -> Double {
        return Solution_Get_dblHour()
    }
        
    /**
    Hour as a double, including fractional part.
    The C function called is: ```void Solution_Set_dblHour(double Value);```
    */
    func SolutionSetDblHour(_ value: Double) {
        Solution_Set_dblHour(value)
    }
        
    /**
    Set Stepsize in Hr.
    The C function called is: ```void Solution_Set_StepsizeHr(double Value);```
    */
    func SolutionSetStepsizeHr(_ value: Double) {
        Solution_Set_StepsizeHr(value)
    }
        
    /**
    Set Stepsize in minutes.
    The C function called is: ```void Solution_Set_StepsizeMin(double Value);```
    */
    func SolutionSetStepsizeMin(_ value: Double) {
        Solution_Set_StepsizeMin(value)
    }
        
    /**
    Value of the control iteration counter.
    The C function called is: ```int32_t Solution_Get_ControlIterations(void);```
    */
    func SolutionGetControlIterations() -> Int {
        return Int(Solution_Get_ControlIterations())
    }
        
    /**
    Maximum allowable control iterations.
    The C function called is: ```int32_t Solution_Get_MaxControlIterations(void);```
    */
    func SolutionGetMaxControlIterations() -> Int {
        return Int(Solution_Get_MaxControlIterations())
    }
        
    /**
    The C function called is: ```void Solution_Sample_DoControlActions(void);```
    */
    func SolutionSampleDoControlActions() {
        Solution_Sample_DoControlActions()
    }
        
    /**
    Value of the control iteration counter.
    The C function called is: ```void Solution_Set_ControlIterations(int32_t Value);```
    */
    func SolutionSetControlIterations(_ value: Int) {
        Solution_Set_ControlIterations(Int32(value))
    }
        
    /**
    Maximum allowable control iterations.
    The C function called is: ```void Solution_Set_MaxControlIterations(int32_t Value);```
    */
    func SolutionSetMaxControlIterations(_ value: Int) {
        Solution_Set_MaxControlIterations(Int32(value))
    }
        
    /**
    The C function called is: ```void Solution_CheckFaultStatus(void);```
    */
    func SolutionCheckFaultStatus() {
        Solution_CheckFaultStatus()
    }
        
    /**
    The C function called is: ```void Solution_SolveDirect(void);```
    */
    func SolutionSolveDirect() {
        Solution_SolveDirect()
    }
        
    /**
    The C function called is: ```void Solution_SolveNoControl(void);```
    */
    func SolutionSolveNoControl() {
        Solution_SolveNoControl()
    }
        
    /**
    The C function called is: ```void Solution_SolvePflow(void);```
    */
    func SolutionSolvePflow() {
        Solution_SolvePflow()
    }
        
    /**
    The C function called is: ```void Solution_SolvePlusControl(void);```
    */
    func SolutionSolvePlusControl() {
        Solution_SolvePlusControl()
    }
        
    /**
    The C function called is: ```void Solution_SolveSnap(void);```
    */
    func SolutionSolveSnap() {
        Solution_SolveSnap()
    }
        
    /**
    The C function called is: ```void Solution_CheckControls(void);```
    */
    func SolutionCheckControls() {
        Solution_CheckControls()
    }
        
    /**
    The C function called is: ```void Solution_InitSnap(void);```
    */
    func SolutionInitSnap() {
        Solution_InitSnap()
    }
        
    /**
    Flag that indicates if elements of the System Y have been changed by recent activity..
    The C function called is: ```uint16_t Solution_Get_SystemYChanged(void);```
    */
    func SolutionGetSystemYChanged() -> Int {
        return Int(Solution_Get_SystemYChanged())
    }
        
    /**
    The C function called is: ```void Solution_BuildYMatrix(int32_t BuildOption, int32_t AllocateVI);```
    */
        
    /**
    The C function called is: ```void Solution_DoControlActions(void);```
    */
    func SolutionDoControlActions() {
        Solution_DoControlActions()
    }
        
    /**
    The C function called is: ```void Solution_SampleControlDevices(void);```
    */
    func SolutionSampleControlDevices() {
        Solution_SampleControlDevices()
    }
        
    /**
    Flag to indicate whether the circuit solution converged.
    The C function called is: ```uint16_t Solution_Get_Converged(void);```
    */
    func SolutionGetConverged() -> Int {
        return Int(Solution_Get_Converged())
    }
        
    /**
    Flag to indicate whether the circuit solution converged.
    The C function called is: ```void Solution_Set_Converged(uint16_t Value);```
    */
    func SolutionSetConverged(_ value: Int) {
        Solution_Set_Converged(UInt16(value))
    }
        
    /**
    Total iterations including control iterations for most recent solution..
    The C function called is: ```int32_t Solution_Get_Totaliterations(void);```
    */
    func SolutionGetTotaliterations() -> Int {
        return Int(Solution_Get_Totaliterations())
    }
        
    /**
    Max number of iterations required to converge at any control iteration of the most recent solution..
    The C function called is: ```int32_t Solution_Get_MostIterationsDone(void);```
    */
    func SolutionGetMostIterationsDone() -> Int {
        return Int(Solution_Get_MostIterationsDone())
    }
        
    /**
    Flag indicating the control actions are done..
    The C function called is: ```uint16_t Solution_Get_ControlActionsDone(void);```
    */
    func SolutionGetControlActionsDone() -> Int {
        return Int(Solution_Get_ControlActionsDone())
    }
        
    /**
    The C function called is: ```void Solution_Set_ControlActionsDone(uint16_t Value);```
    */
    func SolutionSetControlActionsDone(_ value: Int) {
        Solution_Set_ControlActionsDone(UInt16(value))
    }
        
    /**
    The C function called is: ```void Solution_Cleanup(void);```
    */
    func SolutionCleanup() {
        Solution_Cleanup()
    }
        
    /**
    The C function called is: ```void Solution_FinishTimeStep(void);```
    */
    func SolutionFinishTimeStep() {
        Solution_FinishTimeStep()
    }
        
    /**
    Gets the time required to perform the latest solution (Read only).
    The C function called is: ```double Solution_Get_Process_Time(void);```
    */
    func SolutionGetProcessTime() -> Double {
        return Solution_Get_Process_Time()
    }
        
    /**
    Gets the accumulated time of the simulation.
    The C function called is: ```double Solution_Get_Total_Time(void);```
    */
    func SolutionGetTotalTime() -> Double {
        return Solution_Get_Total_Time()
    }
        
    /**
    Sets the Accumulated time of the simulation.
    The C function called is: ```void Solution_Set_Total_Time(double Value);```
    */
    func SolutionSetTotalTime(_ value: Double) {
        Solution_Set_Total_Time(value)
    }
        
    /**
    Get the solution process time + sample time for time step.
    The C function called is: ```double Solution_Get_Time_of_Step(void);```
    */
    func SolutionGetTimeOfStep() -> Double {
        return Solution_Get_Time_of_Step()
    }
        
    /**
    Get/Set the Solution.IntervalHrs variable used for devices that integrate.
    The C function called is: ```double Solution_Get_IntervalHrs(void);```
    */
    func SolutionGetIntervalHrs() -> Double {
        return Solution_Get_IntervalHrs()
    }
        
    /**
    Get/Set the Solution.IntervalHrs variable for custom solution algorithms.
    The C function called is: ```void Solution_Set_IntervalHrs(double Value);```
    */
    func SolutionSetIntervalHrs(_ value: Double) {
        Solution_Set_IntervalHrs(value)
    }
        
    /**
    Minimum number of iterations required for a power flow solution..
    The C function called is: ```int32_t Solution_Get_MinIterations(void);```
    */
    func SolutionGetMinIterations() -> Int {
        return Int(Solution_Get_MinIterations())
    }
        
    /**
    Mininum number of iterations required for a power flow solution..
    The C function called is: ```void Solution_Set_MinIterations(int32_t Value);```
    */
    func SolutionSetMinIterations(_ value: Int) {
        Solution_Set_MinIterations(Int32(value))
    }
        
    /**
    Open or Close the switch. No effect if switch is locked.  However, Reset removes any lock and then closes the switch (shelf state)..
    The C function called is: ```int32_t SwtControls_Get_Action(void);```
    */
    func SwtControlsGetAction() -> Int {
        return Int(SwtControls_Get_Action())
    }
        
    /**
    Array of strings with all SwtControl names in the active circuit..
    The C function called is: ```void SwtControls_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func SwtControlsGetAllNames() -> [String] {
        return DSS.getStringArray(SwtControls_Get_AllNames)
    }
        
    /**
    Same as SwtControls_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void SwtControls_Get_AllNames_GR(void);```
    */
    func SwtControlsGetAllNamesGR() {
        SwtControls_Get_AllNames_GR()
    }
        
    /**
    Time delay [s] betwen arming and opening or closing the switch.  Control may reset before actually operating the switch..
    The C function called is: ```double SwtControls_Get_Delay(void);```
    */
    func SwtControlsGetDelay() -> Double {
        return SwtControls_Get_Delay()
    }
        
    /**
    Sets the first SwtControl active. Returns 0 if no more..
    The C function called is: ```int32_t SwtControls_Get_First(void);```
    */
    func SwtControlsGetFirst() -> Int {
        return Int(SwtControls_Get_First())
    }
        
    /**
    The lock prevents both manual and automatic switch operation..
    The C function called is: ```uint16_t SwtControls_Get_IsLocked(void);```
    */
    func SwtControlsGetIsLocked() -> Int {
        return Int(SwtControls_Get_IsLocked())
    }
        
    /**
    Sets a SwtControl active by Name..
    The C function called is: ```char* SwtControls_Get_Name(void);```
    */
    func SwtControlsGetName() -> String? {
        return DSS.getString(from: SwtControls_Get_Name)
    }
        
    /**
    Sets the next SwtControl active. Returns 0 if no more..
    The C function called is: ```int32_t SwtControls_Get_Next(void);```
    */
    func SwtControlsGetNext() -> Int {
        return Int(SwtControls_Get_Next())
    }
        
    /**
    Full name of the switched element..
    The C function called is: ```char* SwtControls_Get_SwitchedObj(void);```
    */
    func SwtControlsGetSwitchedObj() -> String? {
        return DSS.getString(from: SwtControls_Get_SwitchedObj)
    }
        
    /**
    Terminal number where the switch is located on the SwitchedObj.
    The C function called is: ```int32_t SwtControls_Get_SwitchedTerm(void);```
    */
    func SwtControlsGetSwitchedTerm() -> Int {
        return Int(SwtControls_Get_SwitchedTerm())
    }
        
    /**
    Open or Close the switch. No effect if switch is locked.  However, Reset removes any lock and then closes the switch (shelf state)..
    The C function called is: ```void SwtControls_Set_Action(int32_t Value);```
    */
    func SwtControlsSetAction(_ value: Int) {
        SwtControls_Set_Action(Int32(value))
    }
        
    /**
    Time delay [s] betwen arming and opening or closing the switch.  Control may reset before actually operating the switch..
    The C function called is: ```void SwtControls_Set_Delay(double Value);```
    */
    func SwtControlsSetDelay(_ value: Double) {
        SwtControls_Set_Delay(value)
    }
        
    /**
    The lock prevents both manual and automatic switch operation..
    The C function called is: ```void SwtControls_Set_IsLocked(uint16_t Value);```
    */
    func SwtControlsSetIsLocked(_ value: Int) {
        SwtControls_Set_IsLocked(UInt16(value))
    }
        
    /**
    Sets a SwtControl active by Name..
    The C function called is: ```void SwtControls_Set_Name(char* Value);```
    */
    func SwtControlsSetName(_ value: String) {
        SwtControls_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Full name of the switched element..
    The C function called is: ```void SwtControls_Set_SwitchedObj(char* Value);```
    */
    func SwtControlsSetSwitchedObj(_ value: String) {
        SwtControls_Set_SwitchedObj(DSS.getPointer(to: value))
    }
        
    /**
    Terminal number where the switch is located on the SwitchedObj.
    The C function called is: ```void SwtControls_Set_SwitchedTerm(int32_t Value);```
    */
    func SwtControlsSetSwitchedTerm(_ value: Int) {
        SwtControls_Set_SwitchedTerm(Int32(value))
    }
        
    /**
    The C function called is: ```int32_t SwtControls_Get_Count(void);```
    */
    func SwtControlsGetCount() -> Int {
        return Int(SwtControls_Get_Count())
    }
        
    /**
    Get Normal state of switch.
    The C function called is: ```int32_t SwtControls_Get_NormalState(void);```
    */
    func SwtControlsGetNormalState() -> Int {
        return Int(SwtControls_Get_NormalState())
    }
        
    /**
    set Normal state of switch  (see actioncodes) dssActionOpen or dssActionClose.
    The C function called is: ```void SwtControls_Set_NormalState(int32_t Value);```
    */
    func SwtControlsSetNormalState(_ value: Int) {
        SwtControls_Set_NormalState(Int32(value))
    }
        
    /**
    Force switch to specified state.
    The C function called is: ```int32_t SwtControls_Get_State(void);```
    */
    func SwtControlsGetState() -> Int {
        return Int(SwtControls_Get_State())
    }
        
    /**
    Get Present state of switch.
    The C function called is: ```void SwtControls_Set_State(int32_t Value);```
    */
    func SwtControlsSetState(_ value: Int) {
        SwtControls_Set_State(Int32(value))
    }
        
    /**
    The C function called is: ```void SwtControls_Reset(void);```
    */
    func SwtControlsReset() {
        SwtControls_Reset()
    }
        
    /**
    Input command string for the DSS..
    The C function called is: ```char* Text_Get_Command(void);```
    */
    func TextGetCommand() -> String? {
        return DSS.getString(from: Text_Get_Command)
    }
        
    /**
    Input command string for the DSS..
    The C function called is: ```void Text_Set_Command(char* Value);```
    */
    func TextSetCommand(_ value: String) {
        Text_Set_Command(DSS.getPointer(to: value))
    }
        
    /**
    Result string for the last command..
    The C function called is: ```char* Text_Get_Result(void);```
    */
    func TextGetResult() -> String? {
        return DSS.getString(from: Text_Get_Result)
    }
        
    /**
    Number of loops.
    The C function called is: ```int32_t Topology_Get_NumLoops(void);```
    */
    func TopologyGetNumLoops() -> Int {
        return Int(Topology_Get_NumLoops())
    }
        
    /**
    Returns index of the active branch.
    The C function called is: ```int32_t Topology_Get_ActiveBranch(void);```
    */
    func TopologyGetActiveBranch() -> Int {
        return Int(Topology_Get_ActiveBranch())
    }
        
    /**
    Array of all isolated branch names..
    The C function called is: ```void Topology_Get_AllIsolatedBranches(char*** ResultPtr, int32_t* ResultCount);```
    */
    func TopologyGetAllIsolatedBranches() -> [String] {
        return DSS.getStringArray(Topology_Get_AllIsolatedBranches)
    }
        
    /**
    Same as Topology_Get_AllIsolatedBranches but using the global buffer interface for results.
    The C function called is: ```void Topology_Get_AllIsolatedBranches_GR(void);```
    */
    func TopologyGetAllIsolatedBranchesGR() {
        Topology_Get_AllIsolatedBranches_GR()
    }
        
    /**
    Array of all looped element names, by pairs..
    The C function called is: ```void Topology_Get_AllLoopedPairs(char*** ResultPtr, int32_t* ResultCount);```
    */
    func TopologyGetAllLoopedPairs() -> [String] {
        return DSS.getStringArray(Topology_Get_AllLoopedPairs)
    }
        
    /**
    Same as Topology_Get_AllLoopedPairs but using the global buffer interface for results.
    The C function called is: ```void Topology_Get_AllLoopedPairs_GR(void);```
    */
    func TopologyGetAllLoopedPairsGR() {
        Topology_Get_AllLoopedPairs_GR()
    }
        
    /**
    MOve back toward the source, return index of new active branch, or 0 if no more..
    The C function called is: ```int32_t Topology_Get_BackwardBranch(void);```
    */
    func TopologyGetBackwardBranch() -> Int {
        return Int(Topology_Get_BackwardBranch())
    }
        
    /**
    Name of the active branch..
    The C function called is: ```char* Topology_Get_BranchName(void);```
    */
    func TopologyGetBranchName() -> String? {
        return DSS.getString(from: Topology_Get_BranchName)
    }
        
    /**
    Sets the first branch active, returns 0 if none..
    The C function called is: ```int32_t Topology_Get_First(void);```
    */
    func TopologyGetFirst() -> Int {
        return Int(Topology_Get_First())
    }
        
    /**
    Move forward in the tree, return index of new active branch or 0 if no more.
    The C function called is: ```int32_t Topology_Get_ForwardBranch(void);```
    */
    func TopologyGetForwardBranch() -> Int {
        return Int(Topology_Get_ForwardBranch())
    }
        
    /**
    Move to looped branch, return index or 0 if none..
    The C function called is: ```int32_t Topology_Get_LoopedBranch(void);```
    */
    func TopologyGetLoopedBranch() -> Int {
        return Int(Topology_Get_LoopedBranch())
    }
        
    /**
    Sets the next branch active, returns 0 if no more..
    The C function called is: ```int32_t Topology_Get_Next(void);```
    */
    func TopologyGetNext() -> Int {
        return Int(Topology_Get_Next())
    }
        
    /**
    Number of isolated branches (PD elements and capacitors)..
    The C function called is: ```int32_t Topology_Get_NumIsolatedBranches(void);```
    */
    func TopologyGetNumIsolatedBranches() -> Int {
        return Int(Topology_Get_NumIsolatedBranches())
    }
        
    /**
    Move to directly parallel branch, return index or 0 if none..
    The C function called is: ```int32_t Topology_Get_ParallelBranch(void);```
    */
    func TopologyGetParallelBranch() -> Int {
        return Int(Topology_Get_ParallelBranch())
    }
        
    /**
    The C function called is: ```void Topology_Set_BranchName(char* Value);```
    */
    func TopologySetBranchName(_ value: String) {
        Topology_Set_BranchName(DSS.getPointer(to: value))
    }
        
    /**
    Array of all isolated load names..
    The C function called is: ```void Topology_Get_AllIsolatedLoads(char*** ResultPtr, int32_t* ResultCount);```
    */
    func TopologyGetAllIsolatedLoads() -> [String] {
        return DSS.getStringArray(Topology_Get_AllIsolatedLoads)
    }
        
    /**
    Same as Topology_Get_AllIsolatedLoads but using the global buffer interface for results.
    The C function called is: ```void Topology_Get_AllIsolatedLoads_GR(void);```
    */
    func TopologyGetAllIsolatedLoadsGR() {
        Topology_Get_AllIsolatedLoads_GR()
    }
        
    /**
    First load at the active branch, return index or 0 if none..
    The C function called is: ```int32_t Topology_Get_FirstLoad(void);```
    */
    func TopologyGetFirstLoad() -> Int {
        return Int(Topology_Get_FirstLoad())
    }
        
    /**
    Next load at the active branch, return index or 0 if no more..
    The C function called is: ```int32_t Topology_Get_NextLoad(void);```
    */
    func TopologyGetNextLoad() -> Int {
        return Int(Topology_Get_NextLoad())
    }
        
    /**
    Number of isolated loads.
    The C function called is: ```int32_t Topology_Get_NumIsolatedLoads(void);```
    */
    func TopologyGetNumIsolatedLoads() -> Int {
        return Int(Topology_Get_NumIsolatedLoads())
    }
        
    /**
    Topological depth of the active branch.
    The C function called is: ```int32_t Topology_Get_ActiveLevel(void);```
    */
    func TopologyGetActiveLevel() -> Int {
        return Int(Topology_Get_ActiveLevel())
    }
        
    /**
    The C function called is: ```char* Topology_Get_BusName(void);```
    */
    func TopologyGetBusName() -> String? {
        return DSS.getString(from: Topology_Get_BusName)
    }
        
    /**
    Set the active branch to one containing this bus, return index or 0 if not found.
    The C function called is: ```void Topology_Set_BusName(char* Value);```
    */
    func TopologySetBusName(_ value: String) {
        Topology_Set_BusName(DSS.getPointer(to: value))
    }
        
    /**
    Array of strings with all Transformer names in the active circuit..
    The C function called is: ```void Transformers_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func TransformersGetAllNames() -> [String] {
        return DSS.getStringArray(Transformers_Get_AllNames)
    }
        
    /**
    Same as Transformers_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Transformers_Get_AllNames_GR(void);```
    */
    func TransformersGetAllNamesGR() {
        Transformers_Get_AllNames_GR()
    }
        
    /**
    Sets the first Transformer active. Returns 0 if no more..
    The C function called is: ```int32_t Transformers_Get_First(void);```
    */
    func TransformersGetFirst() -> Int {
        return Int(Transformers_Get_First())
    }
        
    /**
    Active Winding delta or wye connection?.
    The C function called is: ```uint16_t Transformers_Get_IsDelta(void);```
    */
    func TransformersGetIsDelta() -> Int {
        return Int(Transformers_Get_IsDelta())
    }
        
    /**
    Active Winding kV rating.  Phase-phase for 2 or 3 phases, actual winding kV for 1 phase transformer..
    The C function called is: ```double Transformers_Get_kV(void);```
    */
    func TransformersGetKV() -> Double {
        return Transformers_Get_kV()
    }
        
    /**
    Active Winding kVA rating. On winding 1, this also determines normal and emergency current ratings for all windings..
    The C function called is: ```double Transformers_Get_kVA(void);```
    */
    func TransformersGetKVA() -> Double {
        return Transformers_Get_kVA()
    }
        
    /**
    Active Winding maximum tap in per-unit..
    The C function called is: ```double Transformers_Get_MaxTap(void);```
    */
    func TransformersGetMaxTap() -> Double {
        return Transformers_Get_MaxTap()
    }
        
    /**
    Active Winding minimum tap in per-unit..
    The C function called is: ```double Transformers_Get_MinTap(void);```
    */
    func TransformersGetMinTap() -> Double {
        return Transformers_Get_MinTap()
    }
        
    /**
    Sets a Transformer active by Name..
    The C function called is: ```char* Transformers_Get_Name(void);```
    */
    func TransformersGetName() -> String? {
        return DSS.getString(from: Transformers_Get_Name)
    }
        
    /**
    Sets the next Transformer active. Returns 0 if no more..
    The C function called is: ```int32_t Transformers_Get_Next(void);```
    */
    func TransformersGetNext() -> Int {
        return Int(Transformers_Get_Next())
    }
        
    /**
    Active Winding number of tap steps betwein MinTap and MaxTap..
    The C function called is: ```int32_t Transformers_Get_NumTaps(void);```
    */
    func TransformersGetNumTaps() -> Int {
        return Int(Transformers_Get_NumTaps())
    }
        
    /**
    Number of windings on this transformer. Allocates memory; set or change this property first..
    The C function called is: ```int32_t Transformers_Get_NumWindings(void);```
    */
    func TransformersGetNumWindings() -> Int {
        return Int(Transformers_Get_NumWindings())
    }
        
    /**
    Active Winding resistance in %.
    The C function called is: ```double Transformers_Get_R(void);```
    */
    func TransformersGetR() -> Double {
        return Transformers_Get_R()
    }
        
    /**
    Active Winding neutral resistance [ohms] for wye connections. Set less than zero for ungrounded wye..
    The C function called is: ```double Transformers_Get_Rneut(void);```
    */
    func TransformersGetRneut() -> Double {
        return Transformers_Get_Rneut()
    }
        
    /**
    Active Winding tap in per-unit..
    The C function called is: ```double Transformers_Get_Tap(void);```
    */
    func TransformersGetTap() -> Double {
        return Transformers_Get_Tap()
    }
        
    /**
    Active Winding Number from 1..NumWindings. Update this before reading or setting a sequence of winding properties (R, Tap, kV, kVA, etc.).
    The C function called is: ```int32_t Transformers_Get_Wdg(void);```
    */
    func TransformersGetWdg() -> Int {
        return Int(Transformers_Get_Wdg())
    }
        
    /**
    Name of an XfrmCode that supplies electircal parameters for this Transformer..
    The C function called is: ```char* Transformers_Get_XfmrCode(void);```
    */
    func TransformersGetXfmrCode() -> String? {
        return DSS.getString(from: Transformers_Get_XfmrCode)
    }
        
    /**
    Percent reactance between windings 1 and 2, on winding 1 kVA base. Use for 2-winding or 3-winding transformers..
    The C function called is: ```double Transformers_Get_Xhl(void);```
    */
    func TransformersGetXhl() -> Double {
        return Transformers_Get_Xhl()
    }
        
    /**
    Percent reactance between windigns 1 and 3, on winding 1 kVA base.  Use for 3-winding transformers only..
    The C function called is: ```double Transformers_Get_Xht(void);```
    */
    func TransformersGetXht() -> Double {
        return Transformers_Get_Xht()
    }
        
    /**
    Percent reactance between windings 2 and 3, on winding 1 kVA base. Use for 3-winding transformers only..
    The C function called is: ```double Transformers_Get_Xlt(void);```
    */
    func TransformersGetXlt() -> Double {
        return Transformers_Get_Xlt()
    }
        
    /**
    Active Winding neutral reactance [ohms] for wye connections..
    The C function called is: ```double Transformers_Get_Xneut(void);```
    */
    func TransformersGetXneut() -> Double {
        return Transformers_Get_Xneut()
    }
        
    /**
    Active Winding delta or wye connection?.
    The C function called is: ```void Transformers_Set_IsDelta(uint16_t Value);```
    */
    func TransformersSetIsDelta(_ value: Int) {
        Transformers_Set_IsDelta(UInt16(value))
    }
        
    /**
    Active Winding kV rating.  Phase-phase for 2 or 3 phases, actual winding kV for 1 phase transformer..
    The C function called is: ```void Transformers_Set_kV(double Value);```
    */
    func TransformersSetKV(_ value: Double) {
        Transformers_Set_kV(value)
    }
        
    /**
    Active Winding kVA rating. On winding 1, this also determines normal and emergency current ratings for all windings..
    The C function called is: ```void Transformers_Set_kVA(double Value);```
    */
    func TransformersSetKVA(_ value: Double) {
        Transformers_Set_kVA(value)
    }
        
    /**
    Active Winding maximum tap in per-unit..
    The C function called is: ```void Transformers_Set_MaxTap(double Value);```
    */
    func TransformersSetMaxTap(_ value: Double) {
        Transformers_Set_MaxTap(value)
    }
        
    /**
    Active Winding minimum tap in per-unit..
    The C function called is: ```void Transformers_Set_MinTap(double Value);```
    */
    func TransformersSetMinTap(_ value: Double) {
        Transformers_Set_MinTap(value)
    }
        
    /**
    Sets a Transformer active by Name..
    The C function called is: ```void Transformers_Set_Name(char* Value);```
    */
    func TransformersSetName(_ value: String) {
        Transformers_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Active Winding number of tap steps betwein MinTap and MaxTap..
    The C function called is: ```void Transformers_Set_NumTaps(int32_t Value);```
    */
    func TransformersSetNumTaps(_ value: Int) {
        Transformers_Set_NumTaps(Int32(value))
    }
        
    /**
    Number of windings on this transformer. Allocates memory; set or change this property first..
    The C function called is: ```void Transformers_Set_NumWindings(int32_t Value);```
    */
    func TransformersSetNumWindings(_ value: Int) {
        Transformers_Set_NumWindings(Int32(value))
    }
        
    /**
    Active Winding resistance in %.
    The C function called is: ```void Transformers_Set_R(double Value);```
    */
    func TransformersSetR(_ value: Double) {
        Transformers_Set_R(value)
    }
        
    /**
    Active Winding neutral resistance [ohms] for wye connections. Set less than zero for ungrounded wye..
    The C function called is: ```void Transformers_Set_Rneut(double Value);```
    */
    func TransformersSetRneut(_ value: Double) {
        Transformers_Set_Rneut(value)
    }
        
    /**
    Active Winding tap in per-unit..
    The C function called is: ```void Transformers_Set_Tap(double Value);```
    */
    func TransformersSetTap(_ value: Double) {
        Transformers_Set_Tap(value)
    }
        
    /**
    Active Winding Number from 1..NumWindings. Update this before reading or setting a sequence of winding properties (R, Tap, kV, kVA, etc.).
    The C function called is: ```void Transformers_Set_Wdg(int32_t Value);```
    */
    func TransformersSetWdg(_ value: Int) {
        Transformers_Set_Wdg(Int32(value))
    }
        
    /**
    Name of an XfrmCode that supplies electircal parameters for this Transformer..
    The C function called is: ```void Transformers_Set_XfmrCode(char* Value);```
    */
    func TransformersSetXfmrCode(_ value: String) {
        Transformers_Set_XfmrCode(DSS.getPointer(to: value))
    }
        
    /**
    Percent reactance between windings 1 and 2, on winding 1 kVA base. Use for 2-winding or 3-winding transformers..
    The C function called is: ```void Transformers_Set_Xhl(double Value);```
    */
    func TransformersSetXhl(_ value: Double) {
        Transformers_Set_Xhl(value)
    }
        
    /**
    Percent reactance between windigns 1 and 3, on winding 1 kVA base.  Use for 3-winding transformers only..
    The C function called is: ```void Transformers_Set_Xht(double Value);```
    */
    func TransformersSetXht(_ value: Double) {
        Transformers_Set_Xht(value)
    }
        
    /**
    Percent reactance between windings 2 and 3, on winding 1 kVA base. Use for 3-winding transformers only..
    The C function called is: ```void Transformers_Set_Xlt(double Value);```
    */
    func TransformersSetXlt(_ value: Double) {
        Transformers_Set_Xlt(value)
    }
        
    /**
    Active Winding neutral reactance [ohms] for wye connections..
    The C function called is: ```void Transformers_Set_Xneut(double Value);```
    */
    func TransformersSetXneut(_ value: Double) {
        Transformers_Set_Xneut(value)
    }
        
    /**
    The C function called is: ```int32_t Transformers_Get_Count(void);```
    */
    func TransformersGetCount() -> Int {
        return Int(Transformers_Get_Count())
    }
        
    /**
    Names of all Vsource objects in the circuit.
    The C function called is: ```void Vsources_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func VsourcesGetAllNames() -> [String] {
        return DSS.getStringArray(Vsources_Get_AllNames)
    }
        
    /**
    Same as Vsources_Get_AllNames but using the global buffer interface for results.
    The C function called is: ```void Vsources_Get_AllNames_GR(void);```
    */
    func VsourcesGetAllNamesGR() {
        Vsources_Get_AllNames_GR()
    }
        
    /**
    Number of Vsource Object.
    The C function called is: ```int32_t Vsources_Get_Count(void);```
    */
    func VsourcesGetCount() -> Int {
        return Int(Vsources_Get_Count())
    }
        
    /**
    Sets the first VSOURCE to be active; Returns 0 if none.
    The C function called is: ```int32_t Vsources_Get_First(void);```
    */
    func VsourcesGetFirst() -> Int {
        return Int(Vsources_Get_First())
    }
        
    /**
    Sets the next VSOURCE object to be active; returns zero if no more.
    The C function called is: ```int32_t Vsources_Get_Next(void);```
    */
    func VsourcesGetNext() -> Int {
        return Int(Vsources_Get_Next())
    }
        
    /**
    Get Active VSOURCE name.
    The C function called is: ```char* Vsources_Get_Name(void);```
    */
    func VsourcesGetName() -> String? {
        return DSS.getString(from: Vsources_Get_Name)
    }
        
    /**
    Set Active VSOURCE by Name.
    The C function called is: ```void Vsources_Set_Name(char* Value);```
    */
    func VsourcesSetName(_ value: String) {
        Vsources_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Source Voltage in kV.
    The C function called is: ```double Vsources_Get_BasekV(void);```
    */
    func VsourcesGetBasekV() -> Double {
        return Vsources_Get_BasekV()
    }
        
    /**
    Source pu voltage..
    The C function called is: ```double Vsources_Get_pu(void);```
    */
    func VsourcesGetPu() -> Double {
        return Vsources_Get_pu()
    }
        
    /**
    Source voltage in kV.
    The C function called is: ```void Vsources_Set_BasekV(double Value);```
    */
    func VsourcesSetBasekV(_ value: Double) {
        Vsources_Set_BasekV(value)
    }
        
    /**
    Per-unit value of source voltage based on kV.
    The C function called is: ```void Vsources_Set_pu(double Value);```
    */
    func VsourcesSetPu(_ value: Double) {
        Vsources_Set_pu(value)
    }
        
    /**
    Phase angle of first phase in degrees.
    The C function called is: ```double Vsources_Get_AngleDeg(void);```
    */
    func VsourcesGetAngleDeg() -> Double {
        return Vsources_Get_AngleDeg()
    }
        
    /**
    Source Frequency in Hz.
    The C function called is: ```double Vsources_Get_Frequency(void);```
    */
    func VsourcesGetFrequency() -> Double {
        return Vsources_Get_Frequency()
    }
        
    /**
    Number of Phases.
    The C function called is: ```int32_t Vsources_Get_Phases(void);```
    */
    func VsourcesGetPhases() -> Int {
        return Int(Vsources_Get_Phases())
    }
        
    /**
    phase angle in degrees.
    The C function called is: ```void Vsources_Set_AngleDeg(double Value);```
    */
    func VsourcesSetAngleDeg(_ value: Double) {
        Vsources_Set_AngleDeg(value)
    }
        
    /**
    Source frequency in Hz.
    The C function called is: ```void Vsources_Set_Frequency(double Value);```
    */
    func VsourcesSetFrequency(_ value: Double) {
        Vsources_Set_Frequency(value)
    }
        
    /**
    Number of phases.
    The C function called is: ```void Vsources_Set_Phases(int32_t Value);```
    */
    func VsourcesSetPhases(_ value: Int) {
        Vsources_Set_Phases(Int32(value))
    }
        
    /**
    Number of XYCurve Objects.
    The C function called is: ```int32_t XYCurves_Get_Count(void);```
    */
    func XYCurvesGetCount() -> Int {
        return Int(XYCurves_Get_Count())
    }
        
    /**
    Sets first XYcurve object active; returns 0 if none..
    The C function called is: ```int32_t XYCurves_Get_First(void);```
    */
    func XYCurvesGetFirst() -> Int {
        return Int(XYCurves_Get_First())
    }
        
    /**
    Name of active XYCurve Object.
    The C function called is: ```char* XYCurves_Get_Name(void);```
    */
    func XYCurvesGetName() -> String? {
        return DSS.getString(from: XYCurves_Get_Name)
    }
        
    /**
    Advances to next XYCurve object; returns 0 if no more objects of this class.
    The C function called is: ```int32_t XYCurves_Get_Next(void);```
    */
    func XYCurvesGetNext() -> Int {
        return Int(XYCurves_Get_Next())
    }
        
    /**
    Get Name of active XYCurve Object.
    The C function called is: ```void XYCurves_Set_Name(char* Value);```
    */
    func XYCurvesSetName(_ value: String) {
        XYCurves_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    Get/Set Number of points in X-Y curve.
    The C function called is: ```int32_t XYCurves_Get_Npts(void);```
    */
    func XYCurvesGetNpts() -> Int {
        return Int(XYCurves_Get_Npts())
    }
        
    /**
    Get/Set X values as a Array of doubles. Set Npts to max number expected if setting.
    The C function called is: ```void XYCurves_Get_Xarray(double** ResultPtr, int32_t* ResultCount);```
    */
    func XYCurvesGetXarray() -> [Double] {
        return DSS.getDoubleArray(XYCurves_Get_Xarray)
    }
        
    /**
    Same as XYCurves_Get_Xarray but using the global buffer interface for results.
    The C function called is: ```void XYCurves_Get_Xarray_GR(void);```
    */
    func XYCurvesGetXarrayGR() {
        XYCurves_Get_Xarray_GR()
    }
        
    /**
    Get/Set Number of Points in X-Y curve.
    The C function called is: ```void XYCurves_Set_Npts(int32_t Value);```
    */
    func XYCurvesSetNpts(_ value: Int) {
        XYCurves_Set_Npts(Int32(value))
    }
        
    /**
    Get/Set X values as a Array of doubles. Set Npts to max number expected if setting.
    The C function called is: ```void XYCurves_Set_Xarray(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Set X value or get interpolated value after setting Y.
    The C function called is: ```double XYCurves_Get_x(void);```
    */
    func XYCurvesGetX() -> Double {
        return XYCurves_Get_x()
    }
        
    /**
    Y value for present X or set this value then get corresponding X.
    The C function called is: ```double XYCurves_Get_y(void);```
    */
    func XYCurvesGetY() -> Double {
        return XYCurves_Get_y()
    }
        
    /**
    Get/Set Y values in curve; Set Npts to max number expected if setting.
    The C function called is: ```void XYCurves_Get_Yarray(double** ResultPtr, int32_t* ResultCount);```
    */
    func XYCurvesGetYarray() -> [Double] {
        return DSS.getDoubleArray(XYCurves_Get_Yarray)
    }
        
    /**
    Same as XYCurves_Get_Yarray but using the global buffer interface for results.
    The C function called is: ```void XYCurves_Get_Yarray_GR(void);```
    */
    func XYCurvesGetYarrayGR() {
        XYCurves_Get_Yarray_GR()
    }
        
    /**
    The C function called is: ```void XYCurves_Set_x(double Value);```
    */
    func XYCurvesSetX(_ value: Double) {
        XYCurves_Set_x(value)
    }
        
    /**
    Set Y value or get interpolated Y value after setting X.
    The C function called is: ```void XYCurves_Set_y(double Value);```
    */
    func XYCurvesSetY(_ value: Double) {
        XYCurves_Set_y(value)
    }
        
    /**
    Get/Set Y values in curve; Set Npts to max number expected if setting.
    The C function called is: ```void XYCurves_Set_Yarray(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    Factor to scale X values from original curve.
    The C function called is: ```double XYCurves_Get_Xscale(void);```
    */
    func XYCurvesGetXscale() -> Double {
        return XYCurves_Get_Xscale()
    }
        
    /**
    Amount to shift X value from original curve.
    The C function called is: ```double XYCurves_Get_Xshift(void);```
    */
    func XYCurvesGetXshift() -> Double {
        return XYCurves_Get_Xshift()
    }
        
    /**
    Factor to scale Y values from original curve.
    The C function called is: ```double XYCurves_Get_Yscale(void);```
    */
    func XYCurvesGetYscale() -> Double {
        return XYCurves_Get_Yscale()
    }
        
    /**
    amount to shift Y valiue from original curve.
    The C function called is: ```double XYCurves_Get_Yshift(void);```
    */
    func XYCurvesGetYshift() -> Double {
        return XYCurves_Get_Yshift()
    }
        
    /**
    Factor to scale X values from original curve.
    The C function called is: ```void XYCurves_Set_Xscale(double Value);```
    */
    func XYCurvesSetXscale(_ value: Double) {
        XYCurves_Set_Xscale(value)
    }
        
    /**
    The C function called is: ```void XYCurves_Set_Xshift(double Value);```
    */
    func XYCurvesSetXshift(_ value: Double) {
        XYCurves_Set_Xshift(value)
    }
        
    /**
    Amount to scale Y values from original curve. Represents a curve shift..
    The C function called is: ```void XYCurves_Set_Yscale(double Value);```
    */
    func XYCurvesSetYscale(_ value: Double) {
        XYCurves_Set_Yscale(value)
    }
        
    /**
    The C function called is: ```void XYCurves_Set_Yshift(double Value);```
    */
    func XYCurvesSetYshift(_ value: Double) {
        XYCurves_Set_Yshift(value)
    }
        
    /**
    The C function called is: ```void YMatrix_GetCompressedYMatrix(uint16_t factor, uint32_t *nBus, uint32_t *nNz, int32_t **ColPtr, int32_t **RowIdxPtr, double **cValsPtr);```
    */
        
    /**
    The C function called is: ```void YMatrix_ZeroInjCurr(void);```
    */
    func YMatrixZeroInjCurr() {
        YMatrix_ZeroInjCurr()
    }
        
    /**
    The C function called is: ```void YMatrix_GetSourceInjCurrents(void);```
    */
    func YMatrixGetSourceInjCurrents() {
        YMatrix_GetSourceInjCurrents()
    }
        
    /**
    The C function called is: ```void YMatrix_GetPCInjCurr(void);```
    */
    func YMatrixGetPCInjCurr() {
        YMatrix_GetPCInjCurr()
    }
        
    /**
    The C function called is: ```void YMatrix_BuildYMatrixD(int32_t BuildOps, int32_t AllocateVI);```
    */
        
    /**
    The C function called is: ```void YMatrix_AddInAuxCurrents(int32_t SType);```
    */
    func YMatrixAddInAuxCurrents(_ value: Int) {
        YMatrix_AddInAuxCurrents(Int32(value))
    }
        
    /**
    The C function called is: ```void YMatrix_getIpointer(double **IvectorPtr);```
    */
        
    /**
    The C function called is: ```void YMatrix_getVpointer(double **VvectorPtr);```
    */
        
    /**
    The C function called is: ```int32_t YMatrix_SolveSystem(double **NodeVPtr);```
    */
        
    /**
    The C function called is: ```void YMatrix_Set_SystemYChanged(uint16_t arg);```
    */
    func YMatrixSetSystemYChanged(_ value: Int) {
        YMatrix_Set_SystemYChanged(UInt16(value))
    }
        
    /**
    The C function called is: ```uint16_t YMatrix_Get_SystemYChanged(void);```
    */
    func YMatrixGetSystemYChanged() -> Int {
        return Int(YMatrix_Get_SystemYChanged())
    }
        
    /**
    The C function called is: ```void YMatrix_Set_UseAuxCurrents(uint16_t arg);```
    */
    func YMatrixSetUseAuxCurrents(_ value: Int) {
        YMatrix_Set_UseAuxCurrents(UInt16(value))
    }
        
    /**
    The C function called is: ```uint16_t YMatrix_Get_UseAuxCurrents(void);```
    */
    func YMatrixGetUseAuxCurrents() -> Int {
        return Int(YMatrix_Get_UseAuxCurrents())
    }
        
    /**
    The C function called is: ```int32_t CNData_Get_Count(void);```
    */
    func CNDataGetCount() -> Int {
        return Int(CNData_Get_Count())
    }
        
    /**
    The C function called is: ```int32_t CNData_Get_First(void);```
    */
    func CNDataGetFirst() -> Int {
        return Int(CNData_Get_First())
    }
        
    /**
    The C function called is: ```int32_t CNData_Get_Next(void);```
    */
    func CNDataGetNext() -> Int {
        return Int(CNData_Get_Next())
    }
        
    /**
    The C function called is: ```char *CNData_Get_Name(void);```
    */
        
    /**
    The C function called is: ```void CNData_Set_Name(char *Value);```
    */
        
    /**
    The C function called is: ```void CNData_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func CNDataGetAllNames() -> [String] {
        return DSS.getStringArray(CNData_Get_AllNames)
    }
        
    /**
    The C function called is: ```void CNData_Get_AllNames_GR(void);```
    */
    func CNDataGetAllNamesGR() {
        CNData_Get_AllNames_GR()
    }
        
    /**
    The C function called is: ```double CNData_Get_Rdc(void);```
    */
    func CNDataGetRdc() -> Double {
        return CNData_Get_Rdc()
    }
        
    /**
    The C function called is: ```void CNData_Set_Rdc(double Value);```
    */
    func CNDataSetRdc(_ value: Double) {
        CNData_Set_Rdc(value)
    }
        
    /**
    The C function called is: ```double CNData_Get_Rac(void);```
    */
    func CNDataGetRac() -> Double {
        return CNData_Get_Rac()
    }
        
    /**
    The C function called is: ```void CNData_Set_Rac(double Value);```
    */
    func CNDataSetRac(_ value: Double) {
        CNData_Set_Rac(value)
    }
        
    /**
    The C function called is: ```double CNData_Get_GMRac(void);```
    */
    func CNDataGetGMRac() -> Double {
        return CNData_Get_GMRac()
    }
        
    /**
    The C function called is: ```void CNData_Set_GMRac(double Value);```
    */
    func CNDataSetGMRac(_ value: Double) {
        CNData_Set_GMRac(value)
    }
        
    /**
    The C function called is: ```int32_t CNData_Get_GMRUnits(void);```
    */
    func CNDataGetGMRUnits() -> Int {
        return Int(CNData_Get_GMRUnits())
    }
        
    /**
    The C function called is: ```void CNData_Set_GMRUnits(int32_t Value);```
    */
    func CNDataSetGMRUnits(_ value: Int) {
        CNData_Set_GMRUnits(Int32(value))
    }
        
    /**
    The C function called is: ```double CNData_Get_Radius(void);```
    */
    func CNDataGetRadius() -> Double {
        return CNData_Get_Radius()
    }
        
    /**
    The C function called is: ```void CNData_Set_Radius(double Value);```
    */
    func CNDataSetRadius(_ value: Double) {
        CNData_Set_Radius(value)
    }
        
    /**
    The C function called is: ```int32_t CNData_Get_RadiusUnits(void);```
    */
    func CNDataGetRadiusUnits() -> Int {
        return Int(CNData_Get_RadiusUnits())
    }
        
    /**
    The C function called is: ```void CNData_Set_RadiusUnits(int32_t Value);```
    */
    func CNDataSetRadiusUnits(_ value: Int) {
        CNData_Set_RadiusUnits(Int32(value))
    }
        
    /**
    The C function called is: ```int32_t CNData_Get_ResistanceUnits(void);```
    */
    func CNDataGetResistanceUnits() -> Int {
        return Int(CNData_Get_ResistanceUnits())
    }
        
    /**
    The C function called is: ```void CNData_Set_ResistanceUnits(int32_t Value);```
    */
    func CNDataSetResistanceUnits(_ value: Int) {
        CNData_Set_ResistanceUnits(Int32(value))
    }
        
    /**
    The C function called is: ```double CNData_Get_Diameter(void);```
    */
    func CNDataGetDiameter() -> Double {
        return CNData_Get_Diameter()
    }
        
    /**
    The C function called is: ```void CNData_Set_Diameter(double Value);```
    */
    func CNDataSetDiameter(_ value: Double) {
        CNData_Set_Diameter(value)
    }
        
    /**
    The C function called is: ```double CNData_Get_NormAmps(void);```
    */
    func CNDataGetNormAmps() -> Double {
        return CNData_Get_NormAmps()
    }
        
    /**
    The C function called is: ```void CNData_Set_NormAmps(double Value);```
    */
    func CNDataSetNormAmps(_ value: Double) {
        CNData_Set_NormAmps(value)
    }
        
    /**
    The C function called is: ```double CNData_Get_EmergAmps(void);```
    */
    func CNDataGetEmergAmps() -> Double {
        return CNData_Get_EmergAmps()
    }
        
    /**
    The C function called is: ```void CNData_Set_EmergAmps(double Value);```
    */
    func CNDataSetEmergAmps(_ value: Double) {
        CNData_Set_EmergAmps(value)
    }
        
    /**
    The C function called is: ```double CNData_Get_EpsR(void);```
    */
    func CNDataGetEpsR() -> Double {
        return CNData_Get_EpsR()
    }
        
    /**
    The C function called is: ```void CNData_Set_EpsR(double Value);```
    */
    func CNDataSetEpsR(_ value: Double) {
        CNData_Set_EpsR(value)
    }
        
    /**
    The C function called is: ```double CNData_Get_InsLayer(void);```
    */
    func CNDataGetInsLayer() -> Double {
        return CNData_Get_InsLayer()
    }
        
    /**
    The C function called is: ```void CNData_Set_InsLayer(double Value);```
    */
    func CNDataSetInsLayer(_ value: Double) {
        CNData_Set_InsLayer(value)
    }
        
    /**
    The C function called is: ```double CNData_Get_DiaIns(void);```
    */
    func CNDataGetDiaIns() -> Double {
        return CNData_Get_DiaIns()
    }
        
    /**
    The C function called is: ```void CNData_Set_DiaIns(double Value);```
    */
    func CNDataSetDiaIns(_ value: Double) {
        CNData_Set_DiaIns(value)
    }
        
    /**
    The C function called is: ```double CNData_Get_DiaCable(void);```
    */
    func CNDataGetDiaCable() -> Double {
        return CNData_Get_DiaCable()
    }
        
    /**
    The C function called is: ```void CNData_Set_DiaCable(double Value);```
    */
    func CNDataSetDiaCable(_ value: Double) {
        CNData_Set_DiaCable(value)
    }
        
    /**
    The C function called is: ```int32_t CNData_Get_k(void);```
    */
    func CNDataGetK() -> Int {
        return Int(CNData_Get_k())
    }
        
    /**
    The C function called is: ```void CNData_Set_k(int32_t Value);```
    */
    func CNDataSetK(_ value: Int) {
        CNData_Set_k(Int32(value))
    }
        
    /**
    The C function called is: ```double CNData_Get_DiaStrand(void);```
    */
    func CNDataGetDiaStrand() -> Double {
        return CNData_Get_DiaStrand()
    }
        
    /**
    The C function called is: ```void CNData_Set_DiaStrand(double Value);```
    */
    func CNDataSetDiaStrand(_ value: Double) {
        CNData_Set_DiaStrand(value)
    }
        
    /**
    The C function called is: ```double CNData_Get_GmrStrand(void);```
    */
    func CNDataGetGmrStrand() -> Double {
        return CNData_Get_GmrStrand()
    }
        
    /**
    The C function called is: ```void CNData_Set_GmrStrand(double Value);```
    */
    func CNDataSetGmrStrand(_ value: Double) {
        CNData_Set_GmrStrand(value)
    }
        
    /**
    The C function called is: ```double CNData_Get_RStrand(void);```
    */
    func CNDataGetRStrand() -> Double {
        return CNData_Get_RStrand()
    }
        
    /**
    The C function called is: ```void CNData_Set_RStrand(double Value);```
    */
    func CNDataSetRStrand(_ value: Double) {
        CNData_Set_RStrand(value)
    }
        
    /**
    The C function called is: ```int32_t LineGeometries_Get_Count(void);```
    */
    func LineGeometriesGetCount() -> Int {
        return Int(LineGeometries_Get_Count())
    }
        
    /**
    The C function called is: ```int32_t LineGeometries_Get_First(void);```
    */
    func LineGeometriesGetFirst() -> Int {
        return Int(LineGeometries_Get_First())
    }
        
    /**
    The C function called is: ```int32_t LineGeometries_Get_Next(void);```
    */
    func LineGeometriesGetNext() -> Int {
        return Int(LineGeometries_Get_Next())
    }
        
    /**
    The C function called is: ```char* LineGeometries_Get_Name(void);```
    */
    func LineGeometriesGetName() -> String? {
        return DSS.getString(from: LineGeometries_Get_Name)
    }
        
    /**
    The C function called is: ```void LineGeometries_Set_Name(char* Value);```
    */
    func LineGeometriesSetName(_ value: String) {
        LineGeometries_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```int32_t LineGeometries_Get_Nconds(void);```
    */
    func LineGeometriesGetNconds() -> Int {
        return Int(LineGeometries_Get_Nconds())
    }
        
    /**
    The C function called is: ```void LineGeometries_Set_Nconds(int32_t Value);```
    */
    func LineGeometriesSetNconds(_ value: Int) {
        LineGeometries_Set_Nconds(Int32(value))
    }
        
    /**
    The C function called is: ```int32_t LineGeometries_Get_Phases(void);```
    */
    func LineGeometriesGetPhases() -> Int {
        return Int(LineGeometries_Get_Phases())
    }
        
    /**
    The C function called is: ```void LineGeometries_Set_Phases(int32_t Value);```
    */
    func LineGeometriesSetPhases(_ value: Int) {
        LineGeometries_Set_Phases(Int32(value))
    }
        
    /**
    The C function called is: ```void LineGeometries_Get_Cmatrix(double** ResultPtr, int32_t* ResultCount, double Frequency, double Length, int32_t Units);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Cmatrix_GR(double Frequency, double Length, int32_t Units);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Rmatrix(double** ResultPtr, int32_t* ResultCount, double Frequency, double Length, int32_t Units);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Rmatrix_GR(double Frequency, double Length, int32_t Units);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Xmatrix(double** ResultPtr, int32_t* ResultCount, double Frequency, double Length, int32_t Units);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Xmatrix_GR(double Frequency, double Length, int32_t Units);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Zmatrix(double** ResultPtr, int32_t* ResultCount, double Frequency, double Length, int32_t Units);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Zmatrix_GR(double Frequency, double Length, int32_t Units);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Units(int32_t** ResultPtr, int32_t* ResultCount);```
    */
    func LineGeometriesGetUnits() -> [Int] {
        return DSS.getIntArray(LineGeometries_Get_Units)
    }
        
    /**
    The C function called is: ```void LineGeometries_Get_Units_GR(void);```
    */
    func LineGeometriesGetUnitsGR() {
        LineGeometries_Get_Units_GR()
    }
        
    /**
    The C function called is: ```void LineGeometries_Set_Units(int32_t *ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Xcoords(double** ResultPtr, int32_t* ResultCount);```
    */
    func LineGeometriesGetXcoords() -> [Double] {
        return DSS.getDoubleArray(LineGeometries_Get_Xcoords)
    }
        
    /**
    The C function called is: ```void LineGeometries_Get_Xcoords_GR(void);```
    */
    func LineGeometriesGetXcoordsGR() {
        LineGeometries_Get_Xcoords_GR()
    }
        
    /**
    The C function called is: ```void LineGeometries_Set_Xcoords(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Ycoords(double** ResultPtr, int32_t* ResultCount);```
    */
    func LineGeometriesGetYcoords() -> [Double] {
        return DSS.getDoubleArray(LineGeometries_Get_Ycoords)
    }
        
    /**
    The C function called is: ```void LineGeometries_Get_Ycoords_GR(void);```
    */
    func LineGeometriesGetYcoordsGR() {
        LineGeometries_Get_Ycoords_GR()
    }
        
    /**
    The C function called is: ```void LineGeometries_Set_Ycoords(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void LineGeometries_Get_Conductors(char*** ResultPtr, int32_t* ResultCount);```
    */
    func LineGeometriesGetConductors() -> [String] {
        return DSS.getStringArray(LineGeometries_Get_Conductors)
    }
        
    /**
    The C function called is: ```void LineGeometries_Get_Conductors_GR(void);```
    */
    func LineGeometriesGetConductorsGR() {
        LineGeometries_Get_Conductors_GR()
    }
        
    /**
    The C function called is: ```uint16_t LineGeometries_Get_Reduce(void);```
    */
    func LineGeometriesGetReduce() -> Int {
        return Int(LineGeometries_Get_Reduce())
    }
        
    /**
    The C function called is: ```void LineGeometries_Set_Reduce(uint16_t Value);```
    */
    func LineGeometriesSetReduce(_ value: Int) {
        LineGeometries_Set_Reduce(UInt16(value))
    }
        
    /**
    The C function called is: ```double LineGeometries_Get_RhoEarth(void);```
    */
    func LineGeometriesGetRhoEarth() -> Double {
        return LineGeometries_Get_RhoEarth()
    }
        
    /**
    The C function called is: ```void LineGeometries_Set_RhoEarth(double Value);```
    */
    func LineGeometriesSetRhoEarth(_ value: Double) {
        LineGeometries_Set_RhoEarth(value)
    }
        
    /**
    The C function called is: ```double LineGeometries_Get_NormAmps(void);```
    */
    func LineGeometriesGetNormAmps() -> Double {
        return LineGeometries_Get_NormAmps()
    }
        
    /**
    The C function called is: ```void LineGeometries_Set_NormAmps(double Value);```
    */
    func LineGeometriesSetNormAmps(_ value: Double) {
        LineGeometries_Set_NormAmps(value)
    }
        
    /**
    The C function called is: ```double LineGeometries_Get_EmergAmps(void);```
    */
    func LineGeometriesGetEmergAmps() -> Double {
        return LineGeometries_Get_EmergAmps()
    }
        
    /**
    The C function called is: ```void LineGeometries_Set_EmergAmps(double Value);```
    */
    func LineGeometriesSetEmergAmps(_ value: Double) {
        LineGeometries_Set_EmergAmps(value)
    }
        
    /**
    The C function called is: ```void LineGeometries_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func LineGeometriesGetAllNames() -> [String] {
        return DSS.getStringArray(LineGeometries_Get_AllNames)
    }
        
    /**
    The C function called is: ```void LineGeometries_Get_AllNames_GR(void);```
    */
    func LineGeometriesGetAllNamesGR() {
        LineGeometries_Get_AllNames_GR()
    }
        
    /**
    The C function called is: ```int32_t LineSpacings_Get_Count(void);```
    */
    func LineSpacingsGetCount() -> Int {
        return Int(LineSpacings_Get_Count())
    }
        
    /**
    The C function called is: ```int32_t LineSpacings_Get_First(void);```
    */
    func LineSpacingsGetFirst() -> Int {
        return Int(LineSpacings_Get_First())
    }
        
    /**
    The C function called is: ```int32_t LineSpacings_Get_Next(void);```
    */
    func LineSpacingsGetNext() -> Int {
        return Int(LineSpacings_Get_Next())
    }
        
    /**
    The C function called is: ```char* LineSpacings_Get_Name(void);```
    */
    func LineSpacingsGetName() -> String? {
        return DSS.getString(from: LineSpacings_Get_Name)
    }
        
    /**
    The C function called is: ```void LineSpacings_Set_Name(char* Value);```
    */
    func LineSpacingsSetName(_ value: String) {
        LineSpacings_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```int32_t LineSpacings_Get_Nconds(void);```
    */
    func LineSpacingsGetNconds() -> Int {
        return Int(LineSpacings_Get_Nconds())
    }
        
    /**
    The C function called is: ```void LineSpacings_Set_Nconds(int32_t Value);```
    */
    func LineSpacingsSetNconds(_ value: Int) {
        LineSpacings_Set_Nconds(Int32(value))
    }
        
    /**
    The C function called is: ```int32_t LineSpacings_Get_Phases(void);```
    */
    func LineSpacingsGetPhases() -> Int {
        return Int(LineSpacings_Get_Phases())
    }
        
    /**
    The C function called is: ```void LineSpacings_Set_Phases(int32_t Value);```
    */
    func LineSpacingsSetPhases(_ value: Int) {
        LineSpacings_Set_Phases(Int32(value))
    }
        
    /**
    The C function called is: ```int32_t LineSpacings_Get_Units(void);```
    */
    func LineSpacingsGetUnits() -> Int {
        return Int(LineSpacings_Get_Units())
    }
        
    /**
    The C function called is: ```void LineSpacings_Set_Units(int32_t Value);```
    */
    func LineSpacingsSetUnits(_ value: Int) {
        LineSpacings_Set_Units(Int32(value))
    }
        
    /**
    The C function called is: ```void LineSpacings_Get_Xcoords(double** ResultPtr, int32_t* ResultCount);```
    */
    func LineSpacingsGetXcoords() -> [Double] {
        return DSS.getDoubleArray(LineSpacings_Get_Xcoords)
    }
        
    /**
    The C function called is: ```void LineSpacings_Get_Xcoords_GR(void);```
    */
    func LineSpacingsGetXcoordsGR() {
        LineSpacings_Get_Xcoords_GR()
    }
        
    /**
    The C function called is: ```void LineSpacings_Set_Xcoords(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void LineSpacings_Get_Ycoords(double** ResultPtr, int32_t* ResultCount);```
    */
    func LineSpacingsGetYcoords() -> [Double] {
        return DSS.getDoubleArray(LineSpacings_Get_Ycoords)
    }
        
    /**
    The C function called is: ```void LineSpacings_Get_Ycoords_GR(void);```
    */
    func LineSpacingsGetYcoordsGR() {
        LineSpacings_Get_Ycoords_GR()
    }
        
    /**
    The C function called is: ```void LineSpacings_Set_Ycoords(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void LineSpacings_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func LineSpacingsGetAllNames() -> [String] {
        return DSS.getStringArray(LineSpacings_Get_AllNames)
    }
        
    /**
    The C function called is: ```void LineSpacings_Get_AllNames_GR(void);```
    */
    func LineSpacingsGetAllNamesGR() {
        LineSpacings_Get_AllNames_GR()
    }
        
    /**
    The C function called is: ```int32_t Loads_Get_Phases(void);```
    */
    func LoadsGetPhases() -> Int {
        return Int(Loads_Get_Phases())
    }
        
    /**
    The C function called is: ```void Loads_Set_Phases(int32_t Integer);```
    */
    func LoadsSetPhases(_ value: Int) {
        Loads_Set_Phases(Int32(value))
    }
        
    /**
    The C function called is: ```void Reactors_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func ReactorsGetAllNames() -> [String] {
        return DSS.getStringArray(Reactors_Get_AllNames)
    }
        
    /**
    The C function called is: ```void Reactors_Get_AllNames_GR(void);```
    */
    func ReactorsGetAllNamesGR() {
        Reactors_Get_AllNames_GR()
    }
        
    /**
    The C function called is: ```char* Reactors_Get_Name(void);```
    */
    func ReactorsGetName() -> String? {
        return DSS.getString(from: Reactors_Get_Name)
    }
        
    /**
    The C function called is: ```void Reactors_Set_Name(char *Value);```
    */
        
    /**
    The C function called is: ```int32_t Reactors_Get_First(void);```
    */
    func ReactorsGetFirst() -> Int {
        return Int(Reactors_Get_First())
    }
        
    /**
    The C function called is: ```int32_t Reactors_Get_Next(void);```
    */
    func ReactorsGetNext() -> Int {
        return Int(Reactors_Get_Next())
    }
        
    /**
    The C function called is: ```int32_t Reactors_Get_Count(void);```
    */
    func ReactorsGetCount() -> Int {
        return Int(Reactors_Get_Count())
    }
        
    /**
    The C function called is: ```double Reactors_Get_kV(void);```
    */
    func ReactorsGetKV() -> Double {
        return Reactors_Get_kV()
    }
        
    /**
    The C function called is: ```void Reactors_Set_kV(double Value);```
    */
    func ReactorsSetKV(_ value: Double) {
        Reactors_Set_kV(value)
    }
        
    /**
    The C function called is: ```double Reactors_Get_kvar(void);```
    */
    func ReactorsGetKvar() -> Double {
        return Reactors_Get_kvar()
    }
        
    /**
    The C function called is: ```void Reactors_Set_kvar(double Value);```
    */
    func ReactorsSetKvar(_ value: Double) {
        Reactors_Set_kvar(value)
    }
        
    /**
    The C function called is: ```int32_t Reactors_Get_Phases(void);```
    */
    func ReactorsGetPhases() -> Int {
        return Int(Reactors_Get_Phases())
    }
        
    /**
    The C function called is: ```void Reactors_Set_Phases(int32_t Integer);```
    */
    func ReactorsSetPhases(_ value: Int) {
        Reactors_Set_Phases(Int32(value))
    }
        
    /**
    The C function called is: ```uint16_t Reactors_Get_IsDelta(void);```
    */
    func ReactorsGetIsDelta() -> Int {
        return Int(Reactors_Get_IsDelta())
    }
        
    /**
    The C function called is: ```void Reactors_Set_IsDelta(uint16_t Value);```
    */
    func ReactorsSetIsDelta(_ value: Int) {
        Reactors_Set_IsDelta(UInt16(value))
    }
        
    /**
    The C function called is: ```uint16_t Reactors_Get_Parallel(void);```
    */
    func ReactorsGetParallel() -> Int {
        return Int(Reactors_Get_Parallel())
    }
        
    /**
    The C function called is: ```void Reactors_Set_Parallel(uint16_t Value);```
    */
    func ReactorsSetParallel(_ value: Int) {
        Reactors_Set_Parallel(UInt16(value))
    }
        
    /**
    The C function called is: ```double Reactors_Get_LmH(void);```
    */
    func ReactorsGetLmH() -> Double {
        return Reactors_Get_LmH()
    }
        
    /**
    The C function called is: ```void Reactors_Set_LmH(double Value);```
    */
    func ReactorsSetLmH(_ value: Double) {
        Reactors_Set_LmH(value)
    }
        
    /**
    The C function called is: ```char* Reactors_Get_Bus1(void);```
    */
    func ReactorsGetBus1() -> String? {
        return DSS.getString(from: Reactors_Get_Bus1)
    }
        
    /**
    The C function called is: ```char* Reactors_Get_Bus2(void);```
    */
    func ReactorsGetBus2() -> String? {
        return DSS.getString(from: Reactors_Get_Bus2)
    }
        
    /**
    The C function called is: ```void Reactors_Set_Bus1(char* Value);```
    */
    func ReactorsSetBus1(_ value: String) {
        Reactors_Set_Bus1(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Reactors_Set_Bus2(char* Value);```
    */
    func ReactorsSetBus2(_ value: String) {
        Reactors_Set_Bus2(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```double Reactors_Get_R(void);```
    */
    func ReactorsGetR() -> Double {
        return Reactors_Get_R()
    }
        
    /**
    The C function called is: ```void Reactors_Set_R(double Value);```
    */
    func ReactorsSetR(_ value: Double) {
        Reactors_Set_R(value)
    }
        
    /**
    The C function called is: ```double Reactors_Get_X(void);```
    */
    func ReactorsGetX() -> Double {
        return Reactors_Get_X()
    }
        
    /**
    The C function called is: ```void Reactors_Set_X(double Value);```
    */
    func ReactorsSetX(_ value: Double) {
        Reactors_Set_X(value)
    }
        
    /**
    The C function called is: ```double Reactors_Get_Rp(void);```
    */
    func ReactorsGetRp() -> Double {
        return Reactors_Get_Rp()
    }
        
    /**
    The C function called is: ```void Reactors_Set_Rp(double Value);```
    */
    func ReactorsSetRp(_ value: Double) {
        Reactors_Set_Rp(value)
    }
        
    /**
    The C function called is: ```char* Reactors_Get_RCurve(void);```
    */
    func ReactorsGetRCurve() -> String? {
        return DSS.getString(from: Reactors_Get_RCurve)
    }
        
    /**
    The C function called is: ```void Reactors_Set_RCurve(char* Value);```
    */
    func ReactorsSetRCurve(_ value: String) {
        Reactors_Set_RCurve(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```char* Reactors_Get_LCurve(void);```
    */
    func ReactorsGetLCurve() -> String? {
        return DSS.getString(from: Reactors_Get_LCurve)
    }
        
    /**
    The C function called is: ```void Reactors_Set_LCurve(char* Value);```
    */
    func ReactorsSetLCurve(_ value: String) {
        Reactors_Set_LCurve(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void Reactors_Get_Rmatrix(double** ResultPtr, int32_t* ResultCount);```
    */
    func ReactorsGetRmatrix() -> [Double] {
        return DSS.getDoubleArray(Reactors_Get_Rmatrix)
    }
        
    /**
    The C function called is: ```void Reactors_Get_Rmatrix_GR(void);```
    */
    func ReactorsGetRmatrixGR() {
        Reactors_Get_Rmatrix_GR()
    }
        
    /**
    The C function called is: ```void Reactors_Set_Rmatrix(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void Reactors_Get_Xmatrix(double** ResultPtr, int32_t* ResultCount);```
    */
    func ReactorsGetXmatrix() -> [Double] {
        return DSS.getDoubleArray(Reactors_Get_Xmatrix)
    }
        
    /**
    The C function called is: ```void Reactors_Get_Xmatrix_GR(void);```
    */
    func ReactorsGetXmatrixGR() {
        Reactors_Get_Xmatrix_GR()
    }
        
    /**
    The C function called is: ```void Reactors_Set_Xmatrix(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void Reactors_Get_Z(double** ResultPtr, int32_t* ResultCount);```
    */
    func ReactorsGetZ() -> [Double] {
        return DSS.getDoubleArray(Reactors_Get_Z)
    }
        
    /**
    The C function called is: ```void Reactors_Get_Z_GR(void);```
    */
    func ReactorsGetZGR() {
        Reactors_Get_Z_GR()
    }
        
    /**
    The C function called is: ```void Reactors_Set_Z(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void Reactors_Get_Z1(double** ResultPtr, int32_t* ResultCount);```
    */
    func ReactorsGetZ1() -> [Double] {
        return DSS.getDoubleArray(Reactors_Get_Z1)
    }
        
    /**
    The C function called is: ```void Reactors_Get_Z1_GR(void);```
    */
    func ReactorsGetZ1GR() {
        Reactors_Get_Z1_GR()
    }
        
    /**
    The C function called is: ```void Reactors_Set_Z1(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void Reactors_Get_Z2(double** ResultPtr, int32_t* ResultCount);```
    */
    func ReactorsGetZ2() -> [Double] {
        return DSS.getDoubleArray(Reactors_Get_Z2)
    }
        
    /**
    The C function called is: ```void Reactors_Get_Z2_GR(void);```
    */
    func ReactorsGetZ2GR() {
        Reactors_Get_Z2_GR()
    }
        
    /**
    The C function called is: ```void Reactors_Set_Z2(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```void Reactors_Get_Z0(double** ResultPtr, int32_t* ResultCount);```
    */
    func ReactorsGetZ0() -> [Double] {
        return DSS.getDoubleArray(Reactors_Get_Z0)
    }
        
    /**
    The C function called is: ```void Reactors_Get_Z0_GR(void);```
    */
    func ReactorsGetZ0GR() {
        Reactors_Get_Z0_GR()
    }
        
    /**
    The C function called is: ```void Reactors_Set_Z0(double* ValuePtr, int32_t ValueCount);```
    */
        
    /**
    The C function called is: ```int32_t Reactors_Get_SpecType(void);```
    */
    func ReactorsGetSpecType() -> Int {
        return Int(Reactors_Get_SpecType())
    }
        
    /**
    The C function called is: ```int32_t TSData_Get_Count(void);```
    */
    func TSDataGetCount() -> Int {
        return Int(TSData_Get_Count())
    }
        
    /**
    The C function called is: ```int32_t TSData_Get_First(void);```
    */
    func TSDataGetFirst() -> Int {
        return Int(TSData_Get_First())
    }
        
    /**
    The C function called is: ```int32_t TSData_Get_Next(void);```
    */
    func TSDataGetNext() -> Int {
        return Int(TSData_Get_Next())
    }
        
    /**
    The C function called is: ```char *TSData_Get_Name(void);```
    */
        
    /**
    The C function called is: ```void TSData_Set_Name(char *Value);```
    */
        
    /**
    The C function called is: ```void TSData_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func TSDataGetAllNames() -> [String] {
        return DSS.getStringArray(TSData_Get_AllNames)
    }
        
    /**
    The C function called is: ```void TSData_Get_AllNames_GR(void);```
    */
    func TSDataGetAllNamesGR() {
        TSData_Get_AllNames_GR()
    }
        
    /**
    The C function called is: ```double TSData_Get_Rdc(void);```
    */
    func TSDataGetRdc() -> Double {
        return TSData_Get_Rdc()
    }
        
    /**
    The C function called is: ```void TSData_Set_Rdc(double Value);```
    */
    func TSDataSetRdc(_ value: Double) {
        TSData_Set_Rdc(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_Rac(void);```
    */
    func TSDataGetRac() -> Double {
        return TSData_Get_Rac()
    }
        
    /**
    The C function called is: ```void TSData_Set_Rac(double Value);```
    */
    func TSDataSetRac(_ value: Double) {
        TSData_Set_Rac(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_GMRac(void);```
    */
    func TSDataGetGMRac() -> Double {
        return TSData_Get_GMRac()
    }
        
    /**
    The C function called is: ```void TSData_Set_GMRac(double Value);```
    */
    func TSDataSetGMRac(_ value: Double) {
        TSData_Set_GMRac(value)
    }
        
    /**
    The C function called is: ```int32_t TSData_Get_GMRUnits(void);```
    */
    func TSDataGetGMRUnits() -> Int {
        return Int(TSData_Get_GMRUnits())
    }
        
    /**
    The C function called is: ```void TSData_Set_GMRUnits(int32_t Value);```
    */
    func TSDataSetGMRUnits(_ value: Int) {
        TSData_Set_GMRUnits(Int32(value))
    }
        
    /**
    The C function called is: ```double TSData_Get_Radius(void);```
    */
    func TSDataGetRadius() -> Double {
        return TSData_Get_Radius()
    }
        
    /**
    The C function called is: ```void TSData_Set_Radius(double Value);```
    */
    func TSDataSetRadius(_ value: Double) {
        TSData_Set_Radius(value)
    }
        
    /**
    The C function called is: ```int32_t TSData_Get_RadiusUnits(void);```
    */
    func TSDataGetRadiusUnits() -> Int {
        return Int(TSData_Get_RadiusUnits())
    }
        
    /**
    The C function called is: ```void TSData_Set_RadiusUnits(int32_t Value);```
    */
    func TSDataSetRadiusUnits(_ value: Int) {
        TSData_Set_RadiusUnits(Int32(value))
    }
        
    /**
    The C function called is: ```int32_t TSData_Get_ResistanceUnits(void);```
    */
    func TSDataGetResistanceUnits() -> Int {
        return Int(TSData_Get_ResistanceUnits())
    }
        
    /**
    The C function called is: ```void TSData_Set_ResistanceUnits(int32_t Value);```
    */
    func TSDataSetResistanceUnits(_ value: Int) {
        TSData_Set_ResistanceUnits(Int32(value))
    }
        
    /**
    The C function called is: ```double TSData_Get_Diameter(void);```
    */
    func TSDataGetDiameter() -> Double {
        return TSData_Get_Diameter()
    }
        
    /**
    The C function called is: ```void TSData_Set_Diameter(double Value);```
    */
    func TSDataSetDiameter(_ value: Double) {
        TSData_Set_Diameter(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_NormAmps(void);```
    */
    func TSDataGetNormAmps() -> Double {
        return TSData_Get_NormAmps()
    }
        
    /**
    The C function called is: ```void TSData_Set_NormAmps(double Value);```
    */
    func TSDataSetNormAmps(_ value: Double) {
        TSData_Set_NormAmps(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_EmergAmps(void);```
    */
    func TSDataGetEmergAmps() -> Double {
        return TSData_Get_EmergAmps()
    }
        
    /**
    The C function called is: ```void TSData_Set_EmergAmps(double Value);```
    */
    func TSDataSetEmergAmps(_ value: Double) {
        TSData_Set_EmergAmps(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_EpsR(void);```
    */
    func TSDataGetEpsR() -> Double {
        return TSData_Get_EpsR()
    }
        
    /**
    The C function called is: ```void TSData_Set_EpsR(double Value);```
    */
    func TSDataSetEpsR(_ value: Double) {
        TSData_Set_EpsR(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_InsLayer(void);```
    */
    func TSDataGetInsLayer() -> Double {
        return TSData_Get_InsLayer()
    }
        
    /**
    The C function called is: ```void TSData_Set_InsLayer(double Value);```
    */
    func TSDataSetInsLayer(_ value: Double) {
        TSData_Set_InsLayer(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_DiaIns(void);```
    */
    func TSDataGetDiaIns() -> Double {
        return TSData_Get_DiaIns()
    }
        
    /**
    The C function called is: ```void TSData_Set_DiaIns(double Value);```
    */
    func TSDataSetDiaIns(_ value: Double) {
        TSData_Set_DiaIns(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_DiaCable(void);```
    */
    func TSDataGetDiaCable() -> Double {
        return TSData_Get_DiaCable()
    }
        
    /**
    The C function called is: ```void TSData_Set_DiaCable(double Value);```
    */
    func TSDataSetDiaCable(_ value: Double) {
        TSData_Set_DiaCable(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_DiaShield(void);```
    */
    func TSDataGetDiaShield() -> Double {
        return TSData_Get_DiaShield()
    }
        
    /**
    The C function called is: ```void TSData_Set_DiaShield(double Value);```
    */
    func TSDataSetDiaShield(_ value: Double) {
        TSData_Set_DiaShield(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_TapeLayer(void);```
    */
    func TSDataGetTapeLayer() -> Double {
        return TSData_Get_TapeLayer()
    }
        
    /**
    The C function called is: ```void TSData_Set_TapeLayer(double Value);```
    */
    func TSDataSetTapeLayer(_ value: Double) {
        TSData_Set_TapeLayer(value)
    }
        
    /**
    The C function called is: ```double TSData_Get_TapeLap(void);```
    */
    func TSDataGetTapeLap() -> Double {
        return TSData_Get_TapeLap()
    }
        
    /**
    The C function called is: ```void TSData_Set_TapeLap(double Value);```
    */
    func TSDataSetTapeLap(_ value: Double) {
        TSData_Set_TapeLap(value)
    }
        
    /**
    The C function called is: ```int32_t WireData_Get_Count(void);```
    */
    func WireDataGetCount() -> Int {
        return Int(WireData_Get_Count())
    }
        
    /**
    The C function called is: ```int32_t WireData_Get_First(void);```
    */
    func WireDataGetFirst() -> Int {
        return Int(WireData_Get_First())
    }
        
    /**
    The C function called is: ```int32_t WireData_Get_Next(void);```
    */
    func WireDataGetNext() -> Int {
        return Int(WireData_Get_Next())
    }
        
    /**
    The C function called is: ```char* WireData_Get_Name(void);```
    */
    func WireDataGetName() -> String? {
        return DSS.getString(from: WireData_Get_Name)
    }
        
    /**
    The C function called is: ```void WireData_Set_Name(char* Value);```
    */
    func WireDataSetName(_ value: String) {
        WireData_Set_Name(DSS.getPointer(to: value))
    }
        
    /**
    The C function called is: ```void WireData_Get_AllNames(char*** ResultPtr, int32_t* ResultCount);```
    */
    func WireDataGetAllNames() -> [String] {
        return DSS.getStringArray(WireData_Get_AllNames)
    }
        
    /**
    The C function called is: ```void WireData_Get_AllNames_GR(void);```
    */
    func WireDataGetAllNamesGR() {
        WireData_Get_AllNames_GR()
    }
        
    /**
    The C function called is: ```double WireData_Get_Rdc(void);```
    */
    func WireDataGetRdc() -> Double {
        return WireData_Get_Rdc()
    }
        
    /**
    The C function called is: ```void WireData_Set_Rdc(double Value);```
    */
    func WireDataSetRdc(_ value: Double) {
        WireData_Set_Rdc(value)
    }
        
    /**
    The C function called is: ```double WireData_Get_Rac(void);```
    */
    func WireDataGetRac() -> Double {
        return WireData_Get_Rac()
    }
        
    /**
    The C function called is: ```void WireData_Set_Rac(double Value);```
    */
    func WireDataSetRac(_ value: Double) {
        WireData_Set_Rac(value)
    }
        
    /**
    The C function called is: ```double WireData_Get_GMRac(void);```
    */
    func WireDataGetGMRac() -> Double {
        return WireData_Get_GMRac()
    }
        
    /**
    The C function called is: ```void WireData_Set_GMRac(double Value);```
    */
    func WireDataSetGMRac(_ value: Double) {
        WireData_Set_GMRac(value)
    }
        
    /**
    The C function called is: ```int32_t WireData_Get_GMRUnits(void);```
    */
    func WireDataGetGMRUnits() -> Int {
        return Int(WireData_Get_GMRUnits())
    }
        
    /**
    The C function called is: ```void WireData_Set_GMRUnits(int32_t Value);```
    */
    func WireDataSetGMRUnits(_ value: Int) {
        WireData_Set_GMRUnits(Int32(value))
    }
        
    /**
    The C function called is: ```double WireData_Get_Radius(void);```
    */
    func WireDataGetRadius() -> Double {
        return WireData_Get_Radius()
    }
        
    /**
    The C function called is: ```void WireData_Set_Radius(double Value);```
    */
    func WireDataSetRadius(_ value: Double) {
        WireData_Set_Radius(value)
    }
        
    /**
    The C function called is: ```int32_t WireData_Get_RadiusUnits(void);```
    */
    func WireDataGetRadiusUnits() -> Int {
        return Int(WireData_Get_RadiusUnits())
    }
        
    /**
    The C function called is: ```void WireData_Set_RadiusUnits(int32_t Value);```
    */
    func WireDataSetRadiusUnits(_ value: Int) {
        WireData_Set_RadiusUnits(Int32(value))
    }
        
    /**
    The C function called is: ```int32_t WireData_Get_ResistanceUnits(void);```
    */
    func WireDataGetResistanceUnits() -> Int {
        return Int(WireData_Get_ResistanceUnits())
    }
        
    /**
    The C function called is: ```void WireData_Set_ResistanceUnits(int32_t Value);```
    */
    func WireDataSetResistanceUnits(_ value: Int) {
        WireData_Set_ResistanceUnits(Int32(value))
    }
        
    /**
    The C function called is: ```double WireData_Get_Diameter(void);```
    */
    func WireDataGetDiameter() -> Double {
        return WireData_Get_Diameter()
    }
        
    /**
    The C function called is: ```void WireData_Set_Diameter(double Value);```
    */
    func WireDataSetDiameter(_ value: Double) {
        WireData_Set_Diameter(value)
    }
        
    /**
    The C function called is: ```double WireData_Get_NormAmps(void);```
    */
    func WireDataGetNormAmps() -> Double {
        return WireData_Get_NormAmps()
    }
        
    /**
    The C function called is: ```void WireData_Set_NormAmps(double Value);```
    */
    func WireDataSetNormAmps(_ value: Double) {
        WireData_Set_NormAmps(value)
    }
        
    /**
    The C function called is: ```double WireData_Get_EmergAmps(void);```
    */
    func WireDataGetEmergAmps() -> Double {
        return WireData_Get_EmergAmps()
    }
        
    /**
    The C function called is: ```void WireData_Set_EmergAmps(double Value);```
    */
    func WireDataSetEmergAmps(_ value: Double) {
        WireData_Set_EmergAmps(value)
    }
        
    /**
    Set the next bus as active. Returns -1 if no more buses, 0 otherwise..
    The C function called is: ```int32_t Bus_Get_Next(void);```
    */
    func BusGetNext() -> Int {
        return Int(Bus_Get_Next())
    }
    

    static func getPointer(to string: String) -> DSSString {
        return DSSString(mutating: (string as NSString).utf8String)!
    }

    static let getStringArray: (DSSStringArrayFunc) -> [String]  = {
        dssFunction -> [String] in
        var elementArray: DSSStringArray? = nil
        var elementCount = Int32(0)
        dssFunction(&elementArray, &elementCount)

        var elements = [String]()
        for i in 0 ..< Int(elementCount) {
            elements += [String(cString: elementArray![i]!)]
        }

        return elements
    }

    static let getStringPhaseArray: (DSSStringArrayPhaseFunc, Int32) -> [String] = {
        (dssFunction, phase) -> [String] in

        var elementArray: DSSStringArray? = nil
        var elementCount = Int32(0)
        dssFunction(&elementArray, &elementCount, phase)

        var elements = [String]()
        for i in 0 ..< Int(elementCount) {
            elements += [String(cString: elementArray![i]!)]
        }

        return elements
    }

    static let getDoubleArray: (DSSDoubleArrayFunc) -> [Double] = {
        dssFunction -> [Double] in
        var elementArray: DSSDoubleArray? = nil
        var elementCount = Int32(0)
        dssFunction(&elementArray, &elementCount)

        var elements = [Double]()
        for i in 0 ..< Int(elementCount) {
            elements += [elementArray![i]]
        }

        return elements
    }

    static let getDoublePhaseArray: (DSSDoubleArrayPhaseFunc, Int32) -> [Double] = {
        (dssFunction, phase) -> [Double] in

        var elementArray: DSSDoubleArray? = nil
        var elementCount = Int32(0)
        dssFunction(&elementArray, &elementCount, phase)

        var elements = [Double]()
        for i in 0 ..< Int(elementCount) {
            elements += [elementArray![i]]
        }

        return elements
    }

    static let getIntArray: (Int32ArrayFunc) -> [Int] = {
        dssFunction -> [Int] in
        var elementArray: Int32Array? = nil
        var elementCount = Int32(0)
        dssFunction(&elementArray, &elementCount)

        var elements = [Int]()
        for i in 0 ..< Int(elementCount) {
            elements += [Int(elementArray![i])]
        }

        return elements
    }

    static func getString(from function: () -> UnsafeMutablePointer<Int8>?) -> String? {
        if let string = function() {
            return String(cString: string)
        }
        return nil
    }

    static func getString(from function: (Int32) -> UnsafeMutablePointer<Int8>?, for value: Int) -> String? {
        if let string = function(Int32(value)) {
            return String(cString: string)
        }
        return nil
    }

}
