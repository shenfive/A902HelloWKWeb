//
//  ViewController.swift
//  A902HelloWKWeb
//
//  Created by 申潤五 on 2022/10/22.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var urlAddress: UITextField!
    @IBOutlet weak var theWeb: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://www.ichih.com/"){
            
            
            let request = URLRequest(url: url)
            theWeb.load(request)
            
        }
        
        
    }

    @IBAction func goBack(_ sender: Any) {
        theWeb.goBack()
    }
    
    @IBAction func loadWeb(_ sender: Any) {
        var urlString = urlAddress.text ?? ""
        urlString = "https://" + urlString
        if let url = URL(string: urlString){
            let request = URLRequest(url: url)
            theWeb.load(request)
        }
        
    }
}

