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
                Text("Carta")
                    .font(.system(size:28))
                    .multilineTextAlignment(.center)
                    .padding()
                
                Image("paperBin")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .shadow(radius: 10)
                    .padding()
                
                List {
                    NavigationLink(destination: CalendarioView())
                    {
                        Text("Calendario Settimanale")
                            .frame(height: 40)
                    }
                    
                    NavigationLink(destination: RifiutiNormaliView())
                    {
                        Text("Rifiuti Normali")
                            .frame(height: 40)
                    }
                    
                    
                    NavigationLink(destination: RifiutiSpecialiView())
                    {
                        Text("Rifiuti Speciali")
                            .frame(height: 40)
                    }
                    
                    
                }
                
                
            }
            .navigationTitle("Oggi")
            .symbolVariant(.fill)
            // DA CERCARE
        }
    }
}




struct VicinoATeView_Previews: PreviewProvider {
    static var previews: some View {
        VicinoATeView()
    }
}
