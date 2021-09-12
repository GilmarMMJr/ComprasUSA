//
//  TaxesViewController.swift
//  ComprasUSA
//
//  Created by Gilmar Junior on 05/09/21.
//

import UIKit

class TaxesViewController: UIViewController {
    
    @IBOutlet weak var dolarLabel: UILabel!
    @IBOutlet weak var staeTaxLabel: UILabel!
    @IBOutlet weak var stateTaxDescription: UILabel!
    @IBOutlet weak var iofDescriptionLabel: UILabel!
    @IBOutlet weak var iosLabel: UILabel!
    @IBOutlet weak var creditCardswitch: UISwitch!
    @IBOutlet weak var realLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculateTaxes()
        
    }
    
    @IBAction func changeIOF(_ sender: UISwitch) {
        calculateTaxes()
    }
    
    func calculateTaxes() {
        stateTaxDescription.text = "Imposto do Estado (\(taxesCalculator.gerFormatValue(of: taxesCalculator.stateTax, withCurrency: ""))%)"
        iofDescriptionLabel.text = "IOF(\(taxesCalculator.gerFormatValue(of: taxesCalculator.iof, withCurrency: ""))%)"
        
        dolarLabel.text = taxesCalculator.gerFormatValue(of: taxesCalculator.shoppingValue, withCurrency: "US$ ")
        staeTaxLabel.text = taxesCalculator.gerFormatValue(of: taxesCalculator.stateTaxValue, withCurrency: "US$ ")
        iosLabel.text = taxesCalculator.gerFormatValue(of: taxesCalculator.iofValue, withCurrency: "US$ ")
        
        let real = taxesCalculator.calculate(usingCredutCard: creditCardswitch.isOn)
        realLabel.text = taxesCalculator.gerFormatValue(of: real, withCurrency: "R$ ")
        
    }
  

}
