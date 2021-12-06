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
                Text("Oggi si butta la carta!")
                    .font(.system(size:28))
                    .multilineTextAlignment(.center)
                    .padding()
                
                Image("paperBin")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding()
                
                List {
                    
                    NavigationLink(destination: DoveSiButtaView())
                    {
                        Text("Dove si butta?")
                            .frame(height: 40)
                    }
                    
                    NavigationLink(destination: RifiutiSpecialiView())
                    {
                        Text("Rifiuti Speciali")
                            .frame(height: 40)
                    }
                    .disabled(true)

                }
                .padding(.top, 50.0)
                
                
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


