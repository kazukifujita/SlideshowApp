//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 藤田 和樹 on 2017/04/12.
//  Copyright © 2017年 藤田 和樹. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
     var string = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

         let image = UIImage(named: string)
        imageView.image = image
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
