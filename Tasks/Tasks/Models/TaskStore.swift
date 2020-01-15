//
//  TaskStore.swift
//  Tasks
//
//  Created by Jason Kim on 2020-01-14.
//  Copyright © 2020 Jason Kim. All rights reserved.
//
import Combine

class TaskStore: ObservableObject {
    @Published var tasks: [Task] = [Task(name: "do this"), Task(name: "do that"), Task(name: "do it")]
    
}
