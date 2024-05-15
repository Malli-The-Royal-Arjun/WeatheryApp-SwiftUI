//
//  WeatheryApp.swift
//  WeatheryApp
//
//  Created by Arjun on 15/05/2024.
//

import SwiftUI
import UIKit

@main
struct WeatheryApp: App {
    @StateObject var colorSchemeManager = ColorSchemeManager()
    @StateObject var locationManager = LocationManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: WeatherViewModel(weather: previewData))
                .environmentObject(colorSchemeManager)
                .environmentObject(LocationManager())
        }
    }
}
