//
//  OnboardingView.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 01/12/21.
//

import Foundation
import SwiftUI

//  Onboarding

struct OnboardingView: View {
    
    @Binding var shouldShowOnboarding: Bool
    
        
    var body: some View {
            TabView {
                PageView(
                    title: "Benvenuto in\n GreenHab",
                    imageName: "planet",
                    description: "l’applicazione che ti aiuterà ad essere più eco-friendly 🌱",
                    showStart: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Lanciati in tante nuove sfide",
                    imageName: "mountain",
                    description: "Sperimenta nuove abitudini ecosostenibili grazie alle sfide",
                    showStart: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Informati sul riciclaggio nella tua zona",
                    imageName: "recycle.bin",
                    description: "Non sai dove e quando buttare i tuoi rifiuti? Scoprilo nella sezione Oggi",
                    showStart: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Scegli il tuo username",
                    imageName: "polarBear",
                    description: "",
                    showStart: true,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
            }
            .tabViewStyle(PageTabViewStyle())
            .background(Color.coloreCeleste).ignoresSafeArea()
    }
}

struct PageView: View {
    let title: String
    let imageName: String
    let description: String
    let showStart: Bool
    
    @Binding var shouldShowOnboarding: Bool
    @State var nomeUtente: String = ""
    
    var body: some View {
        VStack {
            Text (title)
                .font(.system(size:38))
                .multilineTextAlignment(.center)
                .padding()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 350)
                .padding()
            
            Text (description)
                .multilineTextAlignment(.center)
                .font(.system(size:26))
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showStart {
                HStack {
                    Text("Username")
                        .padding()
                        .foregroundColor(Color.primary)
                    TextField("Digita qui il tuo username", text: $nomeUtente)
                }
                .frame(width: 380, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.primary, lineWidth: 2)
                    )
                
                .padding(.bottom, 30.0)
                
                Button(action: {
                    UserDefaults.standard.set(nomeUtente, forKey: "Nome Utente")
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Inizia")
                        .font(.system(size: 20))
                        .foregroundColor(.primary)
                        .frame(width: 150, height: 50)
                        .background(Color.coloreVerde)
                        .cornerRadius(6)
                        .shadow(radius: 3)
                })
            }
        }
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(shouldShowOnboarding: .constant(true))
    }
}
