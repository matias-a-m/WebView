//
//  WebViewVC.swift
//  WebView
//
//  Created by Matias Molina on 21/06/2022.
//

import UIKit
import WebKit

class WebViewVC: UIViewController {
    
    var searchWord: String?
    
    @IBOutlet weak var webView: WKWebView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: "https://www.google.com/search?q=\(searchWord ?? "")") else {return}
        
        webView.load(URLRequest(url: url))
    }
    
    
    
    

}
