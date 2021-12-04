//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @ObservedObject var model = ArticleListViewModel()
    
    var body: some View {
        List(model.articles) { article in
            
            VStack(alignment: .leading) {
            
            Text(article.title)
                .lineLimit(nil)
            
            Text(article.description)
                .foregroundColor(.secondary)
                .lineLimit(nil)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
