//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by Борис Сонин on 15.11.2022.
//

import UIKit

protocol SettingsVievControllerDelegate {
    func updateColor (color: UIColor)
}


class MainViewController: UIViewController, SettingsVievControllerDelegate {
    func updateColor(color: UIColor) {
        <#code#>
    }
    
    
    
    @IBOutlet var settingViewController: UIButton!
    
    let color = UIColor.white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVC = segue.destination as? SettingsViewController else { return }
        mainVC.colorMainVC = view.backgroundColor
        mainVC.delegate = self
    }
    
    @IBAction func settingsTapped(_ sender: UIButton) {
    }
    
//    extension MainViewController: SettingsVievControllerDelegate
//    }
}


