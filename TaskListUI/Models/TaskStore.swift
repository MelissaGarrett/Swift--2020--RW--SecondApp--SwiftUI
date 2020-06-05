//
//  TaskStore.swift
//  TaskListUI
//
//  Created by Melissa  Garrett on 5/11/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import Combine

class TaskStore: ObservableObject {
    @Published var tasks = [
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
    
    @Published var prioritizedTasks = [
        PrioritizedTasks(
            priority: .high,
            names: [
                "Code a SwiftUI app",
                "Take a nap",
                "Eat pizza",
                "Watch MJ documentary"
            ]
        ),
        PrioritizedTasks(
            priority: .medium,
            names: [
                "Buy new Nikes",
                "Have a margarita"
            ]
        ),
        PrioritizedTasks(
            priority: .low,
            names: [
                "Visit New York"
            ]
        ),
        PrioritizedTasks(
            priority: .no,
            names: [
                "Visit a beach",
                "Buy new car",
                "Buy new house"
            ]
        )
    ]
}

private extension TaskStore.PrioritizedTasks {
    init(priority: Task.Priority, names: [String]) {
        self.init(
            priority: priority,
            tasks: names.map { Task(name: $0) }
        )
    }
}
