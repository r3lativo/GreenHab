//
//  ModificaView.swift
//  EcoFriendly
//
//  Created by Matthew Amelino on 03/12/21.
//

import SwiftUI

struct ModificaView: View {
    @Binding var showModal: Bool
    @Binding var immagineUtente: String
    
    var body: some View {
        
        
        
        VStack(spacing: 50){
            
            HStack(spacing:30) {
                Button(action:  {immagineUtente = "salamander"
                    showModal.toggle()
                } ) {
                    Image("salamander")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: {immagineUtente = "fish"
                    showModal.toggle()
                }) {
                    Image("fish")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: {immagineUtente = "jaguar"
                    showModal.toggle()
                }) {
                    Image("jaguar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
         }
            HStack(spacing:30){
                Button(action: {immagineUtente = "fox"
                    showModal.toggle()
                   
                }) {
                    Image("fox")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                Button(action: {immagineUtente = "seal"
                    showModal.toggle()
             
                }) {
                    Image("seal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: {immagineUtente = "penguin"
                    showModal.toggle()
                }) {
                    Image("penguin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                
            }
            HStack(spacing:30){
                Button(action: {immagineUtente = "polarBear"
                    showModal.toggle()
                }) {
                    Image("polarBear")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: {immagineUtente = "turtle"
                    showModal.toggle()
                }) {
                    Image("turtle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: {immagineUtente = "salamander"
                    showModal.toggle()
                }) {
                    Image("ganesha")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                
            }
            
            
            
            
        }
    }
}

struct ModificaView_Previews: PreviewProvider {
    static var previews: some View {
        ModificaView(showModal:
                            .constant(true), immagineUtente: .constant(""))
    }
}
