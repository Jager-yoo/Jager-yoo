//
//  NumberFormatter.swift
//  playground
//
//  Created by 유재호 on 2021/12/12.
//

import Foundation

let numberFormatter = NumberFormatter()

extension Int {
    var decimalString: String {
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(for: self) ?? "\(self)"
    }
}
