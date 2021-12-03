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

let tipoRifiuti: [ClasseRifiuti]  = [
    
    ClasseRifiuti(nomeTipo: "Carta",
                  rifiuti: [Rifiuto(nomeRifiuto: "1"),
                            Rifiuto(nomeRifiuto: "oiaefoi")]),
    
    ClasseRifiuti(nomeTipo: "Plastica/Metalli",
                  rifiuti: [Rifiuto(nomeRifiuto: "2")]),
    
    ClasseRifiuti(nomeTipo: "Vetro",
                  rifiuti: [Rifiuto(nomeRifiuto: "3")]),
    
    ClasseRifiuti(nomeTipo: "Umido",
                  rifiuti: [Rifiuto(nomeRifiuto: "4")]),
    
    ClasseRifiuti(nomeTipo: "Indifferenziata",
                  rifiuti: [Rifiuto(nomeRifiuto: "mastice"),
                            Rifiuto(nomeRifiuto: "matite"),
                            Rifiuto(nomeRifiuto: "mozziconi di sigaretta"),
                            Rifiuto(nomeRifiuto: "musicassette"),
                            Rifiuto(nomeRifiuto: "nastro per regali"),
                            Rifiuto(nomeRifiuto: "negativi fotografici"),
                            Rifiuto(nomeRifiuto: "occhiali"),
                            Rifiuto(nomeRifiuto: "ossi (avanzi di cibo)"),
                            Rifiuto(nomeRifiuto: "pane secco"),
                            Rifiuto(nomeRifiuto: "pannolini e pannoloni")])
]

/*
 mastice
 matite
 mozziconi di sigaretta
 musicassette
 nastro per regali
 nastro adesivo
 negativi fotografici
 nylon (se non imballaggio)
 occhiali
 ossi (avanzi di cibo)
 ovatta pulita o umida
 ovatta usata
 paglia (se in piccole quantità)
 palloni da gioco
 pane secco
 panni elettrostatici per la polvere
 pannolini e pannoloni

 */
