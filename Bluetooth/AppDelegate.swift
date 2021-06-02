//
// AppDelegate.swift
// Bluetooth
//
// Created by Fernando Belen on 31/05/2021.
//
import UIKit
import CoreBluetooth
@main
class AppDelegate: UIResponder, UIApplicationDelegate, CBCentralManagerDelegate, CBPeripheralDelegate {
   
    
  var manager:CBCentralManager!
  
    
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    
    
    manager = CBCentralManager(delegate: self, queue: nil)
    

    
    return true
  }
  // MARK: UISceneSession Lifecycle
  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }
  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }


 /*   func centralManagerDidUpdateState(_ central: CBCentralManager) {
        var msg = ""
        switch (central.state) {
        case .poweredOff:
          msg = "Bluetooth is Powered off"
        }
        print("\(msg)")
    }
    
    
    func centralManagerDidUpdateState2(_ central: CBCentralManager) {
        var msg = ""
        switch (central.state) {
        case .poweredOn:
          msg = "Bluetooth is Powered on"
        }
        print("\(msg)")
    }
  */
    
    func centralManagerDidUpdateState(_ central: CBCentralManager){
        
        if central.state != .poweredOn{
            print("Bluetooth is Powered Off")
        } else{
            print("Bluetooth is Powered On")
            
        }
    }
    

}
