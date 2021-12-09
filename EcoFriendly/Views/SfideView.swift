//
//  SfideView.swift
//  EcoSus
//
//  Created by Giovanni Duca on 26/11/21.
//

import SwiftUI


struct SfideView: View {
    
    @StateObject var userChallenges = UserChallenge()
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    if !userChallenges.sfida.filter({
                        $0.sfidaInCorso
                    }).isEmpty {
                        
                        Text("in corso")
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding(.trailing, 300.0)
                        
                        ForEach(userChallenges.sfida.filter({
                            $0.sfidaInCorso
                        })) { challenge in
                            NavigationLink(destination: CoseDaFareView(challenge: challenge, changeStatus: { index in
                                if let id = userChallenges.sfida.firstIndex(where: {
                                    $0.id == index
                                }) {
                                    userChallenges.sfida[id].sfidaInCorso = true
                                }
                            }, changeTask: { index in
                                if let id = challenge.componenti.firstIndex(where: {$0.id == index
                                    
                                }), let currentChallenge = userChallenges.sfida.firstIndex(where: {
                                    $0.id == challenge.id
                                }) {
                                    withAnimation {
                                        userChallenges.sfida[currentChallenge].componenti[id].cosaCompletata.toggle()
                                    }
                                    
                                    
                                    if userChallenges.sfida[currentChallenge].componenti.filter({!$0.cosaCompletata}).isEmpty {
                                        userChallenges.sfida[currentChallenge].sfidaCompletata = true
                                        
                                        var badges = UserDefaults.standard.array(forKey: "badges") as? [String] ?? []
                                        if !badges.contains(challenge.iconaSfida) {
                                            badges.append(challenge.iconaSfida)
                                            UserDefaults.standard.set(badges, forKey: "badges")
                                        }

                                    }
                                    
                                }
                                
                            }, makeCompleted: { index in
                                if let id = userChallenges.sfida.firstIndex(where: {
                                    $0.id == index
                                }) {
                                    userChallenges.sfida[id].sfidaInCorso = false
                                    userChallenges.sfida[id].sfidaCompletata = false
                                    userChallenges.sfida[id].componenti.forEach { item in
                                       if let index = userChallenges.sfida[id].componenti.firstIndex(where: {
                                            $0.id == item.id
                                       }) {
                                           userChallenges.sfida[id].componenti[index].cosaCompletata = false
                                       }
                                    }
                                }
                            } )) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Color.coloreVerde)
                                        .shadow(radius: 5)

                                    
                                    HStack {
                                        VStack {
                                            Text(challenge.nomeSfida)
                                                .font(.title)
                                                .foregroundColor(Color.primary)
                                                .fontWeight(.medium)
                                                .padding([.top, .leading])
                                            .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                        Spacer()
                                        
                                        Image(challenge.iconaSfida)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 120, height: 120)
                                            .padding()
                                    }
                                }
                                .frame(height: 160)
                                .padding(.bottom, 5)
                            }
                        }
                        .padding([.leading, .trailing])
                    }
                    Text("scegli una sfida")
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(.trailing, 220.0)
                    
                    ForEach(userChallenges.sfida.filter({
                        !$0.sfidaInCorso
                    })) { challenge in
                        NavigationLink(destination: CoseDaFareView(challenge: challenge, changeStatus: { index in
                            if let id = userChallenges.sfida.firstIndex(where: {
                                $0.id == index
                            }) {
                                userChallenges.sfida[id].sfidaInCorso = true
                            }
                            
                            
                        }, changeTask: { index in
                            if let id = challenge.componenti.firstIndex(where: {$0.id == index
                                
                            }), let currentChallenge = userChallenges.sfida.firstIndex(where: {
                                $0.id == challenge.id
                            }) {
                                withAnimation {
                                    userChallenges.sfida[currentChallenge].componenti[id].cosaCompletata.toggle()
                                }
                                
                                if userChallenges.sfida[currentChallenge].componenti.filter({!$0.cosaCompletata}).isEmpty {
                                    userChallenges.sfida[currentChallenge].sfidaCompletata = true
                                    
                                    var badges = UserDefaults.standard.array(forKey: "badges") as? [String] ?? []
                                    if !badges.contains(challenge.iconaSfida) {
                                        badges.append(challenge.iconaSfida)
                                        UserDefaults.standard.set(badges, forKey: "badges")
                                    }
                                    
                                }
                                
                            }
                            
                        }, makeCompleted: { index in
                            if let id = userChallenges.sfida.firstIndex(where: {
                                $0.id == index
                            }) {
                                userChallenges.sfida[id].sfidaInCorso = false
                                userChallenges.sfida[id].sfidaCompletata = false
                                userChallenges.sfida[id].componenti.forEach { item in
                                   if let index = userChallenges.sfida[id].componenti.firstIndex(where: {
                                        $0.id == item.id
                                   }) {
                                       userChallenges.sfida[id].componenti[index].cosaCompletata = false
                                   }
                                }
                            }
                        } )) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color.coloreVerde)
                                    .shadow(radius: 5)
                                
                                HStack {
                                    VStack {
                                        Text(challenge.nomeSfida)
                                            .font(.title)
                                            .foregroundColor(Color.primary)
                                            .fontWeight(.medium)
                                            .padding([.top, .leading])
                                        .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                    Spacer()
                                    
                                    Image(challenge.iconaSfida)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 120, height: 120)
                                        .padding()
                                }
                            }
                            .frame(height: 160)
                            .padding(.bottom, 5)
                        }
                    }
                    .padding([.leading, .trailing])
                }
            }
            .navigationTitle("Sfide")
            
        }
    }
}


struct SfideView_Previews: PreviewProvider {
    static var previews: some View {
        SfideView()
            
    }
}
