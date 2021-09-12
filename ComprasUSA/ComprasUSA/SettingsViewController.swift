//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Gilmar Junior on 05/09/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var dolarTextField: UITextField!
    @IBOutlet weak var iofTextField: UITextField!
    @IBOutlet weak var stateTaxesTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        dolarTextField.text = taxesCalculator.gerFormatValue(of: taxesCalculator.dolar, withCurrency: "")
        iofTextField.text = taxesCalculator.gerFormatValue(of: taxesCalculator.iof, withCurrency: "")
        stateTaxesTextField.text = taxesCalculator.gerFormatValue(of: taxesCalculator.stateTax, withCurrency: "")
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValue() {
        taxesCalculator.dolar = taxesCalculator.convertToDouble(dolarTextField.text!)
        taxesCalculator.iof = taxesCalculator.convertToDouble(iofTextField.text!)
        taxesCalculator.stateTax = taxesCalculator.convertToDouble(stateTaxesTextField.text!)
    }
}


extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValue()
    }
}
