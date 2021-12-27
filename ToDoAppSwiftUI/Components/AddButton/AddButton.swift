//
//  AddButton.swift
//  ToDoAppSwiftUI
//
//  Created by Álvaro Ferrández Gómez on 27/12/21.
//

import SwiftUI

struct AddButton: View {
    var addButtonModel: AddButtonModel

    var body: some View {
        HStack {
            Spacer()

            ZStack {
                Circle()
                    .frame(width: 50)
                    .foregroundColor(Color(hue: 0.328, saturation: 0.796, brightness: 0.408))

                Image(systemName: addButtonModel.imageButton)
                    .font(.title)
                    .foregroundColor(.white)
                    .scaledToFit()
            }
            .frame(height: 50)
        }
        .padding()
    }
}

struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton(addButtonModel: AddButtonModel(imageButton: "plus.square"))
    }
}
