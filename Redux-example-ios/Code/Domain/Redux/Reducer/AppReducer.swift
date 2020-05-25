//
//  AppReducer.swift
//  Redux-example-ios
//
//  Created by Max Kuznetsov on 16.04.2020.
//  Copyright © 2020 Max Kuznetsov. All rights reserved.
//

import Foundation
import Combine

let appReducer: Reducer<AppState, AppAction> = Reducer { state, action in
    switch action {
    case .items(let itemsAction):
        return itemsReducer.reduce(&state, itemsAction)?
            .map { AppAction.items(action: $0) }
            .eraseToAnyPublisher()
        
    case .common(let commonAction):
        return commonReducer.reduce(&state, commonAction)?
            .map { AppAction.common(action: $0) }
            .eraseToAnyPublisher()
    }
}
