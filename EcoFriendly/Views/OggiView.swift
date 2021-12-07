//
//  ScopriView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI

struct OggiView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Text("Oggi si butta la plastica!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Image("bidonePlastica")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Spacer()
                
                
                NavigationLink(destination: DoveSiButtaView())
                {
                    Text("Dove si butta?")
                        .frame(width: 380, height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.secondary, lineWidth: 1)
                                .shadow(radius: 5)
                        )
                        .foregroundColor(.primary)
                }
                .background(Color.coloreVerde)

                
                NavigationLink(destination: RifiutiSpecialiView())
                {
                    Text("Rifiuti Speciali")
                        .frame(width: 380, height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.secondary, lineWidth: 1)
                                .shadow(radius: 3)
                            )
                }
                .background(Color.coloreVerde)
                .disabled(true)
                .padding(.bottom, 50.0)
                
                
                
            }
            .navigationTitle("Oggi")
            .symbolVariant(.fill)
            // DA CERCARE
        }
    }
}

struct Oggi_Previews: PreviewProvider {
    static var previews: some View {
        OggiView()
    }
}
