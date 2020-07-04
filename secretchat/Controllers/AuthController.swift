//
//  AuthController.swift
//  secretchat
//
//  Created by Chris Liu on 4/7/2020.
//  Copyright © 2020 Secret Chat. All rights reserved.
//

import SwiftUI
import Firebase
import Combine

class AuthController: ObservableObject {
    @Published var user: User?
    var handle: AuthStateDidChangeListenerHandle?
    
    init() {
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            if let user = user {
                self.user = User(
                    uid: user.uid,
                    email: user.email,
                    displayName: user.displayName
                )
            } else {
                self.user = nil
            }
        }
    }
    
    func signIn(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        Auth.auth().signIn(withEmail: email, password: password, completion: handler)
    }
    
    func signUp(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        Auth.auth().createUser(withEmail: email, password: password, completion: handler)
    }
    
    func signOut() -> Bool {
        do {
            try Auth.auth().signOut()
            self.user = nil
            return true
        } catch {
            return false
        }
    }
    
    func unbind() {
        if let handle = handle {
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }
}

class User {
    var uid: String
    var email: String?
    var displayName: String?
    
    init(uid: String, email: String?, displayName: String?) {
        self.uid = uid
        self.email = email
        self.displayName = displayName
    }
}
