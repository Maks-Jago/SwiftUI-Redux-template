//
//  Item.swift
//  Redux-example-ios
//
//  Created by Max Kuznetsov on 16.04.2020.
//  Copyright © 2020 Max Kuznetsov. All rights reserved.
//

import Foundation

struct Item: Identifiable, Faking {
    var id: UUID = .init()
    
    var title: String { "item: \(id.uuidString)" }
    var text: String? = nil
}
