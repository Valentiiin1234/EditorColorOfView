//
//  StartViewController.swift
//  EditorColorOfView
//
//  Created by Mac on 16.11.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValues(red redValue: CGFloat, green greenValue: CGFloat, blue blueValue: CGFloat)
}

class StartViewController: UIViewController {
    @IBOutlet var settingsButton: UIButton!
  
    
    @IBOutlet var startView: UIView!
    var rValue: CGFloat!
    var gValue: CGFloat!
    var bValue: CGFloat!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func settingsPressed(_ sender: Any) {
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let settingsVC = segue.destination as? SettingsViewController else { return }
            settingsVC.myView.backgroundColor = UIColor(red: 1,
                                                green: 1,
                                                blue: 1,
                                                alpha: 1)
        }
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else {return}
        startView.backgroundColor = UIColor(red: CGFloat(settingsVC.redSlider.value),
                                            green: CGFloat(settingsVC.greenSlider.value),
                                            blue: CGFloat(settingsVC.blueSlider.value),
                                            alpha: 1)
    }
    
}


// MARK: - SettingsViewControllerDelegate
extension StartViewController: SettingsViewControllerDelegate {
    func setNewValues(red redValue: CGFloat, green greenValue: CGFloat, blue blueValue: CGFloat) {
      
        
    }
}

