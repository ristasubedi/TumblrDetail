//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Rista Subedi on 4/1/24.
//

import UIKit
import Nuke
class DetailViewController: UIViewController {
    var post: Post!
    @IBOutlet weak var caption: UILabel!
    @IBOutlet weak var background: UIImageView!
    override func viewDidLoad() {
        //        super.viewDidLoad()
        
        caption.text = post.caption.trimHTMLTags()
        if let photo = post.photos.first{
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: background)
        }
    }
}
