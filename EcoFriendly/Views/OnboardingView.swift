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
        ZStack {
            Color.coloreCeleste.ignoresSafeArea()
            TabView {
                PageView(
                    title: "Benvenuto in GreenHab",
                    imageName: "planet",
                    description: "l'app che ti aiuta ad essere più eco-friendly",
                    showStart: false,
                    showPromptUsername: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Lanciati in tante nuove sfide",
                    imageName: "mountain",
                    description: "Sperimenta nuove abitudini ecosostenibili e inizia la tua scalata dei livelli.",
                    showStart: false,
                    showPromptUsername: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Informati sul riciclaggio",
                    imageName: "recycle.bin",
                    description: "Non sai cosa si butta oggi nel tuo comune? Nella sezione Vicino a te avrai tutte le informazioni che ti servono",
                    showStart: false,
                    showPromptUsername: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Scegli il tuo username",
                    imageName: "polarBear",
                    description: "",
                    showStart: true,
                    showPromptUsername: true,
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
    let showPromptUsername: Bool
    
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
            
            if showPromptUsername {
                HStack {
                    Text("Username")
                        .padding()
                    TextField("Nome", text: $nomeUtente)
                }
                .background(Color.white)
                .padding()
                .cornerRadius(20)
            }
            
            
            Text (description)
                .multilineTextAlignment(.center)
                .font(.system(size:26))
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showStart {
                Button(action: {
                    UserDefaults.standard.set(nomeUtente, forKey: "Nome Utente")
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Inizia")
                        .bold()
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .frame(width: 150, height: 50)
                        .background(Color.coloreVerde)
                        .cornerRadius(6)
                        .shadow(radius: 5)
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
