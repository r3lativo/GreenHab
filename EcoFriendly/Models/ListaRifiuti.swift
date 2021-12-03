//
//  ListaRifiuti.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 03/12/21.
//

import Foundation

struct Rifiuto: Hashable, Identifiable {
    let nomeRifiuto: String
    let id = UUID()
}
struct ClasseRifiuti: Identifiable {
    let nomeTipo: String
    let rifiuti: [Rifiuto]
    let id = UUID()
}
private let tipoRifiuti: [ClasseRifiuti]  = [
    
    ClasseRifiuti(nomeTipo: "Carta",
                  rifiuti: [Rifiuto(nomeRifiuto: "1"),
                           ]),
    
    ClasseRifiuti(nomeTipo: "Plastica/Metalli",
                  rifiuti: [Rifiuto(nomeRifiuto: "2"),
                           ]),
    
    ClasseRifiuti(nomeTipo: "Vetro",
                  rifiuti: [Rifiuto(nomeRifiuto: "3"),
                           ]),
    
    ClasseRifiuti(nomeTipo: "Umido",
                  rifiuti: [Rifiuto(nomeRifiuto: "4"),
                           ]),
    
    ClasseRifiuti(nomeTipo: "Indifferenziata",
                  rifiuti: [Rifiuto(nomeRifiuto: "5"),
                           ]),
    
    
]
