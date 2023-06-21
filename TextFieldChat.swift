//
//  TextFieldChat.swift
//  ExerciceSwiftUI
//
//  Created by apprenant55 on 10/05/2023.
//

import SwiftUI

struct TextFieldChat: View {
    @Binding     var searchText: String 
    @State private var showingSheet = false
    
    var body: some View {
        Button {
            showingSheet.toggle()
        } label: {
            HStack {
                   Image(systemName: "magnifyingglass")
                   TextField("Chercher", text: $searchText)
                       .foregroundColor(.primary)
                   Button(action: {
                       self.searchText = ""
                   }) {
                       Image(systemName: "xmark.circle.fill")
                           .opacity(searchText == "" ? 0 : 1)
                   }
               }
               .padding(.horizontal)
               .frame(height: 50)
               .background(Color(.systemGray5))
               .cornerRadius(10)
            
              
        }
            .buttonStyle(.borderedProminent)
            .foregroundColor(.purple)
            .tint(.white)
            .border(.purple)
            .cornerRadius(2)
    }
}


