//
//  TaskView.swift
//  ToDoAppSwiftUI
//
//  Created by Álvaro Ferrández Gómez on 27/12/21.
//

import SwiftUI

struct TaskView: View {
    var tasksModel: TaskViewModel

    var body: some View {
        VStack {
            List {
                ForEach(tasksModel.tasks, id: \.self) { task in
                    TaskRow(taskRowModel: task)
                }
            }
            .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(tasksModel: TaskViewModel(tasks: [TaskRowModel(taskText: "Ejemplo", taskCompleted: true)]))
    }
}
