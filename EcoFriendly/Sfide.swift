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
    let expSfida: Int
    let sfidaCompletata: Bool
}

var sfida: [Sfida] = [
    Sfida(nomeSfida: "Solo buste di tela", iconaSfida: "bag", expSfida: 10, sfidaCompletata: false),
    
    Sfida(nomeSfida: "Mottainai", iconaSfida: "dial.min.fill", expSfida: 20, sfidaCompletata: true)

]
