//
//  WebService.swift
//  SwiftUIExample
//
//  Created by Adi Mizrahi on 09/06/2020.
//  Copyright © 2020 Tap.pm. All rights reserved.
//
//1889bc10e82d466fb8ac3a5ec5d212e6
import Foundation
import SwiftyJSON
class Webservice {
    
    func loadStickers(url: URL, completion: @escaping ([StickerCategory]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            //let response = try? JSONDecoder().decode(NewsResponse.self, from: data)
            if let response = self.parseResponse(data) {
                DispatchQueue.main.async {
                    print(response)
                    completion(response.stickerCategories)
                }
            }
            
            
        }.resume()
    }
    
    func parseResponse(_ data: Data) -> NewsResponse? {
        var response = NewsResponse()
        let json = try! JSON(data: data)
        for (key,value) in json.dictionary! {
            print(value)
            let category = StickerCategory(name: key, order: value["order"].int!, icon: value["icon"].string!, stickers: parseStickers(json.dictionary![key]!.dictionary!))
            response.stickerCategories.append(category)
            
        }
        return response
    }
    
    func parseStickers(_ json: [String: JSON]) -> [StickerModel] {
        var stickers = [StickerModel]()
        for (key,value) in json {
            if (Int(key) != nil) {
                let stickerModel = StickerModel(url: value.string!)
                stickers.append(stickerModel)
            }
        }
        return stickers
    }
    
}
