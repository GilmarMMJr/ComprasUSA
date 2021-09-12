//
//  ViewController.swift
//  ComprasUSA
//
//  Created by Gilmar Junior on 04/09/21.
//

import UIKit

class ShoppingViewController: UIViewController {
    
    @IBOutlet weak var dolarTextField: UITextField!
    @IBOutlet weak var realDescriptionLabel: UILabel!
    @IBOutlet weak var realLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dolarTextField.resignFirstResponder()
        setAmmount()
    }

    
    func setAmmount() {
        taxesCalculator.shoppingValue = taxesCalculator.convertToDouble(dolarTextField.text!)
        realLabel.text = taxesCalculator.gerFormatValue(of: taxesCalculator.shoppingValue * taxesCalculator.dolar, withCurrency: "R$ ")
        let dolar = taxesCalculator.gerFormatValue(of: taxesCalculator.dolar, withCurrency: "")
        realDescriptionLabel.text = "Valor sem impostos (dólar \(dolar))"
    }
}

