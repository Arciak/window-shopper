//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Artur Zarzecki on 17/01/2021.
//  Copyright © 2021 Artur Zarzecki. All rights reserved.
//

import UIKit


@IBDesignable
class CurrencyTxtField: UITextField {
    
    // w tej funckji wpisujemy to co ma być widoczne w builderface view
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib() // when the app is call we start this code
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
                
        //        if placeholder == nil {
        //            placeholder = " "
        //        }
        //
        //        let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
        //        attributedPlaceholder = place
        //        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                
                // to u gory zastapilismytym u dolu, bardziej eleganckie
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

