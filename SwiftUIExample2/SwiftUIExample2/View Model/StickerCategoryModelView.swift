//
//  StickerCategoryModelView.swift
//  SwiftUIExample2
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import Foundation
class StickerCategoryViewModel: Identifiable {
    
    let id = UUID()
    
    let categoryModel: StickerCategory
    
    init(categoryModel: StickerCategory) {
        self.categoryModel = categoryModel
    }
    
    var url: String {
        return self.categoryModel.icon
    }
    
    var stickers: [StickerViewModel] {
        return self.categoryModel.stickers.map(StickerViewModel.init)
    }
    
//    var description: String {
//        return self.stickers.description ?? ""
//    }
    
    
}

