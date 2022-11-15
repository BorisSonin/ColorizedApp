//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Борис Сонин on 29.10.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    //    protocol ColorDelegate
    //
    
    //MARK: -IB Ooutlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var labelForRedColor: UILabel!
    @IBOutlet var labelForGreenColor: UILabel!
    @IBOutlet var labelForBlueColor: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var colorMainVC: UIColor?
    
    var delegate: SettingsVievControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        changeColorView()
        setupLabelsColor()
        colorView.backgroundColor = colorMainVC
        
    }
    
    @IBAction func switchColorsBySliders() {
        setupLabelsColor()
        changeColorView()
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
//        delegate?.updateColor(color: UIColor(dynamicProvider: colorView))
        dismiss(animated: true)
    }
    
    
    func rounding(number: Float) -> String{
        let roundingValue = Float(round(100 * number) / 100).formatted()
        return roundingValue
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


