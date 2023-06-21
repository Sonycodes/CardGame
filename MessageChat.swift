//
//  MessageChat.swift
//  ExerciceSwiftUI
//
//  Created by apprenant55 on 09/05/2023.
//

import SwiftUI


struct Message: Identifiable {
    var id = UUID()
    var text: String
    var sender: String
    var timestamp: Double
}



struct MessageChat: View {
    
    var message: Message
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(message.sender)
                .font(.caption)
            Text(message.text)
        }
    }
    
}
    
struct MessageChat_Previews: PreviewProvider {
    static var previews: some View {
        MessageChat(message:Message(text: "", sender: "", timestamp: 07/01))
    }
    
}
