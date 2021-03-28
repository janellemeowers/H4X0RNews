//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by janelle myers on 3/24/21.
//

import Foundation

//observable, cass pass info to content view
class NetworkManager: ObservableObject {
    
    //allows you to follow update
    @Published var posts = [Post]()
    
    func fetchData() {
        //if we can get url create session
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            if error == nil {
                let decoder = JSONDecoder()
                //if data is safe, optional
                if let safeData = data {
                    do {
                  let results =  try decoder.decode(Results.self, from: safeData)
                       //must happen on main bg, bc of Published property
                        DispatchQueue.main.async {
                            //array
                            self.posts = results.hits
                        }
                       
                }
                    catch {
                        print(error)
                    }
            }
        }
    }
            task.resume()
}
}
}
