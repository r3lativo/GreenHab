//
//  Sfide.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 26/11/21.
//

import Foundation
import SwiftUI

//  Qui aggiungiamo le sfide

struct CoseDaFare: Hashable, Identifiable {
    let id = UUID()
    let immagineCosa: String
    let descrizioneCosa: String
    var cosaCompletata: Bool
}

struct Sfida: Identifiable {
    let id = UUID()
    let nomeSfida: String
    let iconaSfida: String
    var sfidaCompletata: Bool
    var sfidaInCorso: Bool
    let componenti: [CoseDaFare]
    let spiegazione: String
}

class UserChallenge: ObservableObject {
    
    @Published var sfida: [Sfida] = [
        
        Sfida(
            nomeSfida: "Spesa Green",
            iconaSfida: "carrelloBlu",
            sfidaCompletata: false,
            sfidaInCorso: false,
            componenti: [CoseDaFare(immagineCosa: "frutta",
                                    descrizioneCosa: "Compra frutta e verdura di stagione",
                                    cosaCompletata: false),
                         CoseDaFare(immagineCosa: "ecoBag",
                                    descrizioneCosa: "Usa la tote bag per portare la spesa",
                                    cosaCompletata: false),
                         CoseDaFare(immagineCosa: "carrelloRosso",
                                    descrizioneCosa: "Compra solo il necessario",
                                    cosaCompletata: false),
                         CoseDaFare(immagineCosa: "piatti",
                                    descrizioneCosa: "Non acquistare stoviglie di plastica",
                                    cosaCompletata: false),
                         CoseDaFare(immagineCosa: "bustaCarta",
                                    descrizioneCosa: "Scegli prodotti con packaging sostenibile",
                                    cosaCompletata: false),
                        ],
            spiegazione: "Segui questi consigli e rendi la tua spesa più ecosostenibile"
        ),
        
        
        Sfida(
            nomeSfida: "Valigia Eco",
            iconaSfida: "valigia",
            sfidaCompletata: false,
            sfidaInCorso: false,
            componenti: [CoseDaFare(immagineCosa: "sapone",
                                    descrizioneCosa: "Cosmetici solidi",
                                    cosaCompletata: false)
                         
                         
                        ],
            spiegazione: "Stai per partire? Segui questi consigli sul cosa portare per essere più eco-friendly!"
        ),
        
        
        Sfida(
            nomeSfida: "Verde Natale",
            iconaSfida: "palleDiNatale",
            sfidaCompletata: false,
            sfidaInCorso: false,
            componenti: [CoseDaFare(immagineCosa: "scarpe",
                                    descrizioneCosa: "Evita l'automobile, spostati a piedi in cerca di regali",
                                    cosaCompletata: false)
                         
                        ],
            spiegazione: "Il Natale si avvicina! Rendi questa festività eco-friendly seguendo questi consigli"
        ),
        
        
        Sfida(
            nomeSfida: "Serata \nLow-Waste",
            iconaSfida: "notteStellata",
            sfidaCompletata: false,
            sfidaInCorso: false,
            componenti: [CoseDaFare(immagineCosa: "cena",
                                    descrizioneCosa: "Prepara una cena senza produrre scarti",
                                    cosaCompletata: false)
                        ],
            spiegazione: "Ecco alcune cose che puoi fare a fine giornata per gravare meno sull’ambiente"
        )
    ]
    
    
}
