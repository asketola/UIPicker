//
//  CheeseViewController.swift
//  UIPicker
//
//  Created by Annemarie Ketola on 3/26/15.
//  Copyright (c) 2015 Up Early, LLC. All rights reserved.
//

import UIKit

class CheeseViewController: UIViewController {

  @IBOutlet var favoriteCheeseLabel: UILabel!
  var favoriteCheese : String!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      favoriteCheeseLabel.text = "My favorite cheese is \(favoriteCheese)"

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
