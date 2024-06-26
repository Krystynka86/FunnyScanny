//
//  FunnyScannyApp.swift
//  FunnyScanny
//
//  Created by Cristina on 2024-06-07.
//

import SwiftUI

@main
struct FunnyScannyApp: App {
    
    @StateObject private var vm = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
                .task {
                    await vm.requestDataScannerAccessStatus()
                }
        }
    }
}
