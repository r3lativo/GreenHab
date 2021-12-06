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
    @AppStorage("nomeUtente") var nomeUtente: String = ""

    
    var body: some View {
        NavigationView {
        VStack(spacing: 50){
            
            HStack {
                Text("Username")
                    .padding()
                    .foregroundColor(Color.secondary)
                TextField("Cambia il tuo username", text: $nomeUtente)
            }
            .frame(width: 380, height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.secondary, lineWidth: 2)
            )
           
            HStack(spacing:30) {
                Button(action:  {immagineUtente = "salamander"
                } ) {
                    Image("salamander")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: {immagineUtente = "fish"
                }) {
                    Image("fish")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: {immagineUtente = "jaguar"
                }) {
                    Image("jaguar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
         }
            HStack(spacing:30){
                Button(action: {immagineUtente = "fox"
                }) {
                    Image("fox")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                Button(action: {immagineUtente = "seal"
                }) {
                    Image("seal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: {immagineUtente = "penguin"
                }) {
                    Image("penguin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                
            }
            HStack(spacing:30){
                Button(action: {immagineUtente = "polarBear"
                }) {
                    Image("polarBear")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: {immagineUtente = "turtle"
                }) {
                    Image("turtle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                Button(action: {immagineUtente = "ganesha"
                }) {
                    Image("ganesha")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
            }
            
          
            
            .navigationBarItems(trailing:
                                    Button(action: {
                showModal.toggle()
            }) {
                Text("Fatto")
            }
            )
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Modifica Profilo")
        }
    }
}

struct ModificaView_Previews: PreviewProvider {
    static var previews: some View {
        ModificaView(showModal:
                            .constant(true), immagineUtente: .constant(""))
    }
}
