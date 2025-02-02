//
//  TasksRepository.swift
//  ForgetLess
//
//  Created by Andrew Shapoval on 02/02/2025.
//

import Combine

protocol TasksRepository {
    func fetchTasks() -> AnyPublisher<[TaskItem], Never>
}
