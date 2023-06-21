//
//  ProjectMessagerieView.swift
//  ExerciceSwiftUI
//
//  Created by apprenant55 on 09/05/2023.
//

import SwiftUI



struct ProjectMessagerieView: View {
    
    @State private var showingSheet = false
    @State var searchText: String = ""
    @State var addText: String = ""
    
    var nearMes: [NearMeList] = [
        NearMeList(photo: "Meriem", name: "Meriem"),
        NearMeList(photo: "Zeynab", name: "Zeynab"),
        NearMeList(photo: "YaYe", name: "YaYe")
        
    ]
    
    
    var nammes: [ChatList] = [
        ChatList(photo: "Stella", name: "Stella", title: "A sta sera 💜 "),
        ChatList(photo: "Beatrice", name: "Beatrice", title: "Let’s get lunch! How about "),
        ChatList(photo: "naomi", name: "Naomi", title: "Ca marche  à toute! 😘"),
        ChatList(photo: "XenXen", name: "XenXen", title: "I'd love it!!!"),
        ChatList(photo: "Meriem", name: "Meriem", title: "Ola, vamos à praia!!!")
    ]
    
    
    var body: some View {
       
            
            NavigationView {
                ZStack{
                VStack{
                    VStack(alignment: .leading){
                        Button {
                            showingSheet.toggle()
                        } label: {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.purple)
                                TextField("Chercher", text: $searchText)
                                    .foregroundColor(Color(.systemGray2))
                                Button(action: {
                                    self.searchText = ""
                                }) {
                                    Image(systemName: "")
                                        .opacity(searchText == "" ? 0 : 1)
                                    
                                }
                            }
                            .padding(.horizontal)
                            .frame(width: 355,height: 35)
                            .background(Color(.systemGray6))
                            .cornerRadius(9)
                            
                        }.padding(.top)
                       .padding(.trailing)
                        .sheet(isPresented: $showingSheet) {
                            ProjectReserchChatview()
                        } .padding()
                        
                        
                        Text("Proche de moi...")
                            .padding(.bottom, 20)
                        
                        
                        HStack{
                            //         Carmen
                            VStack{
                                
                                HStack{
                                    Button {
                                    } label: {
                                        HStack {
                                            
                                            TextField("Go!", text: $addText)
                                                .foregroundColor(.primary)
                                                .frame(width: 100)
                                        }
                                        .background(Color(.systemGray6))
                                        .cornerRadius(30)
                                        .padding(.top, -25)
                                    }
                                  
                                }
                            
                                Image("Carmen")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 70)
                                    .clipShape(Circle())
                                
                                Text("Moi")
                                
                                
                                
                                
                            }.padding(.trailing, 2)
                            //         Carmen
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                HStack{
                                    ForEach(nearMes) { element in
                                        NavigationLink( destination: ChatPageMeriem(nearMe: element)) {
                                            VStack{
                                                Image(element.name)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 60, height: 60)
                                                    .clipShape(Circle())
                                                Text(element.photo)
                                                
                                                    .frame(width: 70, height: 30)
                                                    .foregroundColor(.black)
                                            }.padding(.trailing)
                                        }
                                        
                                    }
                                }.padding(.top)
                            }
                            
                            
                        } .padding(.trailing) // hstack near me
                            .padding(.leading)
                        
                    } .padding(.bottom, 30)
                        .padding(.leading)
                    
                    List(nammes) { boucle in
                        NavigationLink {
                            
                            ChatPageProject(chatlist: boucle)
                        } label: {
                            ChartListRow(chatlist: boucle)
                        }
                    }.listStyle(.plain)
                   
                        
                    
                    
                    
                }
       
            }
//
              .navigationBarTitleDisplayMode(.inline)
                .toolbar(){
                    ToolbarItem(placement: .principal) {
                        HStack{
                            Text("Messagerie")
                                .font(.title)
                            .fontWeight(.bold)
                            Image(systemName: "airplane.departure")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        NavigationLink(destination: Profil(), label: {
                            Image(systemName: "person.circle")
                                .foregroundColor(.purple)
                                .font(.title3)
                            
                            
                        }
                                      )
                                  }
                  
               }
                .toolbarBackground(Color.gray.opacity(0.2), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .background(Image("BackgroundImage").opacity(0.3))
            
            
            }
          
    }
}



struct ProjectMessagerieView_Previews: PreviewProvider {
    @State static var isShowing = ""
    static var previews: some View {
        ProjectMessagerieView()
    }
}

 
 

