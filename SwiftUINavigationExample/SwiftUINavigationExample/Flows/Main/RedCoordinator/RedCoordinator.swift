//
//  RedCoordinator.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import Foundation
import SwiftUI

class RedCoordinator: ObservableObject {

    enum Result {
        case navigateBack
    }

    var onResult: ((Result) -> Void)?

    enum Route {
        case yellowScreen (yellowCoordinator: YellowCoordinator)
    }

    @Published var route: Route? // nil - red screen

    var viewModel: RedViewModel
    
    
    init(viewModel: RedViewModel) {
        self.viewModel = viewModel
        viewModel.onResult = { [weak self] result in
            switch result {
            case .navigateBack:
                withAnimation {
                    self?.onResult?(.navigateBack)
                }
            case .shouldOpenYellowScreen:
                self?.moveToYellowScreen()
            }
        }
    }
    func moveToYellowScreen(){
        let yellowScreen = YellowCoordinator(viewModel: YellowSwiftFile())
        yellowScreen.onResult = { [weak self] result in
            switch result {
            case .navigationBack:
                self?.route = nil
            }
        }
        route = .yellowScreen(yellowCoordinator: yellowScreen)
    }
}
