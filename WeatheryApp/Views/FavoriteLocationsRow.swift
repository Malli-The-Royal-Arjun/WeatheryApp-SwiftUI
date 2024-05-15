//
//  FavoriteLocationsRow.swift
//  WeatheryApp
//
//  Created by Arjun on 15/05/2024.
//

import SwiftUI

struct FavoriteLocationsRow: View {
    @StateObject var viewModel: WeatherViewModel
    @EnvironmentObject var colorSchemeManager: ColorSchemeManager
    
    var body: some View {
        HStack {
            Text(viewModel.weather.city.name)
            Spacer()
            viewModel.weatherIcon(for: viewModel.main)
                .renderingMode(.original)
                .shadow(radius: 5)
            Text(viewModel.temperature)
            Image(systemName: "ellipsis")
                .rotationEffect(.degrees(90))
        }
        .environment(\.colorScheme, colorSchemeManager.currentScheme)
    }
}

#Preview {
    FavoriteLocationsRow(viewModel: WeatherViewModel(weather: previewData))
        .environmentObject(ColorSchemeManager())
        .environment(\.colorScheme, ColorSchemeManager().currentScheme)
}
