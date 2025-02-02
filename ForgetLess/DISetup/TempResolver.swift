//
//  TempResolver.swift
//  ForgetLess
//
//  Created by Andrew Shapoval on 02/02/2025.
//

struct TempResolver {

    static let shared = TempResolver()
    
    func resolveTasksRepository() -> any TasksRepository {
        InMemoryTasksRepository()
    }
    
}
