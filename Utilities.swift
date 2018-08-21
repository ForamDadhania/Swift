//
//  Utilities.swift
//  Colors
//
//  Created by Govinda Sharma on 2018-08-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
import AVKit
import AVFoundation

enum SoundType{
    case Won
    case Lost
    case Score
}

var player:AVAudioPlayer?

func playSoundFor(result: SoundType) {
    var fileName = ""
    if result == .Won{
        fileName = "Won"
    } else if result == .Lost {
        fileName = "Lost"
    } else {
        fileName = "HighScores"
    }
    guard let url = Bundle.main.url(forResource: fileName, withExtension: ".wav") else { return }
    do {
        try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        /* iOS 10 and earlier require the following line:
         player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
        guard let player = player else { return }
        player.play()
    } catch let error {
        print(error.localizedDescription)
    }
}

func playVideoOn(controller: UIViewController) {
    guard let path = Bundle.main.path(forResource: "tutorial", ofType:"mov") else {
        debugPrint("video.m4v not found")
        return
    }
    let player = AVPlayer(url: URL(fileURLWithPath: path))
    let playerController = AVPlayerViewController()
    playerController.player = player
    controller.present(playerController, animated: true) {
        player.play()
    }
}
