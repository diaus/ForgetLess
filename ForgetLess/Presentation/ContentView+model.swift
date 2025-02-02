//
//  ContentViewModel.swift
//  ForgetLess
//
//  Created by Andrew Shapoval on 02/02/2025.
//

import SwiftUI
import Factory

extension ContentView {
    
    final class ViewModel: ObservableObject {
        
        @Injected(\.tasksRepository) private var tasksRepository
        
        @Published private(set) var tasks: [TaskItem] = []

        init() {
            
            tasksRepository.fetchTasks()
                .receive(on: DispatchQueue.main)
                .assign(to: &self.$tasks)
        }
    }
}
