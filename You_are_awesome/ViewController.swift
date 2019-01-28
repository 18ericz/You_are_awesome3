//
//  ViewController.swift
//  You_are_awesome
//
//  Created by 18ericz on 1/22/19.
//  Copyright © 2019 18ericz. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var index = -1
    var imageIndex = -1
    let numberofImage = 3
    var awesomePlayer = AVAudioPlayer()
    let numberofSound = 6
    var soundIndex = -1
    
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var soundSwitch: UISwitch!
    
    
    
    
    
    
    
    
    //Code below executes when the app view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int{
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        }while index == newIndex
        return newIndex
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer){
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is actual
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                print("Error: data in \(soundName) could not be played as a sound")
            }
            
        }else{
            //if reading didnt work
            print("Error: Sound \(soundName) did not load")
        }
    }
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        
        if soundSwitch.isOn != true && soundIndex != -1{
            awesomePlayer.stop()
        }
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message1 = ["You are Awesome!","You are Great!","You are Amazing!","Keep at it","Just do it!", "Dont stop!", "Believe it","I can't wait to download your app!"]
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: message1.count)
        messageLabel.text = message1[index]
        
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberofImage)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        if soundSwitch.isOn {
            soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberofSound)
            let soundName = "sound\(soundIndex)"
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
        

    }
}

