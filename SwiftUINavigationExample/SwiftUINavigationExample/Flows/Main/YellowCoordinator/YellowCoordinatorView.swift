//
//  YellowCoordinatorView.swift
//  SwiftUINavigationExample
//
//  Created by Zhenya Pavlovskyi on 28.07.2022.
//

import SwiftUI
import SwiftUINavigation


struct YellowCoordinatorView: View {
    @ObservedObject var coordinator: YellowCoordinator
    var body: some View {
        NavigationView {
            ZStack {
                YellowView(viewModel: coordinator.viewModel)
            }
        }
    }
}

