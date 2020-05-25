//
//  ItemsReducer.swift
//  Redux-example-ios
//
//  Created by Max Kuznetsov on 16.04.2020.
//  Copyright © 2020 Max Kuznetsov. All rights reserved.
//

import Foundation
import Combine

let itemsReducer: Reducer<AppState, AppAction.ItemsAction> = Reducer { state, action in
    switch action {
    case .setItems(let items):
        state.isLoaderPresented = false
        state.items = items
        
    case .loadItems:
        return Just(Item.fakeItems())
            .delay(for: 4, scheduler: DispatchQueue.main)
            .map { .setItems($0) }
            .eraseToAnyPublisher()
        
    case .updateItem(let item):
        state.items = state.items.arrayByUpdatingItem(item)
        
    default:
        break
    }
    
    return nil
}
