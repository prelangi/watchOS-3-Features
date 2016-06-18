//
//  InterfaceController.swift
//  Features WatchKit Extension
//
//  Created by temporary on 6/16/16.
//  Copyright © 2016 happywatch. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: AnyObject?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        super.willActivate()
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(InterfaceController.tap), userInfo: nil, repeats: true)
    }
    
    func tap(){
        
        WKInterfaceDevice.current().play(WKHapticType.start)
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
