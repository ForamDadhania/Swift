//
//  ViewController.swift
//  Jalsa
//
//  Created by MacStudent on 2018-08-03.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var clickCount = 0
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDisplay: UILabel!
    
    @IBOutlet weak var labelClick: UILabel!
    
    @IBAction func btnClick(_ sender: Any) {
        clickCount += 1
//        var choice = 1
//        switch choice {
//        case  :
//            <#code#>
//        default:
//            <#code#>
//        }
        labelClick.text = "You clicked \(clickCount) times."
        labelDisplay.text = "Your name is \(textName.text!)."
        if clickCount > 12 {
             labelClick.text = "Please stop clicking. You've already click a dozen times!"
        } else if clickCount >= 15 {
          labelClick.text = "Keep on clicking. Clearly you dont have anything better to do."
        } else if clickCount >= 17 {
            labelClick.text = "Let's start counting from the scratch. So you again clicked \((clickCount)-15) times."
        } else if clickCount >= 34 {
            labelClick.text = "That's enough. You need to see a therapist!"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

