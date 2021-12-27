//
//  TaskRow.swift
//  ToDoAppSwiftUI
//
//  Created by Álvaro Ferrández Gómez on 27/12/21.
//

import SwiftUI

private enum Images {
    static let imageUncompleted: String = "circle"
    static let imageCompleted: String = "circle.circle.fill"
}

struct TaskRow: View {
    var taskRowModel: TaskRowModel

    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: taskRowModel.taskCompleted ? Images.imageCompleted : Images.imageUncompleted)

            Text(taskRowModel.taskText)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        List {
            TaskRow(taskRowModel: TaskRowModel(taskText: "Ejemplo", taskCompleted: true))
            TaskRow(taskRowModel: TaskRowModel(taskText: "Ejemplo2", taskCompleted: true))
        }
    }
}
