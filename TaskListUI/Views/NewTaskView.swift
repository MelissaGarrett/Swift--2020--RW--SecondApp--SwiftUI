//
//  NewTaskView.swift
//  TaskListUI
//
//  Created by Melissa  Garrett on 5/11/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    @State var taskName = ""

    var body: some View {
        TextField("Task Name", text: $taskName)
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
