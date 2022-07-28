//
//  YellowCoordinator.swift
//  SwiftUINavigationExample
//
//  Created by Zhenya Pavlovskyi on 28.07.2022.
//

import Foundation

class YellowCoordinator: ObservableObject {
    enum Result {
        case navigationBack
    }
    var onResult: ((Result) -> Void)?
    var viewModel: YellowSwiftFile
    init(viewModel: YellowSwiftFile){
        self.viewModel = viewModel
        viewModel.onResult = { [weak self] result  in
            switch result {
            case .navigationBack:
                self?.onResult?(.navigationBack)
            }
        }
    }
}
