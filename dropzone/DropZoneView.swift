//
//  DropZoneView.swift
//  dropzone
//
//  Created by Randy Lu on 2019/7/18.
//  Copyright © 2019 Randy Lu. All rights reserved.
//

import Cocoa

class DropZoneView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        // Drawing code here.
    }
    
    override func draggingEntered(_ sender: NSDraggingInfo) -> NSDragOperation {
        let info = sender.draggingPasteboard.string(forType: .fileURL)
        print(info)
        return .copy
    }
    
}
