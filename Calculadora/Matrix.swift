//
//  Matrix.swift
//  Calculadora
//
//  Created by Enrique Landeros Reyes on 23/09/22.
//

import Foundation
import SwiftUI

struct Matrix {
    
    static let kbSection: [KButton] = [
        .init(title: "AC", txtColor: .black, bkgColor: lightGray, type: .reset),
        .init(title: "=", txtColor: .black, bkgColor: lightGray, type: .result),
        .init(title: "", txtColor: .black, bkgColor: lightGray, type: .reset),
        .init(title: "%", txtColor: .white, bkgColor: orange, type: .reset),
        .init(title: "7", txtColor: .white, bkgColor: darkGray, type: .number(7)),
        .init(title: "8", txtColor: .white, bkgColor: darkGray, type: .number(8)),
        .init(title: "9", txtColor: .white, bkgColor: darkGray, type: .number(9)),
        .init(title: "/", txtColor: .white, bkgColor: orange, type: .operation(.div)),
        .init(title: "4", txtColor: .white, bkgColor: darkGray, type: .number(4)),
        .init(title: "5", txtColor: .white, bkgColor: darkGray, type: .number(5)),
        .init(title: "6", txtColor: .white, bkgColor: darkGray, type: .number(6)),
        .init(title: "x", txtColor: .white, bkgColor: orange, type: .operation(.mul)),
        .init(title: "1", txtColor: .white, bkgColor: darkGray, type: .number(1)),
        .init(title: "2", txtColor: .white, bkgColor: darkGray, type: .number(2)),
        .init(title: "3", txtColor: .white, bkgColor: darkGray, type: .number(3)),
        .init(title: "-", txtColor: .white, bkgColor: orange, type: .operation(.res)),
        .init(title: "+/-", txtColor: .white, bkgColor: darkGray, type: .reset),
        .init(title: "0", txtColor: .white, bkgColor: darkGray, type: .number(0)),
        .init(title: ".", txtColor: .white, bkgColor: darkGray, type: .reset),
        .init(title: "+", txtColor: .white, bkgColor: orange, type: .operation(.sum))
    ]

    static let gridSection: (CGFloat) -> [GridItem] = { width in
        return Array(repeating: GridItem(.flexible(minimum: width), spacing: 0), count: 4)
    }
}
