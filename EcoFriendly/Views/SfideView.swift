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
                                    userChallenges.sfida[currentChallenge].componenti[id].cosaCompletata.toggle()
                                    
                                    if userChallenges.sfida[currentChallenge].componenti.filter({!$0.cosaCompletata}).isEmpty {
                                        userChallenges.sfida[currentChallenge].sfidaCompletata = true
                                        
                                       @State var badges = userChallenges.sfida.filter{$0.sfidaCompletata}.reduce([String](), {$0 + [$1.iconaSfida]} )
                                        UserDefaults.standard.set(badges, forKey: "badges")

                                    }
                                    
                                }
                                
                            } )) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Color.coloreVerde)
                                    
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
                                userChallenges.sfida[currentChallenge].componenti[id].cosaCompletata.toggle()
                            }
                            
                        } )) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color.coloreVerde)
                                
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
