//
//  ChatNearMeRow.swift
//  ExerciceSwiftUI
//
//  Created by apprenant55 on 10/05/2023.
//

import SwiftUI

struct ChatNearMeRow: View {
    var nearMe: NearMeList
    
    var body: some View {
        VStack{
            Image(nearMe.photo)
                .resizable()
            
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            Text(nearMe.name)
                .fontWeight(.bold)
        }
    }
}

struct ChatNearMeRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatNearMeRow(nearMe: NearMeList(photo: "Carmen",name: "Carmen"))
    }
}
