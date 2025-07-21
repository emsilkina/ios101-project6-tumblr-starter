//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Emily Silkina on 7/21/25.
//

import UIKit
import NukeExtensions

class DetailViewController: UIViewController {

    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postLabel.text=post.caption
        
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            NukeExtensions.loadImage(with: url, into: postImage)
        }
        // Do any additional setup after loading the view.
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
