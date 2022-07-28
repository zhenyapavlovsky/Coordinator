//
//  MainView.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import SwiftUI

struct MainView: View {

    @ObservedObject var viewModel: MainViewModel

    var body: some View {
        VStack {
            Button {
                viewModel.onBlueButtonTap()
            } label: {
                Text("Navigate To **BLUE** Screen ➡️")
                    .padding()
                    .accentColor(.blue)
            }

            Button {
                viewModel.onRedButtonTap()
            } label: {
                Text("Navigate To **RED** Screen ➡️")
                    .padding()
                    .accentColor(.red)
            }
        }
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: .init())
    }
}
#endif
