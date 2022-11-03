//
//  ViewController.swift
//  Light
//
//  Created by Samarth Kumar on 03/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightButton: UIButton!
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    fileprivate func updateUI() {
        if lightOn{
            view.backgroundColor = .white
            lightButton.setTitle("Turn Lights Off", for: .normal)
        }else{
            view.backgroundColor = .black
            lightButton.setTitle("Turn Lights On", for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

