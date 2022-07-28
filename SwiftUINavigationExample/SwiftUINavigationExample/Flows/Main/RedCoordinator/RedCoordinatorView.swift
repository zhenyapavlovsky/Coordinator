//
//  RedCoordinatorView.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import SwiftUI
import SwiftUINavigation

struct RedCoordinatorView: View {

    @ObservedObject var coordinator: RedCoordinator

    var body: some View {
        NavigationView {
            ZStack {
                RedView(viewModel: coordinator.viewModel)
                NavigationLink(
                    unwrapping: $coordinator.route,
                    case:/RedCoordinator.Route.yellowScreen,
                    destination: {(coordinator: Binding<YellowCoordinator>) in
                        YellowCoordinatorView(coordinator: coordinator.wrappedValue)
                    },
                    onNavigate: {_ in }) {
                        
                    }
            }
        }
    }
}
