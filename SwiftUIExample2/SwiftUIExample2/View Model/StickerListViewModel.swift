//
//  StickerListViewModel.swift
//  SwiftUIExample2
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import Foundation
class StickerListViewModel: ObservableObject {
    
    //let didChange = PassthroughSubject<ArticleListViewModel,Never>()
    
    init() {
        fetchStickers()
    }
    
    @Published var categories = [StickerCategoryViewModel]()
    
    private func fetchStickers() {
        
        guard let url = URL(string: "http://y0.com/cdn/content.json") else {
            fatalError("URL is not correct!")
        }
        
        Webservice().loadStickers(url: url) { categories in
            
            if let categories = categories {
                self.categories = categories.map(StickerCategoryViewModel.init)
            }
            
        }
        
    }
    
}
