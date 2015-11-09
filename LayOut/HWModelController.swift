//
//  HWModelController.swift
//  LayOut
//
//  Created by hw on 15/11/6.
//  Copyright © 2015年 hongw. All rights reserved.
//

import UIKit

protocol modelControllerDelegate{
    
    func changeColor(color : UIColor)
}

class HWModelController: UIViewController {

    var delegate : modelControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let button = UIButton()
        button.addTarget(self, action: Selector("buttonClick:"), forControlEvents: UIControlEvents.TouchUpInside)
        button.backgroundColor = UIColor.blueColor()
        self.view.addSubview(button)
        
        button.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(74)
            make.left.equalTo(self.view).offset(30)
            make.right.equalTo(self.view).offset(-39)
            make.height.equalTo(44)
        }
    }

    func buttonClick(sender: UIButton) {
        self.delegate?.changeColor(UIColor.redColor())
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
