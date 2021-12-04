//
//  Models.swift
//  SwiftUIExample
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let description: String?
}
