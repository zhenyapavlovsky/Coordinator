//
//  MainCoordinatorView.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import SwiftUI
import SwiftUINavigation

struct MainCoordinatorView: View {

    @ObservedObject var coordinator: MainCoordinator

    var body: some View {
        NavigationView {
            ZStack {
                MainView(viewModel: coordinator.viewModel)
                    .navigationBarHidden(true)
//                    .fullScreenCover(
//                        unwrapping: $coordinator.route,
//                        case: /MainCoordinator.Route.blueScreen,
//                        content: { _ in
//                            BlueView(navigateBackHandler: { // then we need to show BlueView (!)
//                                /// !!! - pay attention to that - !!!
//                                self.coordinator.route = nil
//                            })
//                            .navigationBarTitleDisplayMode(.inline) // navigation bar takes less space
//                            .navigationTitle("Blue screen")
//                        }
//                    )

                /// 1) simpler way
                NavigationLink(
                    unwrapping: $coordinator.route, // when we set route property of our MainCoordinator..
                    case: /MainCoordinator.Route.blueScreen, // when its value == .blueScreen
                    destination: { _ in
                        BlueView(navigateBackHandler: { // then we need to show BlueView (!)
                            /// !!! - pay attention to that - !!!
                            self.coordinator.route = nil
                        })
                        .navigationBarTitleDisplayMode(.inline) // navigation bar takes less space
                        .navigationTitle("Blue screen")
                    },
                    onNavigate: { _ in }, // it is not really needed
                    label: {} // that's too
                )

                /// 2) harder but widely used way
                NavigationLink(
                    unwrapping: $coordinator.route, // when we set route property of our MainCoordinator..
                    case: /MainCoordinator.Route.redScreen, // when its value == .redScreen
                    destination: { (coordinator: Binding<RedCoordinator>) in // .redScreen( -> coordinator: RedCoordinator <- ) (!!!)
                        RedCoordinatorView(coordinator: coordinator.wrappedValue) // then we need to show RedCoordinatorView (!)
                            .navigationBarHidden(true) // ! - hides Navigation bar created by NavigationView
                    },
                    onNavigate: { _ in }, // not needed
                    label: {} // not needed
                )
            }
        }
    }
}
