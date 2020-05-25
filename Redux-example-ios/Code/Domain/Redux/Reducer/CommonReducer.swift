//
//  CommonReducer.swift
//  Redux-example-ios
//
//  Created by Max Kuznetsov on 16.04.2020.
//  Copyright © 2020 Max Kuznetsov. All rights reserved.
//

import Foundation

let commonReducer: Reducer<AppState, AppAction.CommonAction> = Reducer { state, action in
    switch action {
    case .setIsAlert(let presented):
        state.isAlertPresented = presented
        
    case .showAlert(let style):
        state.alertStyle = style
        state.isAlertPresented = true
        
    case .setIsLoaderPresented(let presented):
        state.isLoaderPresented = presented
    }
    
    return nil
}
