//
//  LoadingView.swift
//  WeatheryApp
//
//  Created by Arjun on 15/05/2024.
//

import SwiftUI
import CoreLocation

struct LoadingView: View {
    var body: some View {
       ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .primary))
            .font(.system(size: 100))
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
