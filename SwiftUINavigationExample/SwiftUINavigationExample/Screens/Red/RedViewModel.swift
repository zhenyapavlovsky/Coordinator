//
//  RedViewModel.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import Foundation

class RedViewModel: ObservableObject {

    enum Result {
        case navigateBack
        case shouldOpenYellowScreen
    }

    var onResult: ((Result) -> Void)?

    func onBackButtonTap() {
        onResult?(.navigateBack)
    }

    func onYellowButtonTap() {
        onResult?(.shouldOpenYellowScreen)
    }
}
