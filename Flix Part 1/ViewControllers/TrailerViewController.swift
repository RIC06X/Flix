//
//  TrailerViewController.swift
//  Flix Part 1
//
//  Created by Yanjie Xu on 2020/4/21.
//  Copyright © 2020 Yanjie Xu. All rights reserved.
//

import UIKit
import WebKit
class TrailerViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!
    var movie_id: Int = 0
    var trailers = [[String:Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("\(movie_id) at viewDidload")
        let url = URL(string: "https://api.themoviedb.org/3/movie/\(movie_id)/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed&language=en-US")!
        
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
           // This will run when the network request returns
           if let error = error {
              print(error.localizedDescription)
           } else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                let trailers = dataDictionary["results"] as! [[String:Any]]
                
                let key = trailers[0]["key"] as! String
                let request2 = URLRequest(url: URL(string: "https://www.youtube.com/watch?v=\(key)")!)
                self.webView.load(request2)
           }
        }
        task.resume()
        

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
