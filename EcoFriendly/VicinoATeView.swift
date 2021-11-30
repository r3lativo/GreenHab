//
//  ScopriView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI

//  Qui ci sono gli articoli e le curiosità.
//  è ancora in fase di progettazione.



struct VicinoATeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.coloreCeleste                
                
            }
            .navigationTitle("Vicino a te")
            .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            // DA CERCARE
        }
    }
}

struct VicinoATeView_Previews: PreviewProvider {
    static var previews: some View {
        VicinoATeView()
    }
}
