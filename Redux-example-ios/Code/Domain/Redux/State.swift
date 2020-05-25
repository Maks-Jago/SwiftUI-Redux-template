//
//  State.swift
//  Redux-example-ios
//
//  Created by Max Kuznetsov on 16.04.2020.
//  Copyright © 2020 Max Kuznetsov. All rights reserved.
//

import Foundation

struct AppState {
    var items: [Item] = []
    
    var isAlertPresented: Bool = false
    var alertStyle: AlertBuilder.AlertStyle = .success(text: "")
    
    var isLoaderPresented: Bool = false
}
