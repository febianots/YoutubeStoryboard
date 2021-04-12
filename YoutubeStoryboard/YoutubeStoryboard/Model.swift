//
//  Model.swift
//  YoutubeStoryboard
//
//  Created by MAC on 15/03/21.
//

import Foundation

class Model {
    func getVideos(){
        let url = URL(string: Constant.API_URL)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) {(data,response,error) in
            if error != nil || data == nil {
                return
            }
            
            do{
                //parsing data into video object
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch {
                
            }
        }
        
        dataTask.resume()
    }
}

