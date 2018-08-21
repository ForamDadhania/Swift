//
//  WelcomePageViewController.swift
//  Colors
//
//  Created by MacStudent on 2018-08-15.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

enum GAME_LEVEL: Int {
    case GL_Easy = 1
    case GL_Medium
    case GL_Hard
    case GL_Expert
}

class WelcomePageViewController: UIViewController {

    @IBAction func btnScores(_ sender: UIButton) {
        let mainSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let myScore: ScoresVC = mainSB.instantiateViewController(withIdentifier: "scores") as! ScoresVC
        navigationController?.pushViewController(myScore, animated: true)
        
    }
    @IBAction func btnEasy(_ sender: UIButton) {
        startGameWithLevel(gameLevel: .GL_Easy)
    }
    
    @IBAction func btnMedium(_ sender: UIButton) {
        startGameWithLevel(gameLevel: .GL_Medium)
    }
    
    @IBAction func btnExtreme(_ sender: UIButton) {
        startGameWithLevel(gameLevel: .GL_Hard)
    }
    
    @IBAction func tutorialButtonPressed(_ sender: Any) {
        playVideoOn(controller: self)
    }
    
    func startGameWithLevel(gameLevel: GAME_LEVEL){
        let mainSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVC: ViewController = mainSB.instantiateViewController(withIdentifier: "gamePlay") as! ViewController
        switch gameLevel {
        case .GL_Easy:
            homeVC.gameMode = "easy"
            homeVC.secondsUpdate = 6
        case .GL_Medium:
            homeVC.gameMode = "medium"
            homeVC.secondsUpdate = 4
        case .GL_Hard:
            homeVC.gameMode = "hard"
            homeVC.secondsUpdate = 2
        case .GL_Expert:
            homeVC.gameMode = "expert"
            homeVC.secondsUpdate = 2
        }
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
