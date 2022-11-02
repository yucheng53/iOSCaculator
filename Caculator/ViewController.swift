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
    @IBAction func btn2Clicked(_ sender: Any) {
        displayHandler(inputStuff: "2")
    }
    @IBAction func btn3Clicked(_ sender: Any) {
        displayHandler(inputStuff: "3")
    }
    @IBAction func btn4Clicked(_ sender: Any) {
        displayHandler(inputStuff: "4")
    }
    @IBAction func btn5Clicked(_ sender: Any) {
        displayHandler(inputStuff: "5")
    }
    @IBAction func btn6Clicked(_ sender: Any) {
        displayHandler(inputStuff: "6")
    }
    @IBAction func btn7Clicked(_ sender: Any) {
        displayHandler(inputStuff: "7")
    }
    @IBAction func btn8Clicked(_ sender: Any) {
        displayHandler(inputStuff: "8")
    }
    @IBAction func btn9Clicked(_ sender: Any) {
        displayHandler(inputStuff: "9")
    }
    @IBAction func btn0Clicked(_ sender: Any) {
        if displayData == "0" {
            return
        } else {
            displayHandler(inputStuff: "0")
        }
    }
    
    @IBAction func btnDotClicked(_ sender: Any) {
        if displayData.contains(".") {
            return
        } else {
            if displayData == "0" {
                displayHandler(inputStuff: "0.")
            } else {
                displayHandler(inputStuff: ".")
            }
        }
    }
    func functionOperationHandler(OperationSign: String) {
        temp = displayData
        functionalitySign = OperationSign
        displayData = "0"
        displayScreenLabel.text = displayData
    }
    @IBAction func plusButtonClicked(_ sender: Any) {
        functionOperationHandler(OperationSign: "+")
    }
    
    @IBAction func subButtonClicked(_ sender: Any) {
        functionOperationHandler(OperationSign: "-")
    }
    
    @IBAction func multiBtnClicked(_ sender: Any) {
        functionOperationHandler(OperationSign: "x")
    }
    
    @IBAction func divideBtnClicked(_ sender: Any) {
        functionOperationHandler(OperationSign: "/")
    }
    
    @IBAction func equalBtnClicked(_ sender: Any) {
        switch functionalitySign {
        case "+":
            displayData = String(Double(temp)! + Double(displayData)!)
        case "-":
            displayData = String(Double(temp)! - Double(displayData)!)
        case "x":
            displayData = String(Double(temp)! * Double(displayData)!)
        case "/":
            displayData = String(Double(temp)! / Double(displayData)!)
        default:
            return
        }
        if((Double(displayData)?.truncatingRemainder(dividingBy: 1)) == 0 ) {
            displayData.removeLast(2)
        }
        displayScreenLabel.text = displayData
        functionalitySign = ""
    }
    
}

