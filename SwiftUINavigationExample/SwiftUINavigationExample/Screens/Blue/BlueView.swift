//
//  BlueView.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import SwiftUI

struct BlueView: View {

    var navigateBackHandler: () -> Void

    var body: some View {
        ZStack {
            Color.blue.opacity(0.75).ignoresSafeArea()

            VStack {
                Button {
                    navigateBackHandler()
                } label: {
                    Text("⬅️ Navigate Back")
                        .padding()
                        .accentColor(.white)
                }
            }
        }
    }
}

#if DEBUG
struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView(navigateBackHandler: {})
    }
}
#endif
