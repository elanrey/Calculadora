//
//  VButtonStack.swift
//  Calculadora
//
//  Created by Enrique Landeros Reyes on 23/09/22.
//

import SwiftUI

struct VButtonStack: View {
    
    @ObservedObject var viewModel: ViewModel
    let data: [KButton]
    let columns: [GridItem]
    let width: CGFloat
    
    init(viewModel: ViewModel, data: [KButton], columns: [GridItem], width: CGFloat) {
        self.viewModel = viewModel
        self.data = data
        self.columns = columns
        self.width = width
    }
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(data, id: \.self) { model in
                Button(action: {
                    viewModel.logic(key: model)
                }, label: {
                    Text(model.title)
                        .font(.system(size: width * 30))
                        .frame(width: width * 80, height: width * 50)
                })
                .foregroundColor(model.txtColor)
                .background(model.bkgColor)
                .cornerRadius(10)
            }
        }
        .padding(width)
    }
}

struct VButtonStack_Previews: PreviewProvider {
    static var previews: some View {
        VButtonStack(viewModel: ViewModel(), data: Matrix.kbSection, columns: Matrix.gridSection(1), width: 1)
    }
}
