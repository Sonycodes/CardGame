//
//  SearchBar.swift
//  ExerciceSwiftUI
//
//  Created by apprenant55 on 09/05/2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
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
    }


