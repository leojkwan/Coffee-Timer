
import UIKit



class ViewController: UIViewController {
    
    // ! means it is an implicitly unwrapped optional
    
    // what the hell is this will set and didSet
    var timerModel: TimerModel! {
       willSet(newModel) {
        print("About to change model to \(newModel)")
    }
        didSet {
            print("did set")
            updateUserInterface()
        }
    }
    


    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return (UIInterfaceOrientationMask.Portrait)
    }
    
    func setUpModel () {
        timerModel = TimerModel(coffeeName: "Colombian Coffee", duration: 240)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View is loaded!!")
        title = "Root"
        
        // calls the timer convenience initializer
        setUpModel()
    }
    
    func updateUserInterface() {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("Preparing for segue with identifier:\(segue.identifier)")
        
        
        if segue.identifier == "pushDetail" {
            
            let dvc = segue.destinationViewController
            // cast the dvc to a timer Detail View Controller object so that the compiler knows that it has a timer Model property
            as! TimerDetailViewController
            dvc.timerModel = timerModel
        } else if segue.identifier == "editDetail"{
            let navigationController = segue.destinationViewController
                    as! UINavigationController
            let dvc = navigationController.topViewController
                    as! TimerEditViewController
            dvc.timerModel = timerModel
        }
    }

    
}

