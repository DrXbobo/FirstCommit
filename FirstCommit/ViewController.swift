//
//  ViewController.swift
//  FirstCommit
//
//  Created by ShanghaiLuluyou-xuwenbo on 15/7/14.
//  Copyright (c) 2015年 ShanghaiLuluyou-xuwenbo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let _label1 = UILabel()
    let _button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _label1.text = "First Commit"
        _label1.font = UIFont.systemFontOfSize(25)
        _label1.textColor = UIColor.orangeColor();
        _label1.frame = CGRectMake(20, 50, 300, 20)
        view.addSubview(_label1)
        
        _button.frame = CGRectMake(20, 100, 240, 30)
        _button.setTitle("Change Color", forState: UIControlState.Normal)
        _button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        _button.addTarget(self, action:"ButtonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(_button)
        
        let imgV = UIImageView(frame: CGRectMake(20, 150, 80, 80))
        imgV.image = UIImage(named: "apple58")
        imgV.userInteractionEnabled = true
        let ges = UITapGestureRecognizer(target: self, action:"ImageVIewTap:")
        imgV.addGestureRecognizer(ges)
        view.addSubview(imgV)
    }
    func ButtonClick(btn:UIButton){
        _label1.text = "Text Change"
    }
    func ImageVIewTap(ges:UIGestureRecognizer)
    {
        println(ges)
        let imgV = ges.view
        imgV?.transform = CGAffineTransformMakeRotation(0.8)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

