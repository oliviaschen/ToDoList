//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    var body: some View {
        VStack {
            HStack {
                Text("To-do List")
                    .font(.system(size: 40))
                         .fontWeight(.black)
                         Spacer()
                Button {

                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }//HStack end
            .padding()
        }//VStack end
    }// body end
}//stuct end

#Preview {
    ContentView()
}
