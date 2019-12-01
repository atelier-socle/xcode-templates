//
//  ___VARIABLE_sceneName___View.swift
//  Sample
//
//  Created by Tom Baranes on 16/11/2019.
//  Copyright © 2019 Atelier Socle. All rights reserved.
//

import SwiftUI

struct ___VARIABLE_sceneName___View: View {
    var presenter: ___VARIABLE_sceneName___PresenterLogic
    @ObservedObject var viewModel: ___VARIABLE_sceneName___ViewModel
}

// MARK: - Body

extension ___VARIABLE_sceneName___View {

    var body: some View {
        List {
            Section {
                btnFetchName
            }
            Section {
                sectionNameCells
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle(viewModel.navigationBarTitle)
    }

    private var btnFetchName: some View {
        Button(action: presenter.fetchName) {
            Text(viewModel.addName)
        }
    }

    private var sectionNameCells: some View {
        ForEach(viewModel.names, id: \.self) { name in
            NavigationLink(destination: self.viewModel.nextView) {
                Text(name)
            }
        }
    }

}

#if DEBUG
struct ___VARIABLE_sceneName___View_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ___VARIABLE_sceneName___SceneBuilder().view.environment(\.colorScheme, .dark)
            }
            NavigationView {
                ___VARIABLE_sceneName___SceneBuilder().view.environment(\.colorScheme, .light)
            }
        }
    }
}
#endif
