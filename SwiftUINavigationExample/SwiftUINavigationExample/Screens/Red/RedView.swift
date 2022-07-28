//
//  RedView.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import SwiftUI

struct RedView: View {

    @ObservedObject var viewModel: RedViewModel

    var body: some View {
        ZStack {
            Color.red.opacity(0.75).ignoresSafeArea()
            VStack {
                Button {
                    viewModel.onBackButtonTap()
                } label: {
                    Text("⬅️ Navigate Back")
                        .padding()
                        .accentColor(.white)
                }

                Button {
                    viewModel.onYellowButtonTap()
                } label: {
                    Text("Navigate To **Yellow** Screen ➡️")
                        .padding()
                        .accentColor(.yellow)
                }
            }
        }
    }
}

#if DEBUG
struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView(viewModel: .init())
    }
}
#endif
