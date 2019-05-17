//
//  ViewController.swift
//  Animation
//
//  Created by Stefandi Glivert on 17/05/19.
//  Copyright © 2019 Stefandi Glivert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func resetButton(_ sender: UIButton) {
        UIView.animate(withDuration: 3) {
            self.mainView.transform = .identity
        }
    }
    @IBAction func rotatebutton(_ sender: UIButton) {
        UIView.animate(withDuration: 3) {
            
            self.mainView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            //reset animasi keawal
            self.mainView.transform = .identity
        }
    }
    @IBAction func upsizeButton(_ sender: UIButton) {
        UIView.animate(withDuration: 3) {
            //perbesar
            self.mainView.transform = CGAffineTransform(scaleX: 5, y: 5)
            //self.mainView.transform = .identity
        }
    }
    @IBAction func fusionButton(_ sender: UIButton) {
        UIView.animate(withDuration: 3) {
            //membuat animasi berputar
            self.mainView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            self.mainView.transform = CGAffineTransform(scaleX: 5, y: 5)
        }
    }
    @IBOutlet weak var mainView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //mengetahui frame awal
        UIupdate()
//        UIView.animate(withDuration: 3) {
//            self.mainView.frame.origin.x = 100
//            self.mainView.frame.origin.y = 200
//            self.UIupdate()
//        }
        // Do any additional setup after loading the view.
    }
    

    func UIupdate()
    {
        print(mainView.frame)
        print("Nilai x = \(mainView.frame.origin.x)")
        print("Nilai y = \(mainView.frame.origin.y)")
        print("Nilai width = \(mainView.frame.width)")
        print("Nilai height = \(mainView.frame.height)")
    }
}

