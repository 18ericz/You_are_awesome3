//
//  ViewController.swift
//  You_are_awesome
//
//  Created by 18ericz on 1/22/19.
//  Copyright © 2019 18ericz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index = 0
    
    @IBOutlet weak var messageLabel: UILabel!
    
    //Code below executes when the app view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message1 = ["You are Awesome!","You are Great!","You are Amazing!","Keep at it","Just do it!", "Dont stop!", "Believe it","I can't wait to download your app!"]
        
        messageLabel.text = message1.randomElement()!
//        messageLabel.text = message1[index]
//
//        if index == message1.count-1{
//            index = 0
//        }else{
//            index += 1
//        }
        
//        if messageLabel.text == message1{
//            messageLabel.text = message2
//
//        } else if messageLabel.text == message2{
//
//            messageLabel.text = message3
//        }else{
//            messageLabel.text = message1
//        }
    }
}

