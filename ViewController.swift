//
//  ViewController.swift
//  Colors
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

let defaults       = UserDefaults.standard
let kKEY_UD_SCORE  = "SCORES"

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel:     UILabel!
    @IBOutlet weak var btnColor1:     UIButton!
    @IBOutlet weak var btnColor2:     UIButton!
    @IBOutlet weak var btnColor3:     UIButton!
    @IBOutlet weak var playButton:    UIButton!
    @IBOutlet weak var labelTimer:    UILabel!
    @IBOutlet weak var labelLives:    UILabel!
    @IBOutlet weak var labelScores:   UILabel!
    @IBOutlet weak var mainLabelView: UIView!
    
    var scores                       = 0
    var countSecs                    = 0
    var random1: Int                 = 0
    var random2: Int                 = 0
    var random3: Int                 = 0
    var highestScore                 = 0
    var secondsUpdate                = 0
    var buttonSelector               = 0
    var lifeCounter                  = 10
    var isStillCounting              = false
    var highestScorePlayed           = false
    var scoreBoard:[[String:String]] = []
    var gameMode                     = ""
    var seconds                      = Timer()
    var colorNames                   = ["White", "Black", "Grey", "Red", "Green", "Blue", "Maroon", "Yellow", "Light Green", "Sky Blue", "Pink", "Purple"]
    var colorArray                   = ["#FFFFFF", "#000000", "#808080", "#FF0000", "#008000", "#0000FF", "#800000", "#FFFF00", "#00FF00", "#00FFFF", "#FF00FF", "#800080"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        highestScorePlayed = false
        labelTimer.text  = "Time:  \(secondsUpdate)"
        labelLives.text  = "Lives: \(lifeCounter)"
        labelScores.text = "Score: \(scores)"
        if defaults.object(forKey: gameMode) != nil {
            scoreBoard = defaults.object(forKey: gameMode) as! [[String:String]]
            highestScore = Int(scoreBoard.first![kKEY_SCORE]!)!
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mainLabelView.layer.cornerRadius = mainLabelView.layer.frame.height/2
        mainLabelView.layer.borderWidth = 1
        mainLabelView.layer.borderColor = UIColor.black.cgColor
        btnColor1.layer.cornerRadius = btnColor1.layer.frame.height/2
        btnColor1.layer.borderWidth = 1
        btnColor1.layer.borderColor = UIColor.black.cgColor
//        btnColor1.layer.backgroundColor = UIColor.gray.cgColor
        btnColor2.layer.cornerRadius = btnColor2.layer.frame.height/2
//        btnColor2.layer.backgroundColor = UIColor.gray.cgColor
        btnColor2.layer.borderWidth = 1
        btnColor2.layer.borderColor = UIColor.black.cgColor
        btnColor3.layer.cornerRadius = btnColor3.layer.frame.height/2
//        btnColor3.layer.backgroundColor = UIColor.gray.cgColor
        btnColor3.layer.borderWidth = 1
        btnColor3.layer.borderColor = UIColor.black.cgColor
    }
    
    //MARK: Start the timer
    @IBAction func timerAction(_ sender: UIButton) {
        playButton.isHidden = true
        startTimedGame()
    }
    
    //MARK: Validate second random number
    func validaterandom2(){
        random2 = Int(arc4random_uniform(UInt32(colorArray.count)))
        if random2 == random1{
            validaterandom2()
        }
    }
    
    //MARK: Validate third random number
    func validaterandom3(){
        random3 = Int(arc4random_uniform(UInt32(colorArray.count)))
        if random3 == random1 || random3 == random2{
            validaterandom3()
        }
    }
    
    //MARK: Start the timer and change the colors
    func startTimedGame(){
        random1 = Int(arc4random_uniform(UInt32(colorArray.count)))
        validaterandom2()
        validaterandom3()
        buttonSelector = Int(arc4random_uniform(UInt32(3)))
        
        //MARK: Main Label Editing
        mainLabel.backgroundColor = hexStringToUIColor(hex: colorArray[random2])
        mainLabel.textColor = hexStringToUIColor(hex: colorArray[random1])
        mainLabel.text = colorNames[random3].uppercased()
        
        
        //MARK: Three Buttons Editing
        switch buttonSelector {
        case 0:
            btnColor1.setTitle(colorNames[random1], for: .normal)
//            btnColor1.layer.backgroundColor = hexStringToUIColor(hex: colorArray[random1]).cgColor
            btnColor2.setTitle(colorNames[random2], for: .normal)
//            btnColor2.layer.backgroundColor = hexStringToUIColor(hex: colorArray[random2]).cgColor
            btnColor3.setTitle(colorNames[random3], for: .normal)
//            btnColor3.layer.backgroundColor = hexStringToUIColor(hex: colorArray[random3]).cgColor
            
        case 1:
            btnColor1.setTitle(colorNames[random2], for: .normal)
//            btnColor1.layer.backgroundColor = hexStringToUIColor(hex: colorArray[random2]).cgColor
            btnColor2.setTitle(colorNames[random1], for: .normal)
//            btnColor2.layer.backgroundColor = hexStringToUIColor(hex: colorArray[random1]).cgColor
            btnColor3.setTitle(colorNames[random3], for: .normal)
//            btnColor3.layer.backgroundColor = hexStringToUIColor(hex: colorArray[random3]).cgColor
            
        case 2:
            btnColor1.setTitle(colorNames[random3], for: .normal)
//            btnColor1.layer.backgroundColor = hexStringToUIColor(hex: colorArray[random3]).cgColor
            btnColor2.setTitle(colorNames[random2], for: .normal)
//            btnColor2.layer.backgroundColor = hexStringToUIColor(hex: colorArray[random2]).cgColor
            btnColor3.setTitle(colorNames[random1], for: .normal)
//            btnColor3.layer.backgroundColor = hexStringToUIColor(hex: colorArray[random1]).cgColor
            
        default:
            print("Fun")
        }
        counter()
    }
    
    //MARK: Timer generator
    func counter() {
        countSecs = secondsUpdate
        labelTimer.text = "Time:  \(countSecs)"
        seconds = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    //MARK: ObjectiveC method for timer updation
    @objc func updateTimer(){
        if countSecs > 0 {
            countSecs -= 1
            labelTimer.text = "Time:  \(countSecs)"
        } else {
            seconds.invalidate()
            updateLifeCounter()
            if lifeCounter > 0{
                startTimedGame()
            }
        }
    }
    
    //MARK: Color buttons click action
    @IBAction func colorButtonAction(_ sender: UIButton) {
        seconds.invalidate()
        if (sender.tag - 100) == buttonSelector {
            playSoundFor(result: .Won)
            updateScores()
        } else {
            updateLifeCounter()
//            showAlertWith(title: "Game Over", message: "You selected wrong color", actionButtonText: "Retry", presentOn: self)
        }
        if lifeCounter > 0{
            startTimedGame()
        }
    }
    
    //MARK: Common method to show the Alert Controller
    func showAlertWithTwoButtons(alert title: String, alertMessage msg: String, firstButton firstTitle: String, secondButton secondTitle: String, presentOn controller: ViewController) {
        let infoAlert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        infoAlert.addAction(UIAlertAction.init(title: firstTitle, style: .default, handler: { (_) in
            self.continuePlaying()
        }))
        infoAlert.addAction(UIAlertAction.init(title: secondTitle, style: .default, handler: { (_) in
            self.showScores()
        }))
        controller.present(infoAlert, animated: true, completion: nil)
    }
    
    func continuePlaying(){
        lifeCounter = 10
        labelLives.text = "Lives: \(lifeCounter)"
        scores = 0
        labelScores.text = "Score: \(scores)"
        playButton.isHidden = false
    }
    
    func showScores(){
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let vc:ScoresVC = sb.instantiateViewController(withIdentifier: "scores") as! ScoresVC
        vc.scores = scoreBoard
        vc.gameMode = gameMode
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func showAlertWith(title: String, message msg: String, actionButtonText btnText: String, presentOn controller:ViewController){
        let infoAlert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        infoAlert.addAction(UIAlertAction(title: btnText, style: .cancel, handler: nil))
        controller.present(infoAlert, animated: true, completion: nil)
    }
    
    //MARK: Update life and proceed accordingly
    func updateLifeCounter(){
        playSoundFor(result: .Lost)
        lifeCounter -= 1
        labelLives.text = "Lives: \(lifeCounter)"
        if lifeCounter <= 0 {
            seconds.invalidate()
            labelTimer.text = "Time:  0"
            let player = [kKEY_NAME:defaults.value(forKey: kKEY_PLAYER) as! String, kKEY_SCORE:"\(scores)"]
            scoreBoard.append(player)
            sortScores()
            print(scoreBoard)
            defaults.setValue(scoreBoard, forKey: gameMode)
            showAlertWithTwoButtons(alert: "GAME OVER", alertMessage: "You used all your lives. The game is over.", firstButton: "Restart", secondButton: "Show Scores", presentOn: self)
        }
    }
    
    //MARK: Sort the scores
    func sortScores(){
        if scoreBoard.count > 1 {
            for i in 0..<scoreBoard.count{
                for j in 0..<scoreBoard.count{
                    if ((Int)(scoreBoard[i][kKEY_SCORE]!)! > (Int)(scoreBoard[j][kKEY_SCORE]!)!) {
                        let dict = scoreBoard[i]
                        scoreBoard[i] = scoreBoard[j]
                        scoreBoard[j] = dict
                    }
                }
            }
        }
    }
    
    //MARK: Update scores
    func updateScores(){
        scores += 1
        if scores > highestScore && !highestScorePlayed{
            highestScorePlayed = !highestScorePlayed
            playSoundFor(result: .Score)
        }
        labelScores.text = "Score: \(scores)"
    }
    
    //MARK: Conversion of hex String into UIColor
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
}

