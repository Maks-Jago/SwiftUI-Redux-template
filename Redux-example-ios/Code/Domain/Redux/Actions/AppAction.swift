//
//  AppAction.swift
//  Redux-example-ios
//
//  Created by Max Kuznetsov on 16.04.2020.
//  Copyright © 2020 Max Kuznetsov. All rights reserved.
//

import Foundation

enum AppAction {
    case common(action: CommonAction)
    case items(action: ItemsAction)
}

// MARK: - Common actions
extension AppAction {
    
    enum CommonAction {
        case setIsAlert(presented: Bool)
        case showAlert(style: AlertBuilder.AlertStyle)
        case setIsLoaderPresented(presented: Bool)
    }
}

// MARK: - Items actions
extension AppAction {
    
    enum ItemsAction {
        case loadItems
        case updateItem(_ item: Item)
        case deleteItem(_ item: Item)
        
        case setItems(_ items: [Item])
    }
}

