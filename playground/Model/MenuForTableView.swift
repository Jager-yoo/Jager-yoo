//
//  MenuForTableView.swift
//  playground
//
//  Created by 유재호 on 2021/12/12.
//

import Foundation

enum FoodType: String, CaseIterable {
    case American
    case Chinese
    case Korean
    case Japanese
    
    static var count: Int {
        return FoodType.allCases.count
    }
}

struct Food {
    let name: String
    var price: Int
}

let menu: [FoodType: [Food]] = [
    .American: [
        Food(name: "햄버거", price: 5000),
        Food(name: "피자", price: 18000),
        Food(name: "아메리카노", price: 41000)
    ],
    .Chinese: [
        Food(name: "탕수육", price: 18000)
    ],
    .Korean: [
        Food(name: "비빔밥", price: 8000),
        Food(name: "돼지갈비", price: 20000)
    ],
    .Japanese: [
        Food(name: "스시", price: 20000),
        Food(name: "스윙스(돈까스)", price: 5000)
    ]
]
