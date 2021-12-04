//
//  WebService.swift
//  SwiftUIExample
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//
//1889bc10e82d466fb8ac3a5ec5d212e6
import Foundation
class Webservice {
    
    func loadTopHeadlines(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let response = try? JSONDecoder().decode(NewsResponse.self, from: data)
            if let response = response {
                DispatchQueue.main.async {
                    completion(response.articles)
                }
            }
            
            
        }.resume()
        
    }
    
}
