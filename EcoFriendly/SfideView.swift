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
            VStack {
                List {
                    ForEach(sfida) { sfida in
                        HStack {
                            Image(sfida.iconaSfida)
                                .padding(.horizontal, 10.0)
                            Text(sfida.nomeSfida)
                                .frame(height: 50.0)
                                .swipeActions(edge: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/, allowsFullSwipe: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                                        Label("Fatto", systemImage: "checkmark.circle")
                                    }
                                    .tint(.mint)
                                }
                        }
                    }
                }
            }
            .navigationTitle("Sfide")
        }
    }
}

struct SfideView_Previews: PreviewProvider {
    static var previews: some View {
        SfideView()
    }
}
