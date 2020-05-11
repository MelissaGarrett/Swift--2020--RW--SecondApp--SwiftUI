//
//  Task.swift
//  TaskListUI
//
//  Created by Melissa  Garrett on 5/11/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var completed = false
}
