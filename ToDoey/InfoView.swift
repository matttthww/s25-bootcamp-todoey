//
//  InfoView.swift
//  ToDoey
//
//  Created by Matthew Castaneda on 3/12/25.
//

import SwiftUI

struct InfoView: View {
    @Binding var taskname:String
    @Binding  var selectedColor: Color
    var body: some View {
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: 15, style:.continuous)
                .fill(Color.gray)
                .frame(width:375,height:200)
            VStack(spacing:0){
                Circle()
                    .fill(selectedColor)
                    .frame(width:80,height:80)
                    .overlay(
                    Image(systemName: "list.bullet")
                        .font(.largeTitle)
                        .foregroundStyle(Color.white))
                    .bold()
                    .padding()
                
                RoundedRectangle(cornerRadius:15,style:.continuous)
                    .fill(Color.black.opacity(0.2))
                    .frame(width:325,height:50)
                    .overlay(
                        TextField("Title", text:$taskname)
                            .foregroundStyle(selectedColor)
                            .font(.system(size: 20))
                            .bold()
                            .padding()
                    )
                    .padding()
                RoundedRectangle(cornerRadius: 15, style:.continuous)
                    .fill(Color.gray)
                    .frame(width:375,height:130)
                    .overlay(alignment:.leading){
                        VStack(spacing:10){
                            HStack(spacing:20){
                                Button(action: {selectedColor = .red
                                }){
                                    Circle()
                                        .fill(Color.red)
                                        .frame(width:42,height:42)
                                }
                                Button(action:{selectedColor = .orange}){
                                    Circle()
                                        .fill(Color.orange)
                                    .frame(width:42,height:42)}
                                
                                Button(action:{selectedColor = .yellow}){
                                    Circle()
                                        .fill(Color.yellow)
                                    .frame(width:42,height:42)}
                                
                                Button(action:{selectedColor = .green}){
                                    Circle()
                                        .fill(Color.green)
                                    .frame(width:42,height:42)}
                                Button(action:{selectedColor = .blue}){
                                    
                                    Circle()
                                        .fill(Color.blue)
                                    .frame(width:42,height:42)}
                                
                                Button(action:{selectedColor = .indigo}){
                                    Circle()
                                        .fill(Color.indigo)
                                    .frame(width:42,height:42)}
                            }
                            .padding(.leading,16)
                            HStack(spacing:20){
                                Button(action:{selectedColor = .purple}){
                                    Circle()
                                        .fill(Color.purple)
                                    .frame(width:42,height:42)}
                                Button(action: {selectedColor = .cyan}){
                                    Circle()
                                        .fill(Color.cyan)
                                    .frame(width:42,height:42)}
                                
                                Button(action: {selectedColor = .white}){
                                    Circle()
                                        .fill(Color.white)
                                    .frame(width:42,height:42)}
                                
                            }
                            .frame(maxWidth:.infinity,alignment:.leading)
                            .padding(.leading,20)
                        
                           
                            
                        }
                       }
                
                
            }
            .padding(.top,20)
            
            
        }
        
    
    }
}

