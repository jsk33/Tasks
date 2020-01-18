//
//  TaskStore.PrioritizedTasks.swift
//  Tasks
//
//  Created by Jason Kim on 2020-01-17.
//  Copyright © 2020 Jason Kim. All rights reserved.
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
