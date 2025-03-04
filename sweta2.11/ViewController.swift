//
//  ViewController.swift
//  sweta2.11
//
//  Created by DABR on 04.03.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var startButton: UIButton!
    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var redView: UIView!
    let lightOff: Float = 0.3
    let lightOn: Float = 1.0
    
    override func viewDidLoad() {
      let viewRadius = redView.frame.width / 2;
        greenView.layer.cornerRadius = viewRadius
        yellowView.layer.cornerRadius = viewRadius
        redView.layer.cornerRadius = viewRadius
        startButton.layer.cornerRadius = 10
        
        super.viewDidLoad()
        }
    @IBAction func startButtonDidTapped() {
        if redView.alpha == CGFloat(lightOff) && yellowView.alpha == CGFloat(lightOff) && greenView.alpha == CGFloat(lightOff) {
            redView.alpha = CGFloat(lightOn)
        } else if redView.alpha == CGFloat(lightOn) {
            redView.alpha = CGFloat(lightOff)
            yellowView.alpha = CGFloat(lightOn)
        } else if yellowView.alpha == CGFloat(lightOn) {
            yellowView.alpha = CGFloat(lightOff)
            greenView.alpha = CGFloat(lightOn)
        } else if greenView.alpha == CGFloat(lightOn) {
            greenView.alpha = CGFloat(lightOff)
            redView.alpha = CGFloat(lightOn)
        }
            ; if redView.alpha == CGFloat(lightOff) && yellowView.alpha == CGFloat(lightOff) && greenView.alpha == CGFloat(lightOff) {
                startButton.setTitle("START", for: .normal)
            } else { startButton.setTitle("NEXT", for: .normal)
                
            }
        }
        
    }

