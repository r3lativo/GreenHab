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
                
                Text("📍Borgo Orefici")
                    .font(.system(size: 18))
                    .padding()
                
                Spacer()
                
                
                NavigationLink(destination: DoveSiButtaView())
                {
                    ZStack {
                        RoundedRectangle(cornerRadius: 6)
                            .frame(width: 360, height: 80)
                            .shadow(radius: 5)
                            .padding([.leading, .trailing])
                            .foregroundColor(.coloreVerde)
                        
                        Text("Dove lo butto?")
                            .foregroundColor(Color.primary)
                            .font(.system(size: 22))
                    }
                }
                .padding(.bottom, 15.0)

                
                NavigationLink(destination: RifiutiSpecialiView())
                {
                    ZStack {
                        RoundedRectangle(cornerRadius: 6)
                            .frame(width: 360, height: 80)
                            .shadow(radius: 5)
                            .padding([.leading, .trailing])
                            .foregroundColor(.grigioChiaro)
                        
                        Text("Rifiuti Speciali")
                            .foregroundColor(Color.secondary)
                            .font(.system(size: 22))
                    }
                }
                .disabled(true)
                .padding(.bottom, 80.0)
                
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
