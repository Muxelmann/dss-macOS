//
//  ViewController.swift
//  dss_app
//
//  Created by Maximilian Zangs on 19.10.18.
//  Copyright © 2018 Max Zangs. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let dss = DSS()
        print("DSS VERSION: ")
        print(dss.DSSGetVersion() ?? "unknown version")
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

