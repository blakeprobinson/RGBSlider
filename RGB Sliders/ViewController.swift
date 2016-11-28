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
    
    var currentColor: UIColor {
        get {
            let red = redSlider.value
            let green = greenSlider.value
            let blue = blueSlider.value
            
            return UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: 1)
        }
    }
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination
        if segue.identifier == "openColor" {
            viewController.view.backgroundColor = currentColor
        }
    }

    @IBAction func updateBackgroundColor() {
        
        colorSquare.backgroundColor = currentColor
    }

}

