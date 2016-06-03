//
//  ViewController.swift
//  SnapkitLandscape
//
//  Created by Ashutosh Kumar Jha on 6/3/16.
//  Copyright © 2016 Ashutosh Kumar Jha. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let topView = UIView()
        //        topView.backgroundColor = UIColor.blueColor()
        
        let bottomLeftView = UIView()
        //        bottomLeftView.backgroundColor = UIColor.yellowColor()
        
        let bottomRightView = UIView()
        //        bottomRightView.backgroundColor = UIColor.grayColor()
        
        self.view.addSubview(topView)
        self.view.addSubview(bottomLeftView)
        self.view.addSubview(bottomRightView)
        
        topView.snp_makeConstraints { (make) -> Void in
            make.top.left.right.equalTo(0)
            make.height.equalTo(self.view.snp_height).multipliedBy(0.5)
        }
        
        bottomLeftView.snp_makeConstraints { (make) -> Void in
            make.left.bottom.equalTo(0)
            make.height.equalTo(self.view.snp_height).multipliedBy(0.5)
            make.width.equalTo(self.view.snp_width).multipliedBy(0.5)
        }
        
        bottomRightView.snp_makeConstraints { (make) -> Void in
            make.right.bottom.equalTo(0)
            make.width.equalTo(self.view.snp_width).multipliedBy(0.5)
            make.height.equalTo(self.view.snp_height).multipliedBy(0.5)
        }
        
        // Add the logo
        let logo = UIImageView(image: UIImage(named: "logo"))
        topView.addSubview(logo)
        logo.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(topView.center)
            make.width.equalTo(100)
            make.height.equalTo(110)
        }
        
        // Add the buttons
        let tutorialsBtn = UIButton()
        tutorialsBtn.setTitle("Tutorials", forState: UIControlState.Normal)
        tutorialsBtn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        tutorialsBtn.backgroundColor = UIColor.redColor()
        bottomLeftView.addSubview(tutorialsBtn)
        
        let quizBtn = UIButton()
        quizBtn.setTitle("Quiz", forState: UIControlState.Normal)
        quizBtn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        quizBtn.backgroundColor = UIColor.redColor()
        bottomRightView.addSubview(quizBtn)
        
        // And some constraints to center the buttons inside their containers
        tutorialsBtn.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(bottomLeftView.center)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }
        
        quizBtn.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(bottomRightView.center)
            make.width.equalTo(100)
            make.height.equalTo(25)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

