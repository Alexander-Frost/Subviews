//
//  ViewController.swift
//  Subviews
//
//  Created by Alex on 4/15/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        displayTitleWith(name: "Alex")
        
        let myBtnView = UIButton(type: .custom)
        myBtnView.frame = CGRect(x: 50, y: 100, width: 30, height: 30)
        myBtnView.backgroundColor = .blue
        myBtnView.setImage(UIImage(named:"friends")?.withRenderingMode(.alwaysOriginal), for: .normal)
        myBtnView.imageView?.contentMode = .scaleAspectFill
        myBtnView.makeCircle()
        myBtnView.imageEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)

        
        view.addSubview(myBtnView)
    }

    func displayTitleWith(name: String) {
        //Create a navView to add to the navigation bar
        let navView = UIView()
        // Create the label
        let label = UILabel()
        label.text = name
        label.textColor = .green
        label.font = UIFont(name: "Helvetica", size: 22)
        label.sizeToFit()
        label.center = navView.center
        label.textAlignment = NSTextAlignment.center
    
        // Create the image view
        let imageView = UIImageView()
        imageView.image = UIImage(named: "friends")

        // Setting the image frame so that it's immediately before the text:
        imageView.frame = CGRect(x: label.frame.size.width/2 + 6, y: label.frame.origin.y + 2, width: 20, height: 20)
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        imageView.isUserInteractionEnabled = true
        // To maintain the image's aspect ratio:
        let imageAspect = imageView.image!.size.width/imageView.image!.size.height
        
        let frame = CGRect(x: 0, y: 0, width: 40, height: 44)
        let blueSquare = UIView(frame: frame)
        blueSquare.backgroundColor = .clear
        blueSquare.addSubview(label)
        blueSquare.addSubview(imageView)
        blueSquare.center = CGPoint(x: navView.frame.size.width  / 2 + 8, y: 22)
        
        // Add both the label and image view to the navView
        navView.addSubview(blueSquare)
        
        // Set the navigation bar's navigation item's titleView to the navView
        self.navigationItem.titleView = navView
    
        // Set the navView's frame to fit within the titleView
        navView.sizeToFit()
        self.navigationController?.navigationBar.barTintColor = .gray
        self.navigationItem.rightBarButtonItem?.image = UIImage(named: "friends")
        self.navigationItem.rightBarButtonItem?.tintColor = .blue    
        self.navigationItem.leftBarButtonItem?.tintColor = .red
        self.navigationItem.leftBarButtonItem?.title = "Back"
        
        
        
        //view.addSubview(blueSquare)
    
    }
    
    func addBtn(){
        let myBtnView = UIButton(type: .custom)
        myBtnView.frame = CGRect(x: 50, y: 100, width: 20, height: 20)
        myBtnView.backgroundColor = .blue
        myBtnView.setImage(UIImage(named:"friends")?.withRenderingMode(.alwaysOriginal), for: .normal)
        myBtnView.imageView?.contentMode = .scaleAspectFill
//        myBtnView.title(for: .normal) = "HERE"
                //let menuBarItem = InputBarButtonItem(type: .custom: ) //UIBarButtonItem(customView: mySubImgView)
        //myBtnView.makeCircle()
    }
}

extension UIButton {
    func makeCircle() {
        self.layer.cornerRadius = self.frame.size.height / 2;
        self.layer.masksToBounds = true;
    }
}

