//
//  ProjectReserchChatview.swift
//  ExerciceSwiftUI
//
//  Created by apprenant55 on 07/05/2023.
//

import SwiftUI

struct ProjectReserchChatview: View {
    
    let names = ["XenXen Z.", "Meriem K.", "Naomi V.", "Melissa L."]
    @State private var searchText = ""
    
    var nammes: [ChatList] = [
        ChatList(photo: "XenXen", name: "XenXen", title: "Hiiiii again, I was thinking W..."),
        ChatList(photo: "Beatrice", name: "Beatrice", title: "Let’s get lunch! How about... "),
        ChatList(photo: "naomi", name: "Naomi", title: "Ca marche  à toute! 😘"),
        ChatList(photo: "Meriem", name: "Meriem", title: "I'd love it!!!")]
    
    
        var body: some View {
            
            NavigationStack {
                
                List {
                    ForEach(searchResults, id: \.self) { boucle in
                        NavigationLink() { ChatPageMeriem(nearMe: NearMeList(name: "Meriem"))
                        } label: {
                            HStack{
                                Image(systemName: "airplane.departure")
                                    .foregroundColor(.purple)
                                Text(boucle)
                            }.font(.title3)
                        }
                    }
                }
               
            }
            .searchable(text: $searchText)
        }

    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
}





struct ProjectReserchChatview_Previews: PreviewProvider {
    static var previews: some View {
        ProjectReserchChatview()
    }
}
