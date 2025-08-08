//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    var body: some View {
        VStack {
            HStack {
                Text("To-do List")
                    .font(.system(size: 40))
                         .fontWeight(.black)
                         Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                    if showNewTask {
                        NewToDoView()
                    }
                }
            }//HStack end
            .padding()
            Spacer()
            List {
                ForEach (toDos) { toDoItem in
                    Text(toDoItem.title)
                }
            }
        }//VStack end
    }// body end
}//stuct end

#Preview {
    ContentView()
}
