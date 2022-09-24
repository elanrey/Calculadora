//
//  ViewModel.swift
//  Calculadora
//
//  Created by Enrique Landeros Reyes on 23/09/22.
//

import Foundation

final class ViewModel: ObservableObject {
    
    @Published var resultValue: String = "0"
    var savedValue: String = "0"
    var operationExec: OperationType?
    var runOperation: Bool = false
    
    func logic(key: KButton) {
        switch key.type {
            case .number(let value):
                if runOperation {
                    resultValue = "0"
                }
                resultValue = resultValue == "0" ? "\(value)" : resultValue + "\(value)"
            case .operation(let type):
                savedValue = resultValue
                operationExec = type
                runOperation = true
            case .result:
                guard let operation = operationExec else {
                    return
                }
                switch operation {
                case .sum:
                    resultValue = "\(Int(savedValue)! + Int(resultValue)!)"
                case .mul:
                    resultValue = "\(Int(savedValue)! * Int(resultValue)!)"
                case .res:
                    resultValue = "\(Int(savedValue)! - Int(resultValue)!)"
                case .div:
                    resultValue = "\(Int(savedValue)! / Int(resultValue)!)"
                }
                print(resultValue)
            case .reset:
                resultValue = "0"
                savedValue = "0"
                operationExec = nil
                runOperation = false
        }
    }
}
