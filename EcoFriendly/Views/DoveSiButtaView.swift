//
//  DoveSiButtaView.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 02/12/21.
//

import SwiftUI

struct DoveSiButtaView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults) { tipo in
                    Section(header: Text(tipo.nomeTipo)) {
                        ForEach(tipo.rifiuti) { rifiuto in
                            Text(rifiuto.nomeRifiuto)
                        }
                    }
                }
                
            }
            .searchable(text: $searchText)
            .navigationTitle("Dove si butta?")
        }
    }
    
    var searchResults: [ClasseRifiuti] {
        if searchText.isEmpty {
            return tipoRifiuti
        } else {
            let filteredList: [ClasseRifiuti] = tipoRifiuti.map( { tipo in
                let refiuti = tipo.rifiuti.filter({ $0.nomeRifiuto.lowercased().contains(searchText.lowercased()) })
                return ClasseRifiuti(nomeTipo: tipo.nomeTipo, rifiuti: refiuti)
            })
            
            return filteredList.filter({ !$0.rifiuti.isEmpty })
        }
    }
}


struct DoveSiButta_Previews: PreviewProvider {
    static var previews: some View {
        DoveSiButtaView()
    }
}
