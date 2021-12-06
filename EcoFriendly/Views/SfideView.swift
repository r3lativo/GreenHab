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
                            } )) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Color.coloreVerde)
                                    
                                    HStack {
                                        Text(challenge.nomeSfida)
                                            .font(.system(size: 26))
                                            .foregroundColor(Color.primary)
                                            .fontWeight(.medium)
                                            .padding(.leading)
                                            .multilineTextAlignment(.leading)
                                        
                                        Spacer()
                                        
                                        Image(challenge.iconaSfida)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 120, height: 120)
                                            .padding()
                                    }
                                }
                                .frame(height: 180)
                            }
                        }
                        .padding([.leading, .trailing])
                    }
                    Text("scegli una nuova sfida")
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(.trailing, 160.0)
                    
                    ForEach(userChallenges.sfida.filter({
                        !$0.sfidaInCorso
                    })) { challenge in
                        NavigationLink(destination: CoseDaFareView(challenge: challenge, changeStatus: { index in
                            if let id = userChallenges.sfida.firstIndex(where: {
                                $0.id == index
                            }) {
                                userChallenges.sfida[id].sfidaInCorso = true
                            }
                        } )) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color.coloreVerde)
                                
                                HStack {
                                    Text(challenge.nomeSfida)
                                        .font(.system(size: 26))
                                        .foregroundColor(Color.primary)
                                        .fontWeight(.medium)
                                        .padding(.leading)
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                    
                                    Image(challenge.iconaSfida)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 120, height: 120)
                                        .padding()
                                }
                            }
                            .frame(height: 180)
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
