//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 藤田 和樹 on 2017/04/12.
//  Copyright © 2017年 藤田 和樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer:Timer?
    var dispImageNo = 0
    let imageNameArray = ["01.jpg","02.jpg","03.jpg",]
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named:"01.jpg")
        imageView.image = image
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var onNext: UIButton!
    @IBOutlet weak var onPrev: UIButton!
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func onNext(_ sender: Any) {
        dispImageNo += 1
        displayImage()
    }
    @IBAction func onPrev(_ sender: Any) {
        dispImageNo -= 1
        displayImage()
    }
    
    
    func displayImage() {
        
         if dispImageNo < 0 {
            dispImageNo = 2
        }
        if dispImageNo > 2 {
            dispImageNo = 0
        }
    
        let name = imageNameArray[dispImageNo]
        let image = UIImage(named: name)
        imageView.image = image
    }
    @IBAction func onTspImage(_ sender: Any) {
        performSegue(withIdentifier: "result", sender: nil)
        
        
    }
    
      @IBOutlet weak var onPlayPause: UIButton!
    
    
      @IBAction func onPlayPause(_ sender: Any) {
        if self.timer != nil{
            
            onNext.setTitleColor(UIColor.blue, for: .normal)
             onNext.isEnabled = true
            onPrev.setTitleColor(UIColor.blue, for: .normal)
             onPrev.isEnabled = true
            
            onPlayPause.setTitle("再生", for: UIControlState.normal)
            timer?.invalidate()
            timer = nil
        } else {
            onPlayPause.setTitle("停止", for: UIControlState.normal)
   
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(onNext(_:)), userInfo: nil, repeats: true)
              onNext.isEnabled = false
              onNext.setTitleColor(UIColor.lightGray, for: .normal)
              onPrev.isEnabled = false
              onPrev.setTitleColor(UIColor.lightGray, for: .normal)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        let selectView = imageNameArray[dispImageNo]
               resultViewController.string = selectView
   
        print("segue")
    }
    
    
    
 @IBAction func unwind(segue: UIStoryboardSegue) {

}

}
