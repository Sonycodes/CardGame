//
//  ChatPageProject.swift
//  ExerciceSwiftUI
//
//  Created by apprenant55 on 09/05/2023.
//

import SwiftUI

struct ChatPageProject: View {
    var chatlist: ChatList
   
    
    
    @State var messages: [Message] = [
        Message(text: "Hi Girl! Are you up to go get some drinks?", sender: "XenXen", timestamp: 2.55),
        Message(text: "Am in the area, you can call me if you want to go out?", sender: "XenXen", timestamp: 4.55),
        Message(text: " i'd love it", sender: "XenXen", timestamp: 2.55),
    ]
    @State var newMessageText: String = ""
    
    
    
    
    
    var body: some View {
        
        
        
        
        NavigationView(){
            
            NavigationStack () {
                VStack {
                    
                    List(messages) { message in
                        MessageChat(message: message)
                            .listRowSeparator(.hidden)
                            .padding()
                            .background(.purple)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 9))
                    }.listStyle(.plain)
                    
                    
                    HStack {
                        TextField("Type a message", text: $newMessageText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button(action: {
                            let message = Message(text: newMessageText, sender: "Me", timestamp: 3.55)
                            messages.append(message)
                            newMessageText = ""
                        }) {
                            Text("Send")
                                .foregroundColor(.purple)
                        }
                    }.padding()
                }
            }.padding(.top, 50)
            
                .toolbar {  ToolbarItem(placement: .navigationBarLeading) {
                    HStack{
                        
                        Image( "XenXen")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding()
                        Text("XenXen")
                            .font(.title)
                        
                        
                        Image(systemName:"phone")
                            .font(.title3)
                            .foregroundColor(.purple)
                            .fontWeight(.bold)
                            .padding(.leading, 90)
                        
                    }  .padding(.top, 30)
                        .fontWeight(.bold)
                    
                }
                }
            
        }
        
        
        
    }
}










struct ChatPageProject_Previews: PreviewProvider {
    static var previews: some View {
        ChatPageProject(chatlist: ChatList(name: "hello", title: "hello") )
    }
}
