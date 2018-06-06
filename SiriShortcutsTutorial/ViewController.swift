//
//  ViewController.swift
//  SiriShortcutsTutorial
//
//  Created by Anton Kuznetsov on 06/06/2018.
//  Copyright © 2018 Anton Kuznetsov. All rights reserved.
//

import UIKit
import Intents
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonAction(sender: UIButton) {
        let activity = NSUserActivity(activityType: "com.thelightprj.SiriShortcutsTutorial.makeRed")
        activity.title = "Make View Red"
        activity.userInfo = ["color" : "red"]
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        activity.persistentIdentifier = NSUserActivityPersistentIdentifier(rawValue: "com.thelightprj.SiriShortcutsTutorial.makeRed")
        self.view.userActivity = activity
        activity.becomeCurrent()
        
        makeViewRed()
    }
    
    public func makeViewRed() {
        self.view.backgroundColor = .red
    }
}

