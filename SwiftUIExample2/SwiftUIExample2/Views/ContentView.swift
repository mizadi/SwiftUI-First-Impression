//
//  ContentView.swift
//  SwiftUIExample2
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import SwiftUI


struct ContentView : View {
    
    @ObservedObject var model = StickerListViewModel()
    
    var body: some View {
        StickersList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
