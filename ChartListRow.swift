//
//  ChartListRow.swift
//  ExerciceSwiftUI
//
//  Created by apprenant55 on 09/05/2023.
//

import SwiftUI

struct ChartListRow: View {
    
    var chatlist: ChatList
   
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(chatlist.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    
                    .padding(.trailing)
                
                VStack(alignment: .leading){
                    Text(chatlist.name)
                        .font(.body)
                        .padding(.bottom, 3)
                    Text(chatlist.title)
                        .font(.footnote)
                }
            }
                
        }.ignoresSafeArea()
        

        
        
    }
}








struct ChartListRow_Previews: PreviewProvider {
    static var previews: some View {
        ChartListRow(chatlist:ChatList(photo: "Carmen", name: "Christelle", title: "Hi"))
    }
}
