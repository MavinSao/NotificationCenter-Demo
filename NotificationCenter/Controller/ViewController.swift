//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Mavin on 10/21/20.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var labelColor: [UILabel]!
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(updateColor(not:)), name: Notification.Name("colorChange"), object: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(updateColor(not:)), name: Notification.Name("colorChange"), object: nil)
    }
    
    @objc func updateColor(not: Notification){
        let btn = not.object as! UIButton
        self.view.backgroundColor = btn.backgroundColor
        labelColor.forEach { (label) in
            label.textColor = btn.tintColor
        }
        
    }


}

