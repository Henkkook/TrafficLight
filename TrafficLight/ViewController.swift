//
//  ViewController.swift
//  TrafficLight
//
//  Created by Denis Kalugin on 22.10.2022.
//

import UIKit

enum Color {
    case viewRedColor
    case viewYellowColor
    case viewGreenColor
}

class ViewController: UIViewController {
    
    @IBOutlet var viewRedColor: UIView!
    @IBOutlet var viewYellowColor: UIView!
    @IBOutlet var viewGreenColor: UIView!
    
    
    @IBOutlet var startButton: UIButton!
    
    
    private var color = Color.viewRedColor
    private let lightsIsOn: CGFloat = 1
    private let lightsIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        viewRedColor.alpha = lightsIsOff
        viewYellowColor.alpha = lightsIsOff
        viewGreenColor.alpha = lightsIsOff
        
        
    }
    override func viewWillLayoutSubviews() {
        viewRedColor.layer.cornerRadius = viewRedColor.frame.width / 2
        viewYellowColor.layer.cornerRadius = viewRedColor.frame.width / 2
        viewGreenColor.layer.cornerRadius = viewRedColor.frame.width / 2
    }
    
    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        
        switch color {
        case .viewRedColor:
            viewGreenColor.alpha = lightsIsOff
            viewRedColor.alpha = lightsIsOn
            color = .viewYellowColor
        case .viewYellowColor:
            viewRedColor.alpha = lightsIsOff
            viewYellowColor.alpha = lightsIsOn
            color = .viewGreenColor
        case .viewGreenColor:
            viewYellowColor.alpha = lightsIsOff
            viewGreenColor.alpha = lightsIsOn
            color = .viewRedColor
        }
    }
}

