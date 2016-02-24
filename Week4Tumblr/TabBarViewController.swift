//
//  TabBarViewController.swift
//  Week4Tumblr
//
//  Created by Justin Peng on 2/23/16.
//  Copyright © 2016 Justin Peng. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    //Outlets
    @IBOutlet weak var contentView: UIView!
    //Button Outlet
    @IBOutlet var buttons: [UIButton]!
    
    //Declared ViewController variables
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    
    @IBOutlet weak var discoverBubble: UIImageView!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        //De-select previous button, remove previous ViewController
        buttons[previousIndex].selected = false
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        //Select current button, add current ViewController
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
        //Add the popup if the current VC is not Search
        if selectedIndex == 1 {
            discoverBubble.hidden = true
        } else {
            discoverBubble.hidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //Set up ViewControllers and the VC array
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        viewControllers = [homeViewController, searchViewController, composeViewController, accountViewController, trendingViewController]
        
        //Set up button array
        buttons = [homeButton, searchButton, composeButton, accountButton, trendingButton]
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        //Start animating the button
        let translation = CGAffineTransformMakeTranslation(0, -10)
        UIView.animateWithDuration(2.0, delay: 0, options: [.Repeat, .Autoreverse], animations: { () -> Void in
            self.discoverBubble.transform = translation
            }) { (Bool) -> Void in
                
            }
        
        /*
        UIView.animateWithDuration(1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.4, options: [.Repeat, .Autoreverse], animations: { () -> Void in
            self.discoverBubble.transform = translation
            }) { (Bool) -> Void in
        }
        */
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
