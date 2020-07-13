//
//  ResultsViewController.swift
//  Firebase
//
//  Created by Carly Cameron on 7/12/20.
//  Copyright © 2020 Carly Cameron. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var homeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        homeButton.layer.cornerRadius = 20
        
        iconImageView.layer.cornerRadius = iconImageView.frame.size.width/2
               iconImageView.clipsToBounds = true

               iconImageView.layer.borderColor = UIColor.white.cgColor
               iconImageView.layer.borderWidth = 3.0
        // Do any additional setup after loading the view.
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
