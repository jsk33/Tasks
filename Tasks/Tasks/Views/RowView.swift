//
//  RowView.swift
//  Tasks
//
//  Created by Jason Kim on 2020-01-15.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import SwiftUI

struct RowView: View {
    var task: Task
    
    var body: some View {
        Text(task.name)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: Task(name: "To Do"))
    }
}
