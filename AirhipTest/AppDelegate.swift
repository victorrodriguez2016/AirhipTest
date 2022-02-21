//
//  AppDelegate.swift
//  AirhipTest
//
//  Created by Victor Rodriguez on 21/2/22.
//

import Foundation
import AirshipCore

final class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        // Airship 14.4.1
        let config = UAConfig()

        config.developmentAppKey = "your_development_key"
        config.developmentAppSecret = "your_development_secret"
        config.productionAppKey = "your_production_key"
        config.productionAppSecret = "your_production_secret"

        config.developmentLogLevel = .debug
        config.productionLogLevel = .none
        config.site = .EU

        #if DEBUG
        config.isInProduction = false
        #else
            config.isInnProduction = true
        #endif

        UAirship.takeOff(config)
        UAirship.push().notificationOptions = [.alert, .badge, .sound, .provisional]
        UAirship.push().defaultPresentationOptions = [.badge, .sound]
        UAirship.push().userPushNotificationsEnabled = true

        // Airship 16.2.0
//        let config = Config()
//
//        config.developmentAppKey = "your_development_key"
//        config.developmentAppSecret = "your_development_secret"
//        config.productionAppKey = "your_production_key"
//        config.productionAppSecret = "your_production_secret"
//
//        config.developmentLogLevel = .debug
//        config.productionLogLevel = .none
//        config.site = .eu
//
//        #if DEBUG
//            config.inProduction = false
//        #else
//            config.inProduction = true
//        #endif
//
//        Airship.takeOff(config, launchOptions: launchOptions)
//        Airship.push.notificationOptions = [.alert, .badge, .sound, .provisional]
//        Airship.push.defaultPresentationOptions = [.badge, .sound, .list, .banner]
//        Airship.push.userPushNotificationsEnabled = true

        return true
    }
}
