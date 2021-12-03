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
}

var sfida: [Sfida] = [
    Sfida(nomeSfida: "Spesa Green", iconaSfida: "carrelloBlu", sfidaCompletata: false),
    
    Sfida(nomeSfida: "Valigia Eco", iconaSfida: "valigia", sfidaCompletata: false),

    Sfida(nomeSfida: "Verde Natale", iconaSfida: "palleDiNatale", sfidaCompletata: false)
]
