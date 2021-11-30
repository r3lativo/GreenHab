//
//  MainMainView.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 30/11/21.
//

import SwiftUI

//  Main TabView with buttons to move through the app

extension Color {
    static let coloreVerde = Color("coloreVerde")
    static let coloreCeleste = Color("coloreCeleste")
}

struct MainMainView: View {
    
    //  RIATTIVARE QUESTA STRINGA @AppStorage
    //  E DISATTIVARE LA @State SOTTO PER FAR PARTIRE LA APP
    //  @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    @State var shouldShowOnboarding: Bool = true
    
    var body: some View {
        TabView() {
            
            SfideView()
                .badge(2)
                .tabItem {
                    Image(systemName: "leaf.arrow.triangle.circlepath")
                    Text("Sfide")
                }
            
            VicinoATeView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Vicino a te")
                }
            
            ProfiloView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profilo")
                }
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}


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
                    promptAvatar: false,
                    promptUserName: false,
                    showStart: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Lanciati in tante nuove sfide",
                    imageName: "mountain",
                    description: "Sperimenta nuove abitudini ecosostenibili e inizia la tua scalata dei livelli.",
                    promptAvatar: false,
                    promptUserName: false,
                    showStart: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Informati sul riciclaggio nella tua zona",
                    imageName: "recycle.bin",
                    description: "Non sai cosa si butta oggi nel tuo comune? Nella sezione Vicino a te avrai tutte le informazioni che ti servono",
                    promptAvatar: false,
                    promptUserName: false,
                    showStart: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Scegli il tuo animale guida",
                    imageName: "",
                    description: "",
                    promptAvatar: true,
                    promptUserName: false,
                    showStart: false,
                    shouldShowOnboarding: $shouldShowOnboarding
                )
                
                PageView(
                    title: "Comincia l'avventura!",
                    imageName: "macchinaElettrica",
                    description: "dai",
                    promptAvatar: false,
                    promptUserName: false,
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
    let promptAvatar: Bool
    let promptUserName: Bool
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
            
            if promptAvatar {
                Text("Avatar")
            }
            
            
        }
    }
}

struct MainMain_Previews: PreviewProvider {
    static var previews: some View {
        MainMainView()
    }
}
