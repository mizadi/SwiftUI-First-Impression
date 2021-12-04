//
//  HorizontalScrollView.swift
//  SwiftUIExample2
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import SwiftUI

struct HorizontalScrollView: View {
    
    var stickers: [StickerViewModel]
    
    init(_ stickers: [StickerViewModel]) {
        self.stickers = stickers
    }
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                ForEach(stickers) { sticker in
                    AsyncImage(
                        url: URL(string: sticker.url)!,
                        placeholder: Text("Loading ...")
                    ).aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                }
            }
        }
    }
}

//struct HorizontalScrollView_Previews: PreviewProvider {
//    static var previews: some View {
//        HorizontalScrollView()
//    }
//}
