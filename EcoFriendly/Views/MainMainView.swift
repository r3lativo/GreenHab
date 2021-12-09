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
    static let grigioChiaro = Color("grigioChiaro")
}

struct MainMainView: View {
    
    //  RIATTIVARE LA STRINGA @AppStorage
    //  E DISATTIVARE LA @State PER FAR APPARIRE L'ONBOARDING
    
    //    @State var shouldShowOnboarding: Bool = true
    
    //    CERCARE USERDEFAULT
    
@AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    
    var body: some View {
        TabView() {
            
            SfideView()
                .tabItem {
                    Label("Sfide", systemImage: "leaf.arrow.triangle.circlepath")
                }.tag(1)
            
            OggiView()
                .tabItem {
                    Label("Oggi", systemImage: "calendar")
                }.tag(2)
            
            ProfiloView()
                .tabItem {
                    Label("Profilo", systemImage: "person")
                }.tag(3)
        }
        .accentColor(Color.teal)
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}



struct MainMain_Previews: PreviewProvider {
    static var previews: some View {
        MainMainView()
    }
}
