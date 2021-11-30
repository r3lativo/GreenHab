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
            VStack {
                List {
                    Section(header: Text("Curiosità")) {
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach (fattoDivertente) { fattoDivertente in
                                    VStack {
                                        Image(fattoDivertente.immagineFF)
                                            .resizable()
                                            .cornerRadius(10)
                                    }
                                    
                                }
                                .frame(width: 180.0, height: 180.0)
                                .clipped(antialiased: false)
                            }
                        }
                    }
                    .headerProminence(.increased)
                    
                }
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
