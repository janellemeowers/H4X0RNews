//
//  ContentView.swift
//  H4X0R News
//
//  Created by janelle myers on 3/24/21.
//

import SwiftUI

struct ContentView: View {
    //initialize, set up as listener
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        //nav bar
        NavigationView{
           //whenever posts triggers, rebuilds
            List(networkManager.posts) { post in
        NavigationLink(
            destination: DetailView(url: post.url)){
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
                
            }
            
        }
    //add title at end of nav
    .navigationBarTitle("H4X0R NEWS")
}
        //as soon as screen appears
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
  //  Post(id: "1", title: "Hello!")
 //   Post(id: "2", title: "bonjour!")
//]
