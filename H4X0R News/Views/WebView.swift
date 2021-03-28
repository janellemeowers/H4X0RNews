//
//  WebView.swift
//  H4X0R News
//
//  Created by janelle myers on 3/26/21.
//

import Foundation
import WebKit
import SwiftUI


//lets you create webview
struct WebView: UIViewRepresentable {
   
    let urlString: String?
    //needs delegate methods, WKWebView
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    //what is displayed, updates WKWebView
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
