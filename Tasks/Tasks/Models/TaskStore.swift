//
//  TaskStore.swift
//  Tasks
//
//  Created by Jason Kim on 2020-01-14.
//  Copyright © 2020 Jason Kim. All rights reserved.
//
import Combine

class TaskStore: ObservableObject {
    
    @Published var prioritizedTasks = [
        PrioritizedTasks(priority: .high, tasks: [Task(name: "do this")]),
        PrioritizedTasks(priority: .medium, tasks: [Task(name: "do this")]),
        PrioritizedTasks(priority: .low, tasks: [Task(name: "do it")]),
        PrioritizedTasks(priority: .no, tasks: [Task(name: "do it if you want")]),
    ]
    
    func getIndex(for priority: Task.Priority) -> Int {
        prioritizedTasks.firstIndex { $0.priority == priority }!
    }
}
