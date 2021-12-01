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
                            VStack {
                                Text(sfida.nomeSfida)
                                    .font(.system(size:42))
                                    .padding(.bottom, 60.0)
                                    .frame(height: 50.0)
                            }
                            Spacer()
                            
                            VStack {
                                Image(sfida.iconaSfida)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding(.trailing)
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
