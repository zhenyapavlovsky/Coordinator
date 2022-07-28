//
//  SwiftUINavigationExampleApp.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import SwiftUI

@main
struct SwiftUINavigationExampleApp: App {
    var body: some Scene {
        WindowGroup {
            MainCoordinatorView(
                coordinator: MainCoordinator(
                    viewModel: MainViewModel()
                )
            )
        }
    }
}
