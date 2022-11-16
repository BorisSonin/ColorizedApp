//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Борис Сонин on 29.10.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
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
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        colorView.backgroundColor = colorMainVC
        changeLabelsColor()
        
    }
    
    @IBAction func switchColorsBySliders() {
        setupLabelsColor()
        changeColorView()
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
        delegate?.updateColor(color: colorView.backgroundColor ?? .red)
        dismiss(animated: true)
    }
    
    
    func rounding(number: Float) -> String{
        let roundingValue = Float(round(100 * number) / 100).formatted()
        return roundingValue
    }
    
    //MARK: - Privat methods
    private func setupLabelsColor() {
        labelForRedColor.text = String(format: "%.2f", redSlider.value)
        labelForGreenColor.text = String(format: "%.2f", greenSlider.value)
        labelForBlueColor.text = String(format: "%.2f", blueSlider.value)
        
    }
    private func changeColorView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value), alpha: 1)
        
    }

   private func  changeLabelsColor() {
   
        if colorView.backgroundColor == colorMainVC {
            
            let ciColor = CIColor(color: colorMainVC!)
            
            redSlider.value = Float(ciColor.red)
            greenSlider.value = Float(ciColor.green)
            blueSlider.value = Float(ciColor.blue)
            
            setupLabelsColor()
        }
    }
}


