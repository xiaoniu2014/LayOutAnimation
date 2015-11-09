//
//  ViewController.swift
//  LayOut
//
//  Created by hw on 15/11/5.
//  Copyright © 2015年 hongw. All rights reserved.
//

import UIKit



class ViewController: UIViewController ,modelControllerDelegate{
    

    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var centerX: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let vc = HWModelController()
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func changeColor(color: UIColor) {
        self.view.backgroundColor = UIColor.blueColor()
    }

    @IBAction func buttonClick(sender: UIButton) {
        
        self.centerX.constant = sender.center.x - self.firstButton.center.x
        UIView.animateWithDuration(0.5) { () -> Void in
            self.view.layoutIfNeeded()
        }
    }

}

