//
//  Profilo.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 26/11/21.
//

import Foundation


struct Utente: Identifiable {
    let id = UUID()
    let nomeUtente: String
    let immagineUtente: String
    let lvlUtente: Int
}

var utente: [Utente] = [
    Utente(nomeUtente: "Gennaro", immagineUtente: "profilePic", lvlUtente: 22)

]

struct Progressi: Identifiable {
    let id = UUID()
    let campoProgresso: String
    let immagineProgresso: String
    let numeroProgresso: Int
}

var progresso: [Progressi] = [
    Progressi(campoProgresso: "Buste risparmiate", immagineProgresso: "ok", numeroProgresso: 3)
]
