//
//  AppDelegate.swift
//  dropzone
//
//  Created by Randy Lu on 2019/7/17.
//  Copyright © 2019 Randy Lu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    private let statusItem: NSStatusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    private let popoverViewController = TrayViewController(nibName: "TrayView", bundle: nil)
    private let popover = NSPopover()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        setupTray()
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @objc func showPopup (button: NSButton) {
        popover.contentViewController = popoverViewController
        if popover.isShown {
            popover.close()
        } else {
            popover.show(relativeTo: button.visibleRect, of: button, preferredEdge: .minY)
        }
    }

    func setupTray () {
        if let button = statusItem.button {
            button.title = "Hello"
            button.action = #selector(showPopup(button:))
        }
    }
    
    

}
