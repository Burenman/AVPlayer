//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Viktor on 2023-10-17.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
 
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "Duke Dumont - Ocean Drive (Official Music Video)", ofType: "mp4") else {
            debugPrint("video is not found")
            
            return
        }
        let player = AVPlayer(url:
        URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player=player
        present(playerController, animated: true) {
            player.play()
        }
    }
 
}

