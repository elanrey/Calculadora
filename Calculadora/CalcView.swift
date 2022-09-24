//
//  ContentView.swift
//  Calculadora
//
//  Created by Enrique Landeros Reyes on 19/09/22.
//

import SwiftUI

struct CalcView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        GeometryReader { proxy in    
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(viewModel.resultValue)
                        .foregroundColor(.white)
                        .font(.system(size: proxy.size.height * 0.1, weight: .light))
                        .frame(height: proxy.size.height * 0.2)
                        .padding()
                }
                VButtonStack(viewModel: viewModel, data: Matrix.kbSection, columns: Matrix.gridSection(1), width: 1)
            }
        }
        .background(.black)
    }
}

struct CalcView_Previews: PreviewProvider {
    static var previews: some View {
        CalcView()
    }
}
