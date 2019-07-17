//
//  ViewController.swift
//  FINAL PROJECT !!!
//
//  Created by Apple on 7/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let numbers = ["1-2": "awful", "3-4":"bad", "5-6":"okay", "7-8":"good", "9-10":"great"]
    
    let customMessages = ["awful":["It's okay to feel down. Take some time for yourself, everything will be okay<3","Go buy yourself a cookie and watch your favorite show! You deserve a pick me up :)","Tomorrow is a new day. Don't forget how amazing you are!"], "bad":["", "", ""], "okay":["","",""], "good":["","",""], "great":["Yay! Keep up the positivity!", "The world is happy to have your bright attitude today!", "Keep on smiling, and spread the love!"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessage(sender: UIButton){
        let selectedEmotion = sender.titleLabel?.text
        let random = Int.random(in: 0 ... 2)
        let emojiMessage = customMessages[numbers[selectedEmotion!]!]?[random]
        let alertController = UIAlertController(title: "Hi!", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil
        )
    }
    
}

//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//
//}

