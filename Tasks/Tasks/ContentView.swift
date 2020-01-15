//
//  ContentView.swift
//  Tasks
//
//  Created by Jason Kim on 2020-01-14.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var taskStore: TaskStore
    
    var body: some View {
//        List(taskStore.tasks.indices) { index in
//            Text(self.taskStore.tasks[index].name)
//        }
        List(taskStore.tasks) { task in
            Text(task.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
