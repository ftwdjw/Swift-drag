//
//  ViewController.swift
//  panSwift
//
//  Created by John Mac on 12/4/16.
//  Copyright © 2016 John Wetters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var testView: UIView!
    
    
    var count = 0
    
    
    @IBAction func getPan(_ sender: UIPanGestureRecognizer) {
        count += 1
        print("this is a drag \(count)")
        
        //func translation(in view: UIView?) -> CGPoint
        let location = sender.location(in: self.view)
        
        print(location)
        
        self.testView.center = location

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

