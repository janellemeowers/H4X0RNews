//
//  DetailView.swift
//  H4X0R News
//
//  Created by janelle myers on 3/25/21.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "google.com")
    }
}

