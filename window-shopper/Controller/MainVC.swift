//
//  ViewController.swift
//  window-shopper
//
//  Created by Artur Zarzecki on 17/01/2021.
//  Copyright © 2021 Artur Zarzecki. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // robimy UIButton w kodzie aby wyswietlał się przycisk nad klawiatura w apliakcji
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.8848350254, green: 0.5133160127, blue: 0.0113845669, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal) // for normal state of the button, nie tam jakies nacisniecia
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside) //#selector wola objective-C zobacz funckje calculate, ta metoda jest bezpieczniejsza jak np.: Selector("calculate") jesli funckja nie istnie apliakcje sie wykrzaczy
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
    }
    
    // kiedy nacisniemy kalkulator chcemy aby ta funckja zostala wywolana
    @objc func calculate() {
        print("We  got here")
    }
}

