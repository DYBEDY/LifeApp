//
//  ViewController.swift
//  LifeTest
//
//  Created by Roman on 07.01.2022.
//

import UIKit
import AVFoundation

class StartViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var presentationLabel: UILabel!
    @IBOutlet var videoLayer: UIView!
    @IBOutlet var startButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        installBackgrounColor()
        playVideo()
        
    }

//    private func installBackgrounColor() {
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = view.bounds
//        gradientLayer.colors = [
//            UIColor.white.cgColor,
//            UIColor.systemIndigo.cgColor
//        ]
//        view.layer.insertSublayer(gradientLayer, at: 0)
//    }
    
    func playVideo() {
        guard let path = Bundle.main.path(forResource: "testVideo", ofType: "mp4") else { return }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
         let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        self.videoLayer.layer.addSublayer(playerLayer)
        
        player.play()
        videoLayer.bringSubviewToFront(titleLabel)
        videoLayer.bringSubviewToFront(presentationLabel)
        videoLayer.bringSubviewToFront(startButton)
    }
  
}
