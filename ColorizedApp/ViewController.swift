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
    }
    
    @IBAction func redSwitchSlider() {
        labelForRedColor.text = redSlider.value.formatted()
        changeColorView()
    }
    
    @IBAction func greenSwitchSlider() {
        labelForGreenColor.text = greenSlider.value.formatted()
        changeColorView()
    }
    
    @IBAction func blueSwitchColor() {
        labelForBlueColor.text = blueSlider.value.formatted()
        changeColorView()
    }
    
    
    
    
    //MARK: - Privat methods
//    private func setupLabelsColor() {
//        labelForRedColor.text = redSlider.value.formatted()
//        labelForGreenColor.text = greenSlider.value.formatted()
//        labelForBlueColor.text = blueSlider.value.formatted()
//    }
    private func changeColorView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

