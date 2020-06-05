//
//  TaskStore.PrioritizedTasks.swift
//  TaskListUI
//
//  Created by Melissa  Garrett on 6/4/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import Foundation

extension TaskStore {
    struct PrioritizedTasks {
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension TaskStore.PrioritizedTasks: Identifiable {
    var id: Task.Priority { priority }
}
