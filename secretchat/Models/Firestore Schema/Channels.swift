//
//  Channels.swift
//  secretchat
//
//  Created by Chris Liu on 6/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI
import Foundation
import Firebase

struct Channel: Identifiable {
    var id: String
    var name: String
    var participants: [String]
}

class Channels: ObservableObject {
    @Published var channels = [Channel]()
    
    var db = Firestore.firestore()
    
    func getChannelsByUserId(userId: String) {
        print(Auth.auth().currentUser?.uid ?? "")
        db.collection("channels").whereField("participants", arrayContains: userId)
            .addSnapshotListener { (querySnapshot, error) in
                guard let documents = querySnapshot?.documents else {
                    print("Fetch channels error.")
                    return
                }
                
                self.channels = documents.map{ queryDocumentSnapshot -> Channel in
                    let data = queryDocumentSnapshot.data()
                    let id = data["id"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    let participants = data["participants"] as? [String] ?? []
                    print(id, name, participants)
                    
                    return Channel(id: id, name: name, participants: participants)
                }
            }
    }
}
