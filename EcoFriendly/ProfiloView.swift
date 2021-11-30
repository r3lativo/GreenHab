//
//  ProfileView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI

//  Qui c'è il profilo. Per ora è solo un test.
//  Andrà creato un file Swift "Profilo" in cui conserviamo
//  i dati del singolo profilo e qui mettiamo i dati presi da lì
//  (come in Articoli & ArticoliView...)
//
//  Non ho ancora iniziato a lavorare sui progressi
//  né su l'edit del profilo 

struct ProfiloView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.coloreVerde
                VStack {
                    ForEach(utente) { utente in
                        Image(utente.immagineUtente)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250.0, height: 250.0)
                            .mask(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 4))
                            .shadow(radius: 10)
                            .padding()
                        Text(utente.nomeUtente)
                            .font(.title2)
                            .fontWeight(.bold)
                        ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                            .scaleEffect(2, anchor: .center)
                            .padding(.horizontal, 120.0)
                        Text("lvl \(utente.lvlUtente)")
                        
                        Spacer()
                        List {
                            Section(header: Text ("Progressi")) {
                                ForEach(progresso) { progresso in
                                    HStack {
                                        Image(progresso.immagineProgresso)
                                        Text(progresso.campoProgresso)
                                        Text("\(progresso.numeroProgresso)")
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Profilo")
        }
    }
}

struct ProfiloView_Previews: PreviewProvider {
    static var previews: some View {
        ProfiloView()
    }
}
