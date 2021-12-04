//
//  StickerModel.swift
//  SwiftUIExample2
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import Foundation
struct StickerModel {
    let url: String
}

struct StickerCategory {
    var name: String
    let order: Int
    let icon: String
    let stickers: [StickerModel]
}

struct NewsResponse {
    var stickerCategories = [StickerCategory]()
}
