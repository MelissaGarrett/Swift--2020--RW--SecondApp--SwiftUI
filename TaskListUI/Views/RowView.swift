//
//  RowView.swift
//  TaskListUI
//
//  Created by Melissa  Garrett on 6/1/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import SwiftUI

struct RowView: View {
    var task: Task
    
    var body: some View {
        Text(task.name)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: Task(name: "To Do"))
    }
}
