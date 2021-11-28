//
//  FunFacts.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 26/11/21.
//

import Foundation
import SwiftUI

//  Qui aggiungiamo le curiosità

struct Curiosita: Identifiable {
    let id = UUID()
    let nomeFF: String
    let immagineFF: String
    let descrizioneFF: String
}

var fattoDivertente: [Curiosita] = [
    Curiosita(nomeFF: "Carta Vetrata", immagineFF: "cartaVetrata", descrizioneFF: "blabla")
]
