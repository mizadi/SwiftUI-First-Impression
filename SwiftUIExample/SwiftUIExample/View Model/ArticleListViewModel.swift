//
//  ArticleListViewModel.swift
//  SwiftUIExample
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//

import Foundation
class ArticleListViewModel: ObservableObject {
    
    //let didChange = PassthroughSubject<ArticleListViewModel,Never>()
    
    init() {
        fetchTopHeadlines()
    }
    
    @Published var articles = [ArticleViewModel]()
    
    private func fetchTopHeadlines() {
        
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=1889bc10e82d466fb8ac3a5ec5d212e6") else {
            fatalError("URL is not correct!")
        }
        
        Webservice().loadTopHeadlines(url: url) { articles in
            
            if let articles = articles {
                self.articles = articles.map(ArticleViewModel.init)
            }
            
        }
        
    }
    
}
