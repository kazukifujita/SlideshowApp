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
    
    @IBAction func onNext(_ sender: Any) {
        dispImageNo += 1
        displayImage()
    }
    @IBAction func onPrev(_ sender: Any) {
        dispImageNo -= 1
        displayImage()
    }
    var dispImageNo = 0
    
    func displayImage() {
        
        let imageNameArray = ["01.jpg","02.jpg","03.jpg",]
    
        let name = imageNameArray[dispImageNo]
    
        let image = UIImage(named: name)
        
        imageView.image = image
    }
    @IBAction func onTspImage(_ sender: Any) {
        performSegue(withIdentifier: "result", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let image = UIImage(named:"01.jpg")
        imageView.image = image
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 
}
 @IBAction func unwind(segue: UIStoryboardSegue) {

}

}
