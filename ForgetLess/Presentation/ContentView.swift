//
//  ContentView.swift
//  ForgetLess
//
//  Created by Andrew Shapoval on 01/02/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        
        VStack {
            ForEach(vm.tasks) { task in
                Text(task.text)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
