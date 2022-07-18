//
//  WebView.swift
//  iOS-Example
//
//  Created by Terry on 2022/07/18.
//
import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://platform.glozinc.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}
