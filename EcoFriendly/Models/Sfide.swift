//
//  Sfide.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 26/11/21.
//

import Foundation
import SwiftUI

//  Qui aggiungiamo le sfide



struct Sfida: Identifiable {
    let id = UUID()
    let nomeSfida: String
    let iconaSfida: String
    let sfidaCompletata: Bool
    let spiegazione: String
}

var sfida: [Sfida] = [
    
    Sfida(
        nomeSfida: "Spesa Green",
        iconaSfida: "carrelloBlu",
        sfidaCompletata: false,
        spiegazione: "Segui questi consigli e rendi la tua spesa più ecosostenibile"
    ),
    
    Sfida(
        nomeSfida: "Valigia Eco",
        iconaSfida: "valigia",
        sfidaCompletata: false,
        spiegazione: "Stai per partire? Segui questi consigli sul cosa portare per essere più eco-friendly!"
    ),
    
    Sfida(
        nomeSfida: "Verde Natale",
        iconaSfida: "palleDiNatale",
        sfidaCompletata: false,
        spiegazione: "Il Natale si avvicina! Rendi questa festività eco-friendly seguendo questi consigli"
    ),
    
    Sfida(
        nomeSfida: "Serata Minimum-Waste",
        iconaSfida: "notteStellata",
        sfidaCompletata: false,
        spiegazione: "Ecco alcune cose che puoi fare a fine giornata per gravare meno sull’ambiente"
    )
]
