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
    
    //  RIATTIVARE LA STRINGA @AppStorage
    //  E DISATTIVARE LA @State PER FAR APPARIRE L'ONBOARDING
    
//    @State var shouldShowOnboarding: Bool = true
    
      @AppStorage("shouldShowOnboarding") var shouldShowOnboarding: Bool = true
    
    
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



struct MainMain_Previews: PreviewProvider {
    static var previews: some View {
        MainMainView()
    }
}
