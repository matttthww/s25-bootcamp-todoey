//
//  TodoRowView.swift
//  ToDoey
//
//  Created by Matthew Castaneda on 3/12/25.
//

import SwiftUI

struct TodoRowView: View {
    @Binding var todo:Todo
    var body: some View {
        HStack{
            Button(action:{
                todo.isDone.toggle()
            }){
                Image(systemName:todo.isDone ? "checkmark.circle.fill" : "circle")
            }
            .buttonStyle(PlainButtonStyle())
            
            TextField(" ", text:$todo.item)
                .foregroundColor(todo.isDone ? .gray : .black)
            
        }
        .font(.system(size:20))
    }
}


