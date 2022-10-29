//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Борис Сонин on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {
    //MARK: -IB Ooutlets
    @IBOutlet var colorView: UIView!
   
    @IBOutlet var labelForRedColor: UILabel!
    @IBOutlet var labelForGreenColor: UILabel!
    @IBOutlet var labelForBlueColor: UILabel!
   
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.layer.cornerRadius = 10
//        
//        redSwitchSlider()
//        greenSwitchSlider()
//        blueSwitchColor()
        setupLabelsColor()
        
    }
    
    @IBAction func redSwitchSlider() {
        labelForRedColor.text = redSlider.value.formatted()
    }
    
    @IBAction func greenSwitchSlider() {
        labelForGreenColor.text = greenSlider.value.formatted()
    }

    @IBAction func blueSwitchColor() {
        labelForBlueColor.text = blueSlider.value.formatted()
    }
    
    //MARK: - Privat methods
    private func setupLabelsColor() {
        labelForRedColor.text = redSlider.value.formatted()
        labelForGreenColor.text = greenSlider.value.formatted()
        labelForBlueColor.text = blueSlider.value.formatted()
    }
}

