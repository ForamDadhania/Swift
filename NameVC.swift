//
//  NameVC.swift
//  Colors
//
//  Created by Govinda Sharma on 2018-08-17.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

let kKEY_PLAYER = "Player"
let kKEY_SCORE  = "Score"
let kKEY_NAME   = "Name"

class NameVC: UIViewController {

    @IBOutlet weak var txtFldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func proceedActionClicked(_ sender: Any) {
        var name: String = "Player"
        if (txtFldName.text?.count)! > 0 {
            name = (txtFldName?.text)!
        }
        UserDefaults.standard.set(name, forKey: kKEY_PLAYER)
        UserDefaults.standard.synchronize()
        self.navigationController?.pushViewController(UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WelcomePage"), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
