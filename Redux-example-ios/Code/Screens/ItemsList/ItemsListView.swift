//
//  ItemsListView.swift
//  Redux-example-ios
//
//  Created by Max Kuznetsov on 16.04.2020.
//  Copyright © 2020 Max Kuznetsov. All rights reserved.
//

import SwiftUI

struct ItemsListView: View {
    var items: [Item]
    
    var body: some View {
        List(items) { item in
            Text(item.title)
        }
    }
}

struct ItemsListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsListView(items: Item.fakeItems())
    }
}
