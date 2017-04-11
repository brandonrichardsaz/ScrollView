//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Richards, Brandon S. on 4/11/17.
//  Copyright © 2017 Richards, Brandon S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollview: UIScrollView!
    //var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollview.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            //images.append(imageView)
            
            let newX: CGFloat = scrollWidth/2 + scrollWidth * CGFloat(x)
            
            
            //newX = scrollWidth/2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollview.addSubview(imageView)
            
            
            imageView.frame = CGRect(x: newX-75, y: (scrollview.frame.size.height / 2)-75, width: 150, height: 150)
        
                
            
        }
        //print("count \(images.count)")
        
        //scrollview.backgroundColor = UIColor.purpleColor()
        scrollview.clipsToBounds = false
        
        scrollview.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

}

