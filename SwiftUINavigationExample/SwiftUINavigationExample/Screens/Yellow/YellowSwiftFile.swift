//
//  YellowSwiftFile.swift
//  SwiftUINavigationExample
//
//  Created by Zhenya Pavlovskyi on 28.07.2022.
//

import Foundation

class YellowSwiftFile: ObservableObject {
    enum Result {
        case navigationBack
    }
    var onResult:((Result) -> Void)?
    
    func onTapButtonBack(){
        onResult?(.navigationBack)
    }
}
