//
//  YellowView.swift
//  SwiftUINavigationExample
//
//  Created by Zhenya Pavlovskyi on 28.07.2022.
//

import SwiftUI

struct YellowView: View {
    @ObservedObject var viewModel: YellowSwiftFile
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.4).ignoresSafeArea()
            VStack {
                Button(action: {viewModel.onTapButtonBack()}) {
                    Text("Back")
                }
            }
        }
    }
}


struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        YellowView(viewModel: .init())
    }
}
