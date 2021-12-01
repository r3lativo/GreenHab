//
//  Onboarding.swift
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
        ZStack {
            Color.coloreCeleste.ignoresSafeArea()
            TabView {
                PageView(
                    title: "Benvenuto in GreenHab",
                    imageName: "planet",
                    description: "l'app che ti aiuta ad essere più eco-friendly",
                    showStart: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Lanciati in tante nuove sfide",
                    imageName: "mountain",
                    description: "Sperimenta nuove abitudini ecosostenibili e inizia la tua scalata dei livelli.",
                    showStart: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Informati sul riciclaggio nella tua zona",
                    imageName: "recycle.bin",
                    description: "Non sai cosa si butta oggi nel tuo comune? Nella sezione Vicino a te avrai tutte le informazioni che ti servono",
                    showStart: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                ChooseAnimalView(shouldShowOnboarding: $shouldShowOnboarding, userName: "Scrivi qui il tuo nome utente")
                
                PageView(
                    title: "Comincia l'avventura!",
                    imageName: "macchinaElettrica",
                    description: "dai",
                    showStart: true,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                
                
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct PageView: View {
    let title: String
    let imageName: String
    let description: String
    let showStart: Bool
    
    @Binding var shouldShowOnboarding: Bool
    
    
    
    var body: some View {
        VStack {
            Text (title)
                .font(.system(size:42))
                .multilineTextAlignment(.center)
                .padding()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
                .padding()
            
            
            Text (description)
                .multilineTextAlignment(.center)
                .font(.system(size:26))
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showStart {
                Button(action: {
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Inizia")
                        .bold()
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .frame(width: 150, height: 50)
                        .background(Color.coloreVerde)
                        .cornerRadius(6)
                        .shadow(radius: 6)
                })
            }
        }
    }
}

