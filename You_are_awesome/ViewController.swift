//
//  ViewController.swift
//  You_are_awesome
//
//  Created by 18ericz on 1/22/19.
//  Copyright © 2019 18ericz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    //Code below executes when the app view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        if messageLabel.text == "You are Awesome!"{
            messageLabel.text = "You are Great!"
            
        } else if messageLabel.text == "You are Great!" {
            
            messageLabel.text = "You are Amazing!"
        }else{
            messageLabel.text = "You are Awesome!"
        }
    }
}

