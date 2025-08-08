//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Binding var showNewTask: Bool
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text("Task title")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter task description", text: $toDoItem.title, axis: .vertical)
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            }
            Button {
                addToDo()
                    showNewTask = false
            } label: {
               Text("Save")
            }
        }//VStack end
        .padding()
        
    }//body end
        func addToDo() {
            let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
            modelContext.insert(toDo)
        }//func end
    
}//struct end

#Preview {
    NewToDoView(showNewTask: .constant(false), toDoItem: ToDoItem(title: "", isImportant: false))
}
