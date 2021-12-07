//
//  TasksView.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 03/12/21.
//

import SwiftUI

struct CoseDaFareView: View {
    
    let challenge: Sfida
    let changeStatus: (UUID) -> Void
    let changeTask: (UUID) -> Void
    
    @State private var showAlert = false

    var body: some View {
        VStack {
            
            Text(challenge.spiegazione)
                .foregroundColor(Color.secondary)
                .padding()
            
            List {
                ForEach(challenge.componenti) { task in
                    HStack {
                        Button(action: {
                            changeTask(task.id)
//                            cambiare completata da true a false
                        }) {
                            Image(task.immagineCosa)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .saturation(task.cosaCompletata ? 1 : -10)
                        }
                        .disabled(!challenge.sfidaInCorso)
                        Text(task.descrizioneCosa)
                            .padding()
                    }
                }
            }
            
            if challenge.sfidaInCorso == false {
                Button(action: {
                    changeStatus(challenge.id)
                    
                    
//                    vorrei restare sulla stessa schermata
//                    ma invece mi fa tornare indietro
                }) {
                    Text("Accetta la sfida!")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .frame(width: 380, height: 50)
                        .background(Color.coloreVerde)
                        .cornerRadius(6)
                        .shadow(radius: 3)
                }
                
            } else if challenge.sfidaCompletata == true {
               
                Button(action: {
                    showAlert = true
                    changeStatus(challenge.id)
                        
                    
                }) {
                    Text("Segna la sfida come completata")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .frame(width: 380, height: 50)
                        .background(Color.coloreVerde)
                        .cornerRadius(6)
                        .shadow(radius: 3)
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Hai ottenuto un badge!"),
                        message: Text("puoi vederlo nella sezione profilo")
                    )
                }
            }
            
        }
        .navigationTitle(challenge.nomeSfida)
        .navigationBarTitleDisplayMode(.inline)
    }
}


