//
//  ViewController.swift
//  Prework
//
//  Created by Carlos Chavez on 1/14/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    var tipAmount1: Double = 0.15
    var tipAmount2: Double = 0.18
    var tipAmount3: Double = 0.20
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        
        let tipEntered1 = defaults.integer(forKey: "firstTip")
        let tipEntered2 = defaults.integer(forKey: "secondTip")
        let tipEntered3 = defaults.integer(forKey: "thirdTip")
        
        tipAmount1 = Double(tipEntered1) / Double(100)
        tipAmount2 = Double(tipEntered2) / Double(100)
        tipAmount3 = Double(tipEntered3) / Double(100)
        
        tipControl.setTitle(String(tipEntered1) + "%", forSegmentAt: 0)
        tipControl.setTitle(String(tipEntered2) + "%", forSegmentAt: 1)
        tipControl.setTitle(String(tipEntered3) + "%", forSegmentAt: 2)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    }


    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying tip and tipPercentage
        
        let tipPercentages = [tipAmount1, tipAmount2, tipAmount3]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // Update tip amount and total amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

