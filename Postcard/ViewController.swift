//
//  ViewController.swift
//  Postcard
//
//  Created by Jannis Schmidt on 11.09.14.
//  Copyright (c) 2014 Thinking. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var massageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet var enterNameTextField: UITextField!
    
    @IBOutlet var enterAMassageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
        //Code will evaluate when we press the button
        massageLabel.hidden = false
        massageLabel.text = enterAMassageTextField.text
        enterAMassageTextField.text = ""
        enterAMassageTextField.resignFirstResponder()
        massageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor .blueColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
    }

}

