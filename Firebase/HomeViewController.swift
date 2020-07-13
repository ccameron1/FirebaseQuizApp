//
//  HomeViewController.swift
//  Firebase
//
//  Created by Carly Cameron on 7/12/20.
//  Copyright © 2020 Carly Cameron. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        circleView.layer.cornerRadius = circleView.frame.size.width/2
        circleView.clipsToBounds = true

        circleView.layer.borderColor = UIColor.white.cgColor
        circleView.layer.borderWidth = 5.0
        
       
        signInButton.layer.cornerRadius = 20
        signUpButton.layer.cornerRadius = 20
       
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
