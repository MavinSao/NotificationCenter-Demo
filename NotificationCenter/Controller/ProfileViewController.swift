//
//  ProfileViewController.swift
//  NotificationCenter
//
//  Created by Mavin on 10/21/20.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var ImageTint: UIImageView!
    
    @IBOutlet var tintLabel: [UILabel]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func favColorPress(_ sender: UIButton) {
        self.view.backgroundColor = sender.backgroundColor
        self.ImageTint.tintColor = sender.tintColor
        self.tintLabel.forEach { (label) in
            label.textColor = sender.tintColor
        }
        
        NotificationCenter.default.post(name: NSNotification.Name("colorChange"), object: sender)
        
    }
    

}
