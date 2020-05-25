//
//  Array.swift
//  Redux-example-ios
//
//  Created by Max Kuznetsov on 16.04.2020.
//  Copyright © 2020 Max Kuznetsov. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    
    func arrayByUpdatingItem(_ item: Element) -> Self {
        var mutableArray = self
        
        if let index = self.firstIndex(where: { $0.id == item.id }) {
            mutableArray[index] = item
        }
        
        return mutableArray
    }
    
    func findObject(_ item: Element) -> Element {
        first { $0.id == item.id } ?? item
    }
}
