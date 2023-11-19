//
//  ViewController.swift
//  Homework_2.4
//
//  Created by Dmitry Parhomenko on 17.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet var windowView: UIView!
    
    @IBOutlet var numberRedLabel: UILabel!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var numberGreenLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var numberBlueLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    var redValue: CGFloat = 0
    var greenValue: CGFloat = 0
    var blueValue: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        windowView.layer.cornerRadius = 20
    }

    @IBAction func movingRedSlider() {
        numberRedLabel.text = String(format:"%.02f", redSlider.value)
        redValue = CGFloat(redSlider.value)
        windowView.backgroundColor = UIColor(
            displayP3Red: redValue,
            green: greenValue,
            blue: blueValue,
            alpha: 1
        )
    }
    
    @IBAction func movingGreenSlider() {
        numberGreenLabel.text = String(format:"%.02f", greenSlider.value)
        greenValue = CGFloat(greenSlider.value)
        windowView.backgroundColor = UIColor(
            displayP3Red: redValue,
            green: greenValue,
            blue: blueValue,
            alpha: 1
        )
    }
    
    @IBAction func movingBlueSlider() {
        numberBlueLabel.text = String(format:"%.02f", blueSlider.value)
        blueValue = CGFloat(blueSlider.value)
        windowView.backgroundColor = UIColor(
            displayP3Red: redValue,
            green: greenValue,
            blue: blueValue,
            alpha: 1
        )
    }
}

