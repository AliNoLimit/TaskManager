//
//  WebMetric_TaskManagerApp.swift
//  WebMetric_TaskManager
//
//  Created by AliNoLimit on 5/15/23.
//

import SwiftUI

@main
struct WebMetric_TaskManagerApp: App {
    
    @StateObject var taskViewModel: TaskViewModel = TaskViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                TaskListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(taskViewModel)
        }
    }
}
