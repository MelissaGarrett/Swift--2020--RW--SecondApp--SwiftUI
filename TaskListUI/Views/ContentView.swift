//
//  ContentView.swift
//  TaskListUI
//
//  Created by Melissa  Garrett on 5/11/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var taskStore: TaskStore
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView {
            List(taskStore.tasks) { task in
                Text(task.name)
            }
        .navigationBarTitle("Tasks")
        .navigationBarItems(
            trailing:
            Button(action: {
                self.modalIsPresented = true
            }) {
                Image(systemName: "plus")
                }
        )
        }
        .sheet(isPresented: $modalIsPresented) {
            NewTaskView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
