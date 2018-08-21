//
//  ScoresVC.swift
//  Colors
//
//  Created by Govinda Sharma on 2018-08-17.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ScoresVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var scores:[[String:String]] = []
    var gameMode = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scores", for: indexPath)
        let labelName:UILabel = cell.viewWithTag(1) as! UILabel
        let labelScore:UILabel = cell.viewWithTag(2) as! UILabel
        var labelText: String = ""
        switch indexPath.row {
        case 0:
            labelText = "🥇 \(scores[indexPath.row][kKEY_SCORE] ?? "0")"
        case 1:
            labelText = "🥈 \(scores[indexPath.row][kKEY_SCORE] ?? "0")"
        case 2:
            labelText = "🥉 \(scores[indexPath.row][kKEY_SCORE] ?? "0")"
        default:
            labelText = scores[indexPath.row][kKEY_SCORE]!
        }
        labelName.text = scores[indexPath.row][kKEY_NAME]
        labelScore.text = labelText
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Highest Scorers for \(gameMode.capitalized) level"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }

}
