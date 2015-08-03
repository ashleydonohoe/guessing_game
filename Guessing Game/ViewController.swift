//
//  ViewController.swift
//  Guessing Game
//
//  Created by Gabriele on 8/3/15.
//  Copyright © 2015 Ashley D Designs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userGuess: UITextField!
    
    @IBOutlet var userResult: UILabel!

    @IBAction func guessButton(sender: AnyObject) {
        
    let randomNumber = String(arc4random_uniform(6))
        
        if userGuess.text == "" {
            userResult.text = "Please enter a number between 0 and 5"
        }
        
    if randomNumber == userGuess.text {
            userResult.text = "You're right"
        } else {
            userResult.text = "Wrong! It was a \(randomNumber)"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

