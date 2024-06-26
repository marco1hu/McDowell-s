//
//  SceneDelegate.swift
//  McClone2
//
//  Created by IFTS40 on 21/04/24.
//

import UIKit
import FirebaseAuth

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        //altro
        if Auth.auth().currentUser?.uid == nil{
              
              let storyboard = UIStoryboard(name: "Main", bundle: nil)
              let initialViewController = storyboard.instantiateViewController(withIdentifier: "firstViewC")
                window?.rootViewController = initialViewController
                window?.makeKeyAndVisible()
            }else{
              let storyboard = UIStoryboard(name: "Main", bundle: nil)
              let initialViewController = storyboard.instantiateViewController(withIdentifier: "homeViewC")
                window?.rootViewController = initialViewController
                window?.makeKeyAndVisible()
            }
        
        
        
        guard let passD = KeyChainHelper.retrieveData(forService: Config.service, account: Config.accountP),
              let mailD = KeyChainHelper.retrieveData(forService: Config.service, account: Config.accountM) else {
            print("Non sono riuscito a prendere i dati dal keychain")
            return
        }
        
        let password = String(data: passD, encoding: .utf8)
        let mail = String(data: mailD, encoding: .utf8)
        
        print("Retrieved password and email \(password!) \(mail!)")
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

