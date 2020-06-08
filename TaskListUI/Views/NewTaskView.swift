//
//  NewTaskView.swift
//  TaskListUI
//
//  Created by Melissa  Garrett on 5/11/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    var taskStore: TaskStore
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var taskName = ""
    @State var priority: Task.Priority = .no

    var body: some View {
        Form {
            TextField("Task Name", text: $taskName)
            
            Button("Add") {
                let priorityIndex = self.taskStore.getIndex(for: self.priority)
                
                self.taskStore.prioritizedTasks[priorityIndex].tasks.append(Task(name: self.taskName))
                self.presentationMode.wrappedValue.dismiss()
            }
            .disabled(taskName.isEmpty)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
