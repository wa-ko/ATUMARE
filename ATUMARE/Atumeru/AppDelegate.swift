//
//  AppDelegate.swift
//  ATUMARE
//
//  Created by 今村大輝 on 2023/10/30.
//

import Foundation
import UIKit
import GoogleMaps

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        GMSServices.provideAPIKey(API_KEY)
        return true
    }
}
