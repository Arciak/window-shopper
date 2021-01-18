//
//  Wage.swift
//  window-shopper
//
//  Created by Artur Zarzecki on 18/01/2021.
//  Copyright © 2021 Artur Zarzecki. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        // zaokrąglimy w górę obliczone liczby godzin aby były pełne
        return Int(ceil(price/wage)) //ceil zaokragla w gore
    }
}
