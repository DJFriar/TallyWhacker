//
//  Bonus.swift
//  Tally Whacker
//
//  Created by Tommy Craft on 6/14/20.
//  Copyright © 2020 Tommy Craft. All rights reserved.
//

import SwiftUI

struct Bonus: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var category: String
    var value: Double
}
