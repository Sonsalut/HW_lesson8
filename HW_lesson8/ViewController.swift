//
//  ViewController.swift
//  HW_lesson8
//
//  Created by Le Thanh Son on 17/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setImage()
        setLabelContent()
        UIView.animate(withDuration: 5.0, animations: {
            self.myLabel.frame.origin.y -= 300
            self.myLabel.alpha = 1
        })
        UIView.animate(withDuration: 5.0, animations: {
            self.myImage.alpha = 1
        })
        
        
    }
    func setImage() {
        myImage.image = UIImage(named: "gold")
        myImage.frame = CGRect(x: 10, y: 180, width: 400, height: 300)
        myImage.alpha = 0
    }
    func setLabelContent() {
        myLabel.text = "I am rich!!!"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: 100, y: 900, width: 200, height: 30)
        myLabel.font = myLabel.font.withSize(30)
        myLabel.alpha = 0
    }
}

