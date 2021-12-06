//
//  ProfileView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI


struct ProfiloView: View {
    @State private var showModal: Bool = false
    @State var nomeUtente = UserDefaults.standard.string(forKey: "nomeUtente") ?? ""
    @State var immagineUtente = "polarBear"
    
    var body: some View {
        NavigationView {
            
            VStack(spacing:20) {
                Image(immagineUtente)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280, height: 280)
                Text(UserDefaults.standard.string(forKey: "nomeUtente") ?? "")
                    .font(.title)
                    .fontWeight(.regular)
                Text("Progressi")
                    .font(.largeTitle)
                    .fontWeight(.light)
                
                
                HStack(alignment: .center, spacing: 60) {
                    VStack{
                        Image("christmas")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        Text("VerdeNatale")
                            .font(.footnote)
                            .fontWeight(.light)
                    }
                    VStack{
                        Image("shopping")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        Text("SpesaGreen")
                            .font(.footnote)
                            .fontWeight(.light)
                    }
                    VStack{
                        Image("night")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        Text("SerataLowWaste")
                            .font(.footnote)
                            .fontWeight(.light)
                    }
                }
                Spacer()
            }
            .navigationTitle("Profilo")
            .navigationBarItems(trailing:
                                    Button(action: {
                showModal.toggle()
                
            }) {
                Text("Modifica")
                    .foregroundColor(.teal)
                // .padding( .top, 90.0)
                
            } )
            
            .sheet(isPresented: $showModal) {
                ModificaView(showModal: $showModal, immagineUtente: $immagineUtente)
            }
            .onAppear {
                nomeUtente = UserDefaults.standard.string(forKey: "nomeUtente") ?? ""
            }
            
        }
    }
    
    
    
}
