//
//  ViewController.swift
//  VeretennikovVE_TrafficLights_HW2.1.2
//
//  Created by user on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {
  
  var isStartButtonPressed = false
  
  let redColorWithAlpha = UIColor.red.withAlphaComponent(0.1)
  let yellowColorWithAlpha = UIColor.yellow.withAlphaComponent(0.1)
  let greenColorWithAlpha = UIColor.green.withAlphaComponent(0.1)
  
  @IBOutlet weak var redView: UIView!
  @IBOutlet weak var yellowView: UIView!
  @IBOutlet weak var greenView: UIView!
  @IBOutlet weak var startButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    redView.backgroundColor = redColorWithAlpha
    yellowView.backgroundColor = yellowColorWithAlpha
    greenView.backgroundColor = greenColorWithAlpha
    
    startButton.layer.cornerRadius = 20
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    redView.layer.cornerRadius = redView.frame.height / 2
    yellowView.layer.cornerRadius = yellowView.bounds.height / 2
    greenView.layer.cornerRadius = greenView.bounds.height / 2
  }

  @IBAction func startButtonPressed() {
    if redView.backgroundColor == UIColor.red {
      yellowView.backgroundColor = .yellow
      redView.backgroundColor = redColorWithAlpha
    } else if yellowView.backgroundColor == UIColor.yellow {
      greenView.backgroundColor = .green
      yellowView.backgroundColor = yellowColorWithAlpha
    } else if greenView.backgroundColor == UIColor.green{
      redView.backgroundColor = .red
      greenView.backgroundColor = greenColorWithAlpha
    }
      
    if isStartButtonPressed == false {
      isStartButtonPressed.toggle()
      startButton.setTitle("NEXT", for: .normal)
      redView.backgroundColor = .red
    }
    
    
  }
  
}

