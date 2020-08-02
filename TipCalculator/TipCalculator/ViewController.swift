//
//  ViewController.swift
//  TipCalculator
//
//  Created by Maggie Xiao on 08/01/2020.
//  Copyright © 2020 Maggie Xiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitTwoLabel: UILabel!
    @IBOutlet weak var partyField: UITextField!
    @IBOutlet weak var averageBillLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {

        // Dismiss the keyboard
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let splitTwo = total/2
        
        // Get party number and average split bill
        let partyNumber = Double(partyField.text!) ?? 1
        let averageBill = Double(total/partyNumber)
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitTwoLabel.text = String(format: "$%.2f", splitTwo)
        averageBillLabel.text = String(format: "$%.2f", averageBill)
    }
}

