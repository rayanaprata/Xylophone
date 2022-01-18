//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    func playSound(_ songName: String) {
        let url = Bundle.main.url(forResource: "\(songName)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        guard let player = player else { return }
        player.play()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        guard let key = sender.titleLabel?.text else { return }
        playSound(key)
    }
    
}
