//
//  ContentView.swift
//  Tasks
//
//  Created by Jason Kim on 2020-01-14.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskStore: TaskStore
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView {
            List(taskStore.tasks) { task in
                Text(task.name)
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(trailing:
                Button(action: { self.modalIsPresented = true }) {
                        Image(systemName: "plus")
                }
            )
        }.sheet(isPresented: $modalIsPresented) {
            NewTaskView(taskStore: self.taskStore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
