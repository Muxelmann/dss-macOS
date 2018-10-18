//
//  main.swift
//  dss_cmd
//
//  Created by Maximilian Zangs on 18.10.18.
//  Copyright © 2018 Max Zangs. All rights reserved.
//

import Foundation

print("Hello, World!")

let dss = DSS()
let s = "compile /dss-macOS/LVTestCase/Master.dss"
dss.TextSetCommand(s)

//let cs = (s as NSString).utf8String
//var buffer = UnsafeMutablePointer(mutating: cs)
//Text_Set_Command(buffer)
print("2")


//for i in 0..<30 {
//    dss.Solution.SetMode(i)
//    print("MODE(\(i)): \(dss.Solution.GetModeID() ?? "unknown")")
//}

//dss.Solution.SetMode(0)
dss.SolutionSetMode(0)
//print("MODE(0): \(dss.Solution.GetModeID() ?? "unknown")")
print("MODE(0): \(dss.SolutionGetModeID() ?? "unknown")")
//dss.Solution.Solve()
dss.SolutionSolve()
//Solution_Solve()
print("3")
//
////var v1: Double = 0.0
////var v2 = UnsafeMutablePointer<Double>?(&v1)
//////var voltages = UnsafeMutablePointer<UnsafeMutablePointer<Double>?>?(&v2)
////var voltages: UnsafeMutablePointer<UnsafeMutablePointer<Double>?>? = nil
////var numLoadsTemp: Int32 = 0
////var numNodes = UnsafeMutablePointer<Int32>(&numLoadsTemp)

//let lineCount = dss.Lines.GetCount()
let lineCount = dss.LinesGetCount()
//var nodes = Lines_Get_Count()
////Circuit_Get_AllBusVolts(voltages, numNodes);
print("4")
//
////print("voltages \(voltages?.pointee)")
print("nodes \(lineCount)")

//print(dss.Loads.GetAllNames())
print(dss.LoadsGetAllNames())

