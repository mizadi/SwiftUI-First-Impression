//
//  StickerViewModel.swift
//  SwiftUIExample2
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import Foundation
class StickerViewModel: Identifiable {
    
    let id = UUID()
    
    let stickerModel: StickerModel
    
    init(stickerModel: StickerModel) {
        self.stickerModel = stickerModel
    }
    
    var url: String {
        return self.stickerModel.url
    }
    
//    var description: String {
//        return self.stickers.description ?? ""
//    }
    
    
}

