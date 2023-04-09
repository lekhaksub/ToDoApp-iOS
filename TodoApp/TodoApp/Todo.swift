//
//  Todo.swift
//  TodoApp
//
//  Created by Shubham Lekhak on 02/02/2023.
//

import Foundation

struct Todo {
    let title: String
    let isComplete: Bool
    
    init(title: String, isComplete: Bool = false) {
        self.title = title
        self.isComplete = isComplete
    }
    
    func completeToggled() -> Todo {
        return Todo(title: title, isComplete: !isComplete)
    }
}
