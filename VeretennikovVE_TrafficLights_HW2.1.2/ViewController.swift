//
//  ViewController.swift
//  VeretennikovVE_TrafficLights_HW2.1.2
//
//  Created by user on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var redView: UIView!
  @IBOutlet weak var yellowView: UIView!
  @IBOutlet weak var greenView: UIView!
  @IBOutlet weak var startButton: UIButton!
  
  var isStartButtonPressed = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    redView.alpha = 0.1
    yellowView.alpha = 0.1
    greenView.alpha = 0.1
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    
    startButton.layer.cornerRadius = 20
    
    redView.layer.cornerRadius = redView.frame.height / 2
    yellowView.layer.cornerRadius = yellowView.bounds.height / 2
    greenView.layer.cornerRadius = greenView.bounds.height / 2
  }

  @IBAction func startButtonPressed() {
    if redView.alpha == 1 {
      yellowView.alpha = 1
      redView.alpha = 0.1
    } else if yellowView.alpha == 1 {
      greenView.alpha = 1
      yellowView.alpha = 0.1
    } else if greenView.alpha == 1{
      redView.alpha = 1
      greenView.alpha = 0.1
    }
      
    if isStartButtonPressed == false {
      isStartButtonPressed.toggle()
      startButton.setTitle("NEXT", for: .normal)
      redView.alpha = 1
    }
  }
}

