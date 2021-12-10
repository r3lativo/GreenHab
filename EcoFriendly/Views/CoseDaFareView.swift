//
//  TasksView.swift
//  EcoFriendly
//
//  Created by Giovanni Duca on 03/12/21.
//

import UserNotifications
import SwiftUI

func scheduleNotification() {
    let center = UNUserNotificationCenter.current()

    let content = UNMutableNotificationContent()
    content.title = "GreenHab"
    content.body = "Hey eco-friend! Non dimenticare le tue sfide in corso 😁"
    content.categoryIdentifier = "alarm"
    content.userInfo = ["customData": "fizzbuzz"]
    content.sound = UNNotificationSound.default

    var dateComponents = DateComponents()
    dateComponents.hour = 10
    dateComponents.minute = 30
    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)

    let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
    center.add(request)
}



struct CoseDaFareView: View {
    
    let challenge: Sfida
    let changeStatus: (UUID) -> Void
    let changeTask: (UUID) -> Void
    let makeCompleted: (UUID) -> Void
    
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false

    var body: some View {
        VStack {
            
            Text(challenge.spiegazione)
                .foregroundColor(Color.secondary)
                .padding()
            
            List {
                ForEach(challenge.componenti) { task in
                    HStack {
                        Button(action: {
                            changeTask(task.id)
                        }) {
                            Image(task.immagineCosa)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .saturation(task.cosaCompletata ? 1 : -10)
                                .animation(.default)
                        }
                        .disabled(!challenge.sfidaInCorso)
                        Text(task.descrizioneCosa)
                            .padding()
                    }
                }
            }
            
            if challenge.sfidaInCorso == false {
                Button(action: {
                    changeStatus(challenge.id)
                    presentationMode.wrappedValue.dismiss()
                    scheduleNotification()

//                    vorrei restare sulla stessa schermata
//                    ma invece mi fa tornare indietro
                }) {
                    Text("Accetta la sfida")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .frame(width: 380, height: 50)
                        .background(Color.coloreVerde)
                        .cornerRadius(6)
                        .shadow(radius: 3)
                }
                .padding(.bottom)
                
            } else if challenge.sfidaCompletata == true {
               
                Button(action: {
                    showAlert = true
                    makeCompleted(challenge.id)
                    presentationMode.wrappedValue.dismiss()
                    
                }) {
                    Text("Segna la sfida come completata")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .frame(width: 380, height: 50)
                        .background(Color.coloreVerde)
                        .cornerRadius(6)
                        .shadow(radius: 3)
                }
                .padding(.bottom)
                
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Hai ottenuto un badge!"),
                        message: Text("Puoi vederlo nella sezione profilo")
                    )
                }
               
            }
              
        }
        .navigationTitle(challenge.nomeSfida)
        .navigationBarTitleDisplayMode(.inline)
    }
}


