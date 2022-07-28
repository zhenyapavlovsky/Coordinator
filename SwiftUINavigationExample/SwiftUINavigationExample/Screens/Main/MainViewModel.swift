//
//  MainViewModel.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import Foundation

class MainViewModel: ObservableObject {

    enum Result {
        case shouldOpenBlueView
        case shouldOpenRedView
    }

    var onResult: ((Result) -> Void)?

    func onBlueButtonTap() {
        onResult?(.shouldOpenBlueView)
    }

    func onRedButtonTap() {
        onResult?(.shouldOpenRedView)
    }
}
