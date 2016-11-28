//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Blake Robinson on 11/26/16.
//  Copyright © 2016 Blake Robinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Aren't these too view related to be in the view controller?
        colorSquare.layer.borderColor = UIColor.black.cgColor
        colorSquare.layer.borderWidth = 1
        updateBackgroundColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateBackgroundColor() {
        
        let red = redSlider.value
        let green = greenSlider.value
        let blue = blueSlider.value
        
        colorSquare.backgroundColor = UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: 1)
    }

}

