//
//  DISetup.swift
//  ForgetLess
//
//  Created by Andrew Shapoval on 02/02/2025.
//

import Factory

extension Container {
    
    var tasksRepository: Factory<any TasksRepository> {
        self { InMemoryTasksRepository() }
            .singleton
    }
}
