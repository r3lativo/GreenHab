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
                  rifiuti: [Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>)
                           ]),
    
    ClasseRifiuti(nomeTipo: "Plastica/Metalli",
                  rifiuti: [Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>)
                           ]),
    
    ClasseRifiuti(nomeTipo: "Vetro",
                  rifiuti: [Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>)
                           ]),
    
    ClasseRifiuti(nomeTipo: "Umido",
                  rifiuti: [Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>)
                           ]),
    
    ClasseRifiuti(nomeTipo: "Indifferenziata",
                  rifiuti: [Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>),
                            Rifiuto(nomeRifiuto: <#T##String#>)
                           ]),
    
    
]
