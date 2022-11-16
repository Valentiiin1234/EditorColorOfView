//
//  ViewController.swift
//  EditorColorOfView
//
//  Created by Mac on 30.10.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var homeView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    
    @IBOutlet var greenLabel: UILabel!
    
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var myView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundUpView()
        
    }
    @IBAction func redSlid() {
        printRedLabel()
       changeColorView()
    }
    @IBAction func greenSlide() {
        printGreenLabel()
        changeColorView()
    }
    @IBAction func blueSlide() {
        printBlueLabel()
        changeColorView()
    }
    
    
    
    

//MARK: - settings main view
    private func roundUpView() {
        myView.layer.cornerRadius = 20
    }
    private func printRedLabel() {
        redLabel.text = "Red:\(round(redSlider.value * 100)/100)"
    }
    private func printGreenLabel() {
        greenLabel.text = "Green:\(round(greenSlider.value * 100) / 100)"
    }
    private func printBlueLabel() {
        blueLabel.text = "Blue:\(round(blueSlider.value * 100) / 100)"
    }
    private func changeColorView() {
        myView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
 
}

