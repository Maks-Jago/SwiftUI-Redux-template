//
//  Faking.swift
//  Redux-example-ios
//
//  Created by Max Kuznetsov on 16.04.2020.
//  Copyright © 2020 Max Kuznetsov. All rights reserved.
//

import Foundation

protocol Faking {
    init()
    static func fakeItems(count: Int) -> [Self]
}

extension Faking {
    static func fakeItems(count: Int = 10) -> [Self] {
        (0..<count).map { _ in Self.init()}
    }
}
