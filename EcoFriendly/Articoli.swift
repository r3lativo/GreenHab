//
//  Articoli.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import Foundation
import SwiftUI

//  Qui aggiungiamo gli articoli. Si può sempre creare un'altra costante tipo "contenutoArticolo"
//  che contenga effettivamente tutto il testo dell'articolo... oppure trovare un altro metodo,
//  ancora non so

struct Articolo: Identifiable {
    let id = UUID()
    let nomeArticolo: String
    let immagineArticolo: String
    let descrizioneArticolo: String
}

var articolo: [Articolo] = [
    Articolo(nomeArticolo: "Una busta per amica", immagineArticolo: "bustaPlastica", descrizioneArticolo: "blablabla"),
    
    Articolo(nomeArticolo: "Mottainai", immagineArticolo: "mottainai", descrizioneArticolo: "blabla")
]
