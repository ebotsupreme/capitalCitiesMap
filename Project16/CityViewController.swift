//
//  CityViewController.swift
//  Project16
//
//  Created by Eddie Jung on 8/24/21.
//

import UIKit
import WebKit

class CityViewController: UIViewController, WKNavigationDelegate {
    var city: String?
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let cityName = city {
            if let url = URL(string: "https://en.wikipedia.org/wiki/\(cityName)") {
                webView.load(URLRequest(url: url))
                webView.allowsBackForwardNavigationGestures = true
            } else {
                print("not found: \("https://en.wikipedia.org/wiki/\(cityName)")")
            }
        }
    }

}
