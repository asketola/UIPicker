//
//  ViewController.swift
//  UIPicker
//
//  Created by Annemarie Ketola on 3/26/15.
//  Copyright (c) 2015 Up Early, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

  @IBOutlet weak var CheesePicker: UIPickerView!
  @IBOutlet weak var cheeseLabel: UILabel!
  
  var cheesePickerArrayData = ["Mozarella", "Gouda", "Brie", "Stilton", "Pepper Jack", "Camenbert", "Cheddar", "American", "Goat"]
  var selectedFavoriteCheese : String!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    CheesePicker.dataSource = self
    CheesePicker.delegate = self
    // Do any additional setup after loading the view, typically from a nib.
    selectedFavoriteCheese = "mozzarella"
    cheeseLabel.text = "mozzarella"
  }
  
  // Required setup of UIPickerView
  // We are only having one component for the picker, so this is one
  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
  }
  
  // This gets the number of items from the array we defined
  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent: Int) -> Int {
    return cheesePickerArrayData.count
  }
  
  // Defines the UIPicker datasources
  
//  func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
//    return cheesePickerArrayData[row]
//  }
  
  func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    cheeseLabel.text = cheesePickerArrayData[row]
    selectedFavoriteCheese = cheesePickerArrayData[row]
  }
  
  func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView {
    let pickerLabel = UILabel()
    let titleData = cheesePickerArrayData[row]
    let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 26.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
    pickerLabel.attributedText = myTitle
    let hue = CGFloat(row)/CGFloat(cheesePickerArrayData.count)
    pickerLabel.backgroundColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
    pickerLabel.textAlignment = .Center
    return pickerLabel
  }
  
   func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
    return 36.0
  }
  
  func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
    return 180
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func passTheCheeseButtonPressed(sender: AnyObject) {
    
    println("passTheCheeseButtonPressed")
    
    
  } // close cheese function
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  
    if segue.identifier == "PassTheCheeseSegue" {
      
      if let desitnationVC = segue.destinationViewController as? CheeseViewController {
        desitnationVC.favoriteCheese = selectedFavoriteCheese
      }
      
    }
    
    
    
  }

} // final closure

