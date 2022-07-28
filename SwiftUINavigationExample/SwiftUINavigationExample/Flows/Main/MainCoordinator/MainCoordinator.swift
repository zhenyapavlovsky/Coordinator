//
//  MainCoordinator.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import Foundation

class MainCoordinator: ObservableObject {

    enum Route {
        case blueScreen
        case redScreen(coordinator: RedCoordinator)
    }

    @Published var route: Route?

    var viewModel: MainViewModel

    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = { [weak self] result in
            switch result {
            case .shouldOpenBlueView:
                self?.route = .blueScreen
            case .shouldOpenRedView:
                self?.routeToRedScreen()
            }
        }
    }

    private func routeToRedScreen() {
        let coordinator = RedCoordinator(
            viewModel: RedViewModel()
        )
        coordinator.onResult = { [weak self] result in
            switch result {
            case .navigateBack:
                /// ! - Pay attention to that - !
                self?.route = nil
            }
        }
        route = .redScreen(coordinator: coordinator)
    }
}
