

import UIKit

class TimerModel: NSObject {
    
    var coffeeName = ""
    var duration = 0
    
    init(coffeeName:String, duration: Int) {
        self.coffeeName = coffeeName
        self.duration = duration
        super.init()
    }
    
    override var description: String {
            return "TimerModel(\(coffeeName))"
    }
    
}
