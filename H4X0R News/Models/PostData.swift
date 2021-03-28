//
//  PostData.swift
//  H4X0R News
//
//  Created by janelle myers on 3/24/21.
//

import Foundation

struct Results: Decodable {
    
    let hits: [Post]
}

//identifiable, allows for ordering must have id, used for List
struct Post: Decodable, Identifiable {
    //convert objectID for id use
    var id: String{
        return objectID
    }
   
    let objectID: String
    let points: Int
    let title: String
    //must be option in case null
    let url: String?
    
}
