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
    
    
    
    override func draw(_ rect: CGRect) { // nigdy nie implementowac tej funkcji jak jest pusta
        let size: CGFloat = 20 // kiedy rysujemy potrzebujemy CGFloat
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7270780457, green: 0.7270780457, blue: 0.7270780457, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true //jeśli nie to to rogi nie beda zaokraglone
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
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
        clipsToBounds = true //jeśli nie to to rogi nie beda zaokraglone
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

