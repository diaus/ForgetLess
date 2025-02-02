//
//  ContentViewModel.swift
//  ForgetLess
//
//  Created by Andrew Shapoval on 02/02/2025.
//

import SwiftUI

extension ContentView {
    
    final class ViewModel: ObservableObject {
        
        private let tasksRepository = TempResolver.shared.resolveTasksRepository()
        
        @Published private(set) var tasks: [TaskItem] = []

        init() {
            
            tasksRepository.fetchTasks()
                .receive(on: DispatchQueue.main)
                .assign(to: &self.$tasks)
        }
    }
}
