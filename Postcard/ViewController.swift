//
//  ViewController.swift
//  Postcard
//
//  Created by Mehmet Cem Doğan on 11/5/14.
//  Copyright (c) 2014 Mehmet Cem Doğan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet var myView: UIView!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Adding a comment here to test github

        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
   // resignFirstResponder, klavyenin gerektiği zaman çıkmasını sağlıyor.
        enterMessageTextField.resignFirstResponder()
   
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    
    }

}

