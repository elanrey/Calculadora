//
//  Models.swift
//  Calculadora
//
//  Created by Enrique Landeros Reyes on 22/09/22.
//

import Foundation
import SwiftUI

struct KButton: Hashable {
    let title: String
    let txtColor: Color
    let bkgColor: Color
    let type: ButtonType
}

enum ButtonType: Hashable {
    case number(Int)
    case operation(OperationType)
    case result
    case reset
}

enum OperationType: Hashable {
    case sum
    case res
    case mul
    case div
}
