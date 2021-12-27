//
//  MainView.swift
//  ToDoAppSwiftUI
//
//  Created by Álvaro Ferrández Gómez on 27/12/21.
//

import SwiftUI

struct MainView: View {
    var titleScreen = TitleScreenModel(title: "ToDo")
    var tasksModel = TaskViewModel(tasks:
        [
            TaskRowModel(taskText: "Ejemplo", taskCompleted: true),
            TaskRowModel(taskText: "Ejemplo 2", taskCompleted: false),
            TaskRowModel(taskText: "Ejemplo 3", taskCompleted: true),
        ]
    )
    var addButtonModel = AddButtonModel(imageButton: "plus.square")

    var body: some View {
        VStack {
            TitleScreen(titleScreenModel: titleScreen)

            TaskView(tasksModel: tasksModel)

            AddButton(addButtonModel: addButtonModel)
                .padding(.trailing)
                .onTapGesture {
                    print("misco")
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
