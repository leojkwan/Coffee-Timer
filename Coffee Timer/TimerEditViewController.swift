//
//  TimerEditViewController.swift
//  Coffee Timer
//
//  Created by Leo Kwan on 9/7/15.
//  Copyright © 2015 Leo Kwan. All rights reserved.
//

import UIKit

class TimerEditViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var secondsSlider: UISlider!
    @IBOutlet weak var minutesSlider: UISlider!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    
    var timerModel: TimerModel!
    
    @IBAction func doneWasPressed(sender: AnyObject) {
        // calling on the VC that presented this edit VC
        presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancelWasPressed(sender: AnyObject) {
        presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we need to Explicitly wrap the values around int and floats to get around Swift's strong typing. 
        let numberOfMinutes = Int(timerModel.duration / 60)
        let numberOfSeconds = timerModel.duration % 60
        nameField.text = timerModel.coffeeName
        minutesLabel.text = "\(numberOfMinutes) minutes"
        secondsLabel.text = "\(numberOfSeconds) seconds"
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
