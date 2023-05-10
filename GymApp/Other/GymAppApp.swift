//
//  GymAppApp.swift
//  GymApp
//
//  Created by MacBook Aor on 2023-05-07.
//

import SwiftUI
import Firebase
@main
struct GymAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
  
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
       
        return true
    }
}
