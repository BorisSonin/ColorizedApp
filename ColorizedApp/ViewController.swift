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
    
    @IBAction func switchColorsBySliders() {
        setupLabelsColor()
        changeColorView()
    }
    
    
    
    
    //MARK: - Privat methods
    private func setupLabelsColor() {
        labelForRedColor.text = redSlider.value.formatted()
        labelForGreenColor.text = greenSlider.value.formatted()
        labelForBlueColor.text = blueSlider.value.formatted()
        
        labelForRedColor.text = rounding(number: redSlider.value)
        labelForGreenColor.text = rounding(number: greenSlider.value)
        labelForBlueColor.text = rounding(number: blueSlider.value)
    }
    private func changeColorView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value), alpha: 1)
    }
}
extension ViewController {
    func rounding(number: Float) -> String{
        let roundingValue = Float(round(100 * number) / 100).formatted()
        return roundingValue
    }
}
