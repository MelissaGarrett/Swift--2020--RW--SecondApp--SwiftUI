//
//  RowView.swift
//  TaskListUI
//
//  Created by Melissa  Garrett on 6/1/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import SwiftUI

struct RowView: View {
    @Binding var task: Task
    
    var body: some View {
        NavigationLink(destination: TaskEditingView(task: $task)) {
            Text(task.name)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant( Task(name: "To Do") ))
    }
}
