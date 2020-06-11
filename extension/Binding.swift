//
//  Binding.swift
//  TaskListUI
//
//  Created by Melissa  Garrett on 6/10/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import SwiftUI

public extension Binding where Value: CaseIterable & Equatable {
    var caseIndex: Binding<Value.AllCases.Index> {
        Binding<Value.AllCases.Index>(
            get: { Value.allCases.firstIndex(of: self.wrappedValue)! },
            set: { self.wrappedValue = Value.allCases[$0] }
        )
    }
}
