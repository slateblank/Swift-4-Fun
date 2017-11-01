//
//  ViewController.swift
//  Swift 4 Fun
//
//  Created by Matt Harp on 10/31/17.
//  Copyright © 2017 Matt Harp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var buttonCount = 0
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var topTextField: UITextField!
    
    @IBOutlet weak var bottomTextField: UITextField!
    
    @IBOutlet weak var switchButton: UISwitch!
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        let addition = switchButton.isOn
        
        if addition {
            let sum = Double(topTextField.text!)! + Double(bottomTextField.text!)!
            myLabel.text = "\(topTextField.text!) + \(bottomTextField.text!) = \(sum)"
        } else {
            let sum = Double(topTextField.text!)! - Double(bottomTextField.text!)!
            myLabel.text = "\(topTextField.text!) - \(bottomTextField.text!) = \(sum)"
        }
        
        /*buttonCount += 1
        print(buttonCount)
        if buttonCount >= 10 {
            view.backgroundColor = UIColor.red
            myLabel.text = "You hit me 10 times"
        } */
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

