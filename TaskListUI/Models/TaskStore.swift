//
//  TaskStore.swift
//  TaskListUI
//
//  Created by Melissa  Garrett on 5/11/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

class TaskStore {
    var tasks = [
        "Code a SwiftUI app",
        "Take a nap",
        "Eat pizza",
        "Watch MJ documentary",
        "Buy new Nikes",
        "Have a margarita",
        "Visit New York",
        "Visit a beach",
        "Buy new car",
        "Buy new house"
        ].map { Task(name: $0)}
}

