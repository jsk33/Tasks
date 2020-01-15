//
//  Task.swift
//  Tasks
//
//  Created by Jason Kim on 2020-01-14.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    
    var name: String
    var completed = false
}
