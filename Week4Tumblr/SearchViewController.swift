//
//  SearchViewController.swift
//  Week4Tumblr
//
//  Created by Justin Peng on 2/23/16.
//  Copyright © 2016 Justin Peng. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchFeed: UIImageView!
    @IBOutlet weak var loadingIndicator: UIImageView!
    
    //Declaring variables
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Loading image setup
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        images = [loading_1, loading_2, loading_3]
        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
        loadingIndicator.image = animatedImage
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        searchFeed.hidden = true
        loadingIndicator.hidden = false
    }
    
    override func viewDidAppear(animated: Bool) {
        delay(1.5) { () -> () in
            self.loadingIndicator.hidden = true
            self.searchFeed.hidden = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
