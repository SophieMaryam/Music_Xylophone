//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
//import AudioToolbox

class ViewController: UIViewController{
    
    
    var audioPlayer = AVAudioPlayer()
    var player: AVAudioPlayer?
    let soundArray = ["note1", "note2", "note3", "note4"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
//        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
//        var mySound: SystemSoundID


        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!

        // Do something and if action triggers error, print in console
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }

            player.prepareToPlay()
            player.play()
        } catch let error as Error {
            print(error)
        }
        

//        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav"){
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
//            // Play
//
//            AudioServicesPlaySystemSound(mySound)
//        }

        
    }
    
  

}

