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
    
    //Code below executes when the app view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message1 = ["You are Awesome!","You are Great!","You are Amazing!","Keep at it","Just do it!", "Dont stop!", "Believe it","I can't wait to download your app!"]
        
//        var newIndex = -1
        
        var newIndex: Int  
        repeat{
            newIndex = Int.random(in: 0..<message1.count)
            
        }while index == newIndex
        
        index = newIndex
        messageLabel.text = message1[index]
        repeat{
            newIndex = Int.random(in: 1...numberofImage)
        }while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        //sound
        
        repeat{
            newIndex = Int.random(in: 0..<numberofSound)
        }while soundIndex == newIndex
        
        soundIndex = newIndex
        
        var soundName = "sound\(soundIndex)"
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is actual
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            }catch{
                print("Error: data in \(soundName) could not be played as a sound")
            }
            
        }else{
            //if reading didnt work
            print("Error: Sound \(soundName) did not load")
        }

    }
}

