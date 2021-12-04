//
//  StickersList.swift
//  SwiftUIExample2
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import SwiftUI

struct StickersList: View {
    
     @ObservedObject var model = StickerListViewModel()
    
    var body: some View {
        List(model.categories) { category in
            HorizontalScrollView(category.stickers)
        }
    }
}

struct StickersList_Previews: PreviewProvider {
    static var previews: some View {
        StickersList()
    }
}
