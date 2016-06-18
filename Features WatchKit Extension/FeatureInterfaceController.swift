//
//  FeatureInterfaceController.swift
//  Features
//
//  Created by temporary on 6/16/16.
//  Copyright © 2016 happywatch. All rights reserved.
//

import WatchKit
import Foundation


class FeatureInterfaceController: WKInterfaceController {

    @IBOutlet var diceImage: WKInterfaceImage!
    @IBOutlet var rollButton: WKInterfaceButton!
    @IBOutlet var diceGroup: WKInterfaceGroup!
    @IBOutlet var diceRollGroup: WKInterfaceGroup!
    @IBOutlet var diceRollImage: WKInterfaceImage!
    
    override func awake(withContext context: AnyObject?) {
        super.awake(withContext: context)
        
        diceRollImage.setImageNamed("frame_")
        //diceRollImage.startAnimatingWithImages(in: NSRange(location: 0, length: 8), duration: 5, repeatCount: Int.max)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func onStop() {
        diceRollImage.stopAnimating()
        
        let diceNumber = arc4random()%5
        let diceImageName: String = "\(diceNumber+1)"
        print("diceImageName: \(diceImageName)")
        diceRollImage.setImageNamed(diceImageName)
        
    }
    
    @IBAction func onRoll() {
        print("During the dice roll")
        diceRollImage.setImageNamed("frame_")
        diceRollImage.startAnimatingWithImages(in: NSRange(location: 0, length: 12), duration: 0.8, repeatCount: Int.max)
        //diceRollImage.stopAnimating()
        
        
        
    }
}
