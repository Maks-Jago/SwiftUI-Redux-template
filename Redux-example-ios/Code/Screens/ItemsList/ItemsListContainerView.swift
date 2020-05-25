//
//  ItemsListContainerView.swift
//  Redux-example-ios
//
//  Created by Max Kuznetsov on 16.04.2020.
//  Copyright © 2020 Max Kuznetsov. All rights reserved.
//

import SwiftUI

struct ItemsListContainerView: View {
    @EnvironmentObject var store: Store<AppState, AppAction>
    
    var body: some View {
        ItemsListView(items: store.state.items)
            .onAppear(perform: loadItems)
    }
}

// MARK: - Actions
private extension ItemsListContainerView {
    
    func loadItems() {
        store.send(.items(action: .loadItems))
    }
}

struct ItemsListContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsListContainerView()
    }
}
