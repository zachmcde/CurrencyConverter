//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Zach McDermott on 3/9/17.
//  Copyright © 2017 Zach McDermott. All rights reserved.
//

// Import UIKit
import UIKit

// Class View Controller
class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var test: UITextField!

    // IBOutlets
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    // Conversion Rates
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    // Convert Button
    @IBAction func convertCurrency(_ sender: UIButton)  {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0     // Button pressed without entry or correct entry
    }

    // Clears UITextField.
    @IBAction func clearButton(_ sender: UIButton) {
        inputTextField.text = ""
    }
    
    // Called when 'return' key is pressed (iPad).
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when user taps outside the text field.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
    }
    
    // Memory Warning.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}



