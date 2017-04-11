//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 藤田 和樹 on 2017/04/12.
//  Copyright © 2017年 藤田 和樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func onTspImage(_ sender: Any) {
        performSegue(withIdentifier: "result", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    imageView.image = UIImage(named:"01.jpg")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

