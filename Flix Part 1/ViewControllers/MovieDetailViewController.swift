//
//  MovieDetailViewController.swift
//  Flix Part 1
//
//  Created by Yanjie Xu on 2020/4/19.
//  Copyright © 2020 Yanjie Xu. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetailViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var synopsisLable: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLable.text = movie["title"] as? String
        titleLable.sizeToFit()
        synopsisLable.text = movie["overview"] as? String
        synopsisLable.sizeToFit()
        
        let posterbaseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: posterbaseUrl + posterPath)
        posterView.af.setImage(withURL: posterUrl!)
        
        let backdropbaseUrl = "https://image.tmdb.org/t/p/w780"
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: backdropbaseUrl + backdropPath)
        backdropView.af.setImage(withURL: backdropUrl!)
        
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
