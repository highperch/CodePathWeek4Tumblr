//
//  ComposeViewController.swift
//  Week4Tumblr
//
//  Created by Justin Peng on 2/23/16.
//  Copyright © 2016 Justin Peng. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var textButton: UIImageView!
    @IBOutlet weak var photoButton: UIImageView!
    @IBOutlet weak var quoteButton: UIImageView!
    @IBOutlet weak var linkButton: UIImageView!
    @IBOutlet weak var chatButton: UIImageView!
    @IBOutlet weak var videoButton: UIImageView!
    
    var textButtonCenter: CGPoint!
    var photoButtonCenter: CGPoint!
    var quoteButtonCenter: CGPoint!
    var linkButtonCenter: CGPoint!
    var chatButtonCenter: CGPoint!
    var videoButtonCenter: CGPoint!
    
    @IBAction func didPressNevermind(sender: UIButton) {
        UIView.animateWithDuration(0.5) { () -> Void in
            self.textButton.center.y -= self.view.frame.height
            self.photoButton.center.y -= self.view.frame.height
            self.quoteButton.center.y -= self.view.frame.height
            self.linkButton.center.y -= self.view.frame.height
            self.chatButton.center.y -= self.view.frame.height
            self.videoButton.center.y -= self.view.frame.height
        }
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        textButton.center.y += 568
        photoButton.center.y += 568
        quoteButton.center.y += 568
        linkButton.center.y += 568
        chatButton.center.y += 568
        videoButton.center.y += 568
    }
    
    override func viewDidAppear(animated: Bool) {
        photoButton.center = photoButtonCenter
        
        UIView.animateWithDuration(0.1) { () -> Void in
            self.chatButton.center = self.chatButtonCenter
        }
        
        UIView.animateWithDuration(0.2) { () -> Void in
            self.quoteButton.center = self.quoteButtonCenter
        }
        
        UIView.animateWithDuration(0.3) { () -> Void in
            self.textButton.center = self.textButtonCenter
        }
        
        UIView.animateWithDuration(0.4) { () -> Void in
            self.linkButton.center = self.linkButtonCenter
        }
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.videoButton.center = self.videoButtonCenter
        }
        
        /*
        UIView.animateWithDuration(0.5) { () -> Void in
            self.textButton.center = self.textButtonCenter
            self.photoButton.center = self.photoButtonCenter
            self.quoteButton.center = self.quoteButtonCenter
            self.linkButton.center = self.linkButtonCenter
            self.chatButton.center = self.chatButtonCenter
            self.videoButton.center = self.videoButtonCenter
        }
        */
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textButtonCenter = textButton.center
        photoButtonCenter = photoButton.center
        quoteButtonCenter = quoteButton.center
        linkButtonCenter = linkButton.center
        chatButtonCenter = chatButton.center
        videoButtonCenter = videoButton.center
        backgroundView.backgroundColor = UIColor(red: 0.18, green: 0.27, blue: 0.36, alpha: 0.8)
        // Do any additional setup after loading the view.
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
