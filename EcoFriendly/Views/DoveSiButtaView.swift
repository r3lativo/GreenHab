//
//  DoveSiButtaView.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 02/12/21.
//

import SwiftUI
import UIKit

struct DoveSiButtaView: View {
    
    @State private var searchText = ""
    var names = ["Goku", "Gohan", "Vegeta", "Trunks"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(tipoRifiuti) { tipo in
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
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter({ $0.contains(searchText) })
        }
    }
}


struct DoveSiButta_Previews: PreviewProvider {
    static var previews: some View {
        DoveSiButtaView()
    }
}
