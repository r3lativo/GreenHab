//
//  ScopriView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI

//  Qui ci sono gli articoli e le curiosità.
//  è ancora in fase di progettazione.

struct ScopriView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Text("Articoli")
                        .font(.callout)
                        .fontWeight(.bold)
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(articolo) { articolo in
                                ZStack{
                                    VStack {
                                        Image(articolo.immagineArticolo)
                                            .resizable()
                                            .scaledToFit()
                                            .cornerRadius(10)
                                        
                                        Text("\(articolo.nomeArticolo)")
                                            .font(.headline)
                                        Text("\(articolo.descrizioneArticolo)")
                                    }
                                }
                            }
                            .frame(width: 300.0, height: 250.0)
                            
                        }
                    }
                    
                    Text("Curiosità")
                        .font(.callout)
                        .fontWeight(.bold)
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
            }
            .navigationTitle("Scopri")
            .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            // DA CERCARE
        }
    }
}

struct ScopriView_Previews: PreviewProvider {
    static var previews: some View {
        ScopriView()
    }
}
