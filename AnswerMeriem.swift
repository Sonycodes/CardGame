//
//  AnswerMeriem.swift
//  TravelGirlFinal
//
//  Created by apprenant55 on 14/05/2023.
//

import Foundation

func getMeriemResponse(message: String) -> String{
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("salut") {
        return "Hey, on sort ?"
    } else if tempMessage.contains("café"){
        return "Oui j'adore l'idée"
    }else if tempMessage.contains("a plus"){
        return "A toute"
    }else if tempMessage.contains("Tu"){
        return "Oui"
    } else {
        return "Super"
    }
}
