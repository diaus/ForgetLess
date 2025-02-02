//
//  InMemoryTasksRepository.swift
//  ForgetLess
//
//  Created by Andrew Shapoval on 02/02/2025.
//

import Combine

final class InMemoryTasksRepository: TasksRepository {
    
    func fetchTasks() -> AnyPublisher<[TaskItem], Never> {
        let tasks: [TaskItem] = [
            .init(id: "1", text: "First task", isCompleted: false),
            .init(id: "2", text: "Another task", isCompleted: false)
        ]
        return Just(tasks).eraseToAnyPublisher()
    }
    
    
}
