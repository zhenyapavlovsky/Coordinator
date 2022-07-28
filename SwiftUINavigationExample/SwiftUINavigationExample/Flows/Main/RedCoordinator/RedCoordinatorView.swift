//
//  RedCoordinatorView.swift
//  SwiftUINavigationExample
//
//  Created by Vasyl Nadtochii on 28.06.2022.
//

import SwiftUI

struct RedCoordinatorView: View {

    @ObservedObject var coordinator: RedCoordinator

    var body: some View {
        NavigationView {
            ZStack {
                RedView(viewModel: coordinator.viewModel)
            }
        }
    }
}
