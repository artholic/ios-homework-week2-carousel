//
//  Welcome1ViewController.swift
//  week2-Carousel
//
//  Created by Erin Yang on 9/14/14.
//  Copyright (c) 2014 yahoo. All rights reserved.
//

import UIKit

class Welcome1ViewController: UIViewController {
    
    
    @IBOutlet weak var welcomesroll: UIScrollView!
    @IBOutlet weak var welcome1: UIImageView!
    @IBOutlet weak var welome2: UIImageView!
    @IBOutlet weak var welcome3: UIImageView!
    @IBOutlet weak var welcome4: UIImageView!
    @IBOutlet weak var spinButton: UIButton!
    
    
    
    override func viewDidLoad() {
        
        
        
        
        super.viewDidLoad()
        self.welcomesroll.contentSize = CGSizeMake(self.welcomesroll.bounds.size.width*4, self.welcomesroll.bounds.size.height)
        
        self.welome2.frame = CGRectMake(self.welcomesroll.bounds.size.width, 0, self.welcomesroll.bounds.size.width,  self.welcomesroll.bounds.size.height)
        
         self.welcome3.frame = CGRectMake(self.welcomesroll.bounds.size.width*2, 0, self.welcomesroll.bounds.size.width,  self.welcomesroll.bounds.size.height)
         self.welcome4.frame = CGRectMake(self.welcomesroll.bounds.size.width*3, 0, self.welcomesroll.bounds.size.width,  self.welcomesroll.bounds.size.height)

         self.welcomesroll.pagingEnabled = true
        self.welcomesroll.showsHorizontalScrollIndicator=false
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
