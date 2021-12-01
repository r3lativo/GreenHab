//
//  ImmaginiUtente.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 01/12/21.
//


import Foundation
import SwiftUI

//  Qui aggiungiamo le sfide

struct ImmaginiUtente: Identifiable {
    let id = UUID()
    let immagineAnimale: String
    let nomeAnimale: String
}

var profilePic: [ImmaginiUtente] = [
    ImmaginiUtente(immagineAnimale: "polarBear", nomeAnimale: "Orso Polare"),
    
    ImmaginiUtente(immagineAnimale: "chamaleon", nomeAnimale: "Camaleonte"),
    
    ImmaginiUtente(immagineAnimale: "lamb", nomeAnimale: "Agnellino"),
    
    ImmaginiUtente(immagineAnimale: "fish", nomeAnimale: "Pesce"),

    ImmaginiUtente(immagineAnimale: "fox", nomeAnimale: "Volpe"),

    ImmaginiUtente(immagineAnimale: "penguin", nomeAnimale: "Pinguino"),
    
    ImmaginiUtente(immagineAnimale: "seal", nomeAnimale: "Foca"),

    ImmaginiUtente(immagineAnimale: "tarantula", nomeAnimale: "Tarantola"),

    ImmaginiUtente(immagineAnimale: "ganesha", nomeAnimale: "Elefante"),
    
    ImmaginiUtente(immagineAnimale: "loveBird", nomeAnimale: "Uccellino")

    ]
