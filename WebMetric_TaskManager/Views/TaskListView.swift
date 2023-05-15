//
//  TaskListView.swift
//  WebMetric_TaskManager
//
//  Created by AliNoLimit on 5/15/23.
//

import SwiftUI

struct TaskListView: View {
    
    @EnvironmentObject var taskViewModel: TaskViewModel

    var body: some View {
        ZStack() {
            if taskViewModel.items.isEmpty {
                EmptyView()
                    .position(x: UIScreen.main.bounds.width/2, y: 100)
                    .transition(AnyTransition.opacity.animation(.easeIn))
            }
            else {
                List {
                    ForEach(taskViewModel.items) { item in
                        TaskRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                taskViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: taskViewModel.deleteItem)
                    .onMove(perform: taskViewModel.moveItem)
                }
                .listStyle(PlainListStyle())
            }
        }
        .navigationTitle("taskManage".localized.capitalized)
        .navigationBarItems(
            leading: EditButton(),
            trailing:
            NavigationLink("add".localized.capitalized, destination: AddView())
            )
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TaskListView()
        }
        .environmentObject(TaskViewModel())
    }
}
