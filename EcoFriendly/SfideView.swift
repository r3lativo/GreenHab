//
//  SfideView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI

//  Qui ci sono le sfide. Andranno divise in "in corso" e "completate"
//  oltre che assegnare una funzione effettiva allo swipe.

struct SfideView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("colore.celeste")
                VStack {
                    List {
                        ForEach(sfida) { sfida in
                            HStack {
                                Image(sfida.iconaSfida)
                                    .padding(.horizontal, 10.0)
                                Text(sfida.nomeSfida)
                                    .frame(height: 50.0)
                            }
                        }
                    }
                }
                .navigationTitle("Sfide")
            }
        }
        
    }
}

struct SfideView_Previews: PreviewProvider {
    static var previews: some View {
        SfideView()
    }
}
