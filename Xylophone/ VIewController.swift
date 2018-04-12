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
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedSoundFileName : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        print(selectedSoundFileName)
        playSound()
    
    }
    
    func playSound(){
        let soundUrl = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        // Do something and if action triggers error, print in console
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }
    
  

}

