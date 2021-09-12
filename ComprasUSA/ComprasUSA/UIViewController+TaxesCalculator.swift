//
//  UIViewController+Calculator.swift
//  ComprasUSA
//
//  Created by Gilmar Junior on 11/09/21.
//

import UIKit


extension UIViewController{
    var taxesCalculator: TaxesCalculator {
        return TaxesCalculator.shared
    }
}
