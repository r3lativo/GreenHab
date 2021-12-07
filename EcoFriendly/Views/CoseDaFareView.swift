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
            Button(action: {
                changeStatus(challenge.id)
            }) {
                Text("Accetta la sfida!")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .frame(width: 150, height: 50)
                    .background(Color.coloreVerde)
                    .cornerRadius(6)
                    .shadow(radius: 3)
            }
            Spacer()
            
        }
        .navigationTitle(challenge.nomeSfida)
        .navigationBarTitleDisplayMode(.inline)
    }
}
