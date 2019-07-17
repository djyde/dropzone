//
//  ViewController.swift
//  dropzone
//
//  Created by Randy Lu on 2019/7/17.
//  Copyright © 2019 Randy Lu. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func showPopover (button: NSButton) {
        let popup = NSPopover()
        popup.contentViewController = self
        print(popup.isShown)
        if popup.isShown == false {
            popup.show(relativeTo: button.visibleRect, of: button, preferredEdge: .minX)
        }
    }

}

