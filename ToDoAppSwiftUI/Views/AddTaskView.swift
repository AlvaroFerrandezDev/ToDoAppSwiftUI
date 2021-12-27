//
//  AddTaskView.swift
//  ToDoAppSwiftUI
//
//  Created by Álvaro Ferrández Gómez on 27/12/21.
//

import SwiftUI

struct AddTaskView: View {
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Crear nueva tarea")
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)

            TextField(
                "Introduzca la tarea",
                text: $title
            )
            .textFieldStyle(.roundedBorder)

            Button {
                dismiss()
            } label: {
                Text("Guardar tarea")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.328, saturation: 0.796, brightness: 0.408))
                    .cornerRadius(30)
            }
            .frame(maxWidth: .infinity, alignment: .center)

            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
