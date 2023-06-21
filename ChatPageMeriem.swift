//
//  ChatPageMeriem.swift
//  ExerciceSwiftUI
//
//  Created by apprenant55 on 10/05/2023.
//

import SwiftUI

struct ChatPageMeriem: View {
    var nearMe: NearMeList
    
    @State private var messageText = ""
    @State var messages: [String] = ["Oui, on se parle demain"]
    
    
    
    
    var body: some View {
        
        
        
        NavigationView(){
            
            VStack{
                ScrollView{
                    ForEach(messages, id: \.self) { message in
            
                        if message.contains("[USER]") {
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            HStack{
                                Spacer()
                                Text(newMessage)
                                    .padding()
                                    .background(.gray.opacity(0.15))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                            }
                        } else {
                            
                            HStack{
                                Text(message)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(.purple.opacity(0.8))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                Spacer()
                            }
                            
                        }
                    }.rotationEffect(.degrees(180))
                }.rotationEffect(.degrees(180))
//                background
                HStack{
                    TextField("Votre message...", text: $messageText)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        .onSubmit {
                      sendMessage(message: messageText)
                        }
                        Button{
                   sendMessage(message: messageText)
                        } label: {
                            Image(systemName: "paperplane.fill")
                        }
                        .foregroundColor(.purple)
                        .font(.system(size:26))
                            .padding(.horizontal,10)
                    
                }.padding()
                
         
            }
            
                .toolbar {  ToolbarItem(placement: .navigationBarLeading) {
                    HStack{
                        
                        Image( "Meriem")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding()
                        Text("Meriem")
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
            
        }.padding(.top, 20)
        
          
    } //viewbody
    

    func sendMessage(message: String) {
        withAnimation(){
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            withAnimation(){
                messages.append(getMeriemResponse(message: message))
            }
        }
    }
    
    
    
    
    
    
    
    }


struct ChatPageMeriem_Previews: PreviewProvider {
    static var previews: some View {
        ChatPageMeriem(nearMe: NearMeList(name: ""))
    }
}
