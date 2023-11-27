//
//  CicloDeVidaSwiftUiApp.swift
//  CicloDeVidaSwiftUi
//
//  Created by Daniel Moya on 27/11/23.
//

import SwiftUI

@main
struct CicloDeVidaSwiftUiApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        inicio()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase){ (phase) in
            switch phase{
            case .active:
                print("Esta activo")
            case .inactive:
                print("Esta inactivo")
            case .background:
                print("Esta en background")
            @unknown default:
                fatalError("Algo salio mal")
            }
        }
    }
    
    func inicio() -> Void {
        print("inicio() es el primero en ejecutarse")
    }
}
