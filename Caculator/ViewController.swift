//
//  ViewController.swift
//  Caculator
//
//  Created by cheng on 10/30/22.
//  terminal test

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayScreenLabel: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var acButton: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    var displayData = "0"
    var temp = "0"
    var functionalitySign = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        displayScreenLabel.text = displayData
        // Do any additional setup after loading the view.
    }
    func displayHandler(inputStuff: String) {
        if displayData == "0" {
            displayData = inputStuff
        } else {
            displayData = displayData + inputStuff
        }
        displayScreenLabel.text = displayData
    }
    
    @IBAction func acButtonClicked(_ sender: Any) {
        displayData = "0"
        displayScreenLabel.text = displayData
    }
    
    
    @IBAction func btn1Clicked(_ sender: Any) {
        displayHandler(inputStuff: "1")
    }
    
    @IBAction func plusButtonClicked(_ sender: Any) {
        temp = displayData
        functionalitySign = "+"
        displayData = "0"
        displayScreenLabel.text = displayData
        
        
        
    }
    
}

