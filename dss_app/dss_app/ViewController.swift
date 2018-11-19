//
//  ViewController.swift
//  dss_app
//
//  Created by Maximilian Zangs on 19.10.18.
//  Copyright © 2018 Max Zangs. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var dss = DSS()
    
    @IBOutlet weak var LoadedFileTextField: NSTextField!
    @IBOutlet weak var LoadedCircuitScrollView: NSScrollView!
    
    @IBAction func loadFile(_ sender: NSButton) {
        
        var dssPath: String? = nil
        
        let loadDssDialog = NSOpenPanel()
        loadDssDialog.title = "Choose an OpenDSS file"
        loadDssDialog.showsResizeIndicator = true
        loadDssDialog.allowsMultipleSelection = false
        loadDssDialog.canChooseDirectories = false
        loadDssDialog.canChooseFiles = true
        loadDssDialog.canCreateDirectories = false
        loadDssDialog.allowedFileTypes = ["dss", "txt"]

        if (loadDssDialog.runModal() == NSApplication.ModalResponse.OK) {
            if let result = loadDssDialog.url {
                dssPath = result.path
            }
        }
        
        if dssPath != nil {
            
            print(dssPath!)
            dss.ClearAll()
            dss.Reset()

            dss.SolutionSetMode(0)
            dss.TextSetCommand("compile \"\(dssPath!)\"")
            dss.SolutionSolve()
            
            LoadedCircuitScrollView.documentView?.insertText("Solution: \(dss.TextGetResult() ?? "unknown solution")\n")
            LoadedCircuitScrollView.documentView?.insertText("Loading DSS for \(dss.GetVersion() ?? "unknown version")\n")
            LoadedCircuitScrollView.documentView?.insertText("Buses: \(dss.CircuitGetNumBuses())\n")
            LoadedCircuitScrollView.documentView?.insertText("Lines: \(dss.LinesGetCount())\n")
            LoadedCircuitScrollView.documentView?.insertText("Loads: \(dss.LoadsGetCount())\n")
            
            var loadID = dss.LoadsGetFirst()
            while loadID > 0 {
                LoadedCircuitScrollView.documentView?.insertText("- \(dss.LoadsGetName()!)\n")
                loadID = dss.LoadsGetNext()
            }
            
            LoadedCircuitScrollView.documentView?.insertText("Monitors: \(dss.MonitorsGetCount())\n")
            
            dss.SolutionSolve()
            dss.MonitorsSample()
            dss.SolutionSolve()
            dss.MonitorsSample()
            dss.SolutionSolve()
            dss.MonitorsSample()
            dss.SolutionSolve()
            dss.MonitorsSample()
            dss.SolutionSolve()
            dss.MonitorsSample()
            dss.SolutionSolve()
            dss.MonitorsSample()
            dss.SolutionSolve()
            dss.MonitorsSample()
//            print(dss.LoadsGetAllNames())
//            print(dss.MonitorsGetByteStream())
//            print(dss.TextGetResult())
            
//            dss.MonitorsGetFirst()
            let data = dss.MonitorsGetByteStream()
            print(data)
//            signature = typecast(byte_stream(1:4), 'int32');
//            assert(signature == 43756, ...
//                'DSSClass:save_monitor_data:decode_monitor:incorrectSignature', ...
//                'ByteStream did not contain expected signature');
//
//            % Signature
//            monitor_data.signature = signature;
//            % Name
//            monitor_data.name = dss.dss_circuit.Monitors.Name;
//            % Version: 32-bit integer
//            monitor_data.version = typecast(byte_stream(5:8), 'int32');
//            % Recordsize: 32-bit integer (bytes each record)
//            monitor_data.size = typecast(byte_stream(9:12), 'int32');
//            % Mode: 32-bit integer (monitor mode)
//            monitor_data.mode = typecast(byte_stream(13:16), 'int32');
//            % Header String: 256-byte ANSI characters (fixed length)
//            monitor_data.header = native2unicode(byte_stream(17:272));
//            % Read Reacords
//            % Channels repeat every m.size + 2 times (+2 for hour and sec records)
//            out = typecast(byte_stream(273:end), 'single');
//            out = reshape(out, monitor_data.size+2, [])';
            
            var signature = (Int(data[0]) & 0x000000ff)
            signature |= (Int(data[1]) << 8 & 0x0000ff00)
            signature |= (Int(data[2]) << 16 & 0x00ff0000)
            signature |= (Int(data[3]) << 24 & 0xff000000)
            print(signature)
            var version = (Int(data[4]) & 0x000000ff)
            version |= (Int(data[5]) << 8 & 0x0000ff00)
            version |= (Int(data[6]) << 16 & 0x00ff0000)
            version |= (Int(data[7]) << 24 & 0xff000000)
            print(version)
            var size = (Int(data[8]) & 0x000000ff)
            size |= (Int(data[9]) << 8 & 0x0000ff00)
            size |= (Int(data[10]) << 16 & 0x00ff0000)
            size |= (Int(data[11]) << 24 & 0xff000000)
            print(size)
            var mode = (Int(data[12]) & 0x000000ff)
            mode |= (Int(data[13]) << 8 & 0x0000ff00)
            mode |= (Int(data[14]) << 16 & 0x00ff0000)
            mode |= (Int(data[15]) << 24 & 0xff000000)
            print(mode)
            print("Length: \(data.count)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension NSOpenPanel {
    var selectUrl: URL? {
        title = "Select OpenDSS file"
        allowsMultipleSelection = false
        canChooseDirectories = false
        canChooseFiles = true
        canCreateDirectories = false
        allowedFileTypes = ["dss","txt"]  // to allow only images, just comment out this line to allow any file type to be selected
        return runModal() == .OK ? urls.first : nil
    }
}
