//
//  QuestionViewController.swift
//  Firebase
//
//  Created by Carly Cameron on 7/12/20.
//  Copyright © 2020 Carly Cameron. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerA: UIButton!
    @IBOutlet weak var answerB: UIButton!
    @IBOutlet weak var anwerC: UIButton!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var A: UILabel!
    @IBOutlet weak var B: UILabel!
    @IBOutlet weak var C: UILabel!
    @IBOutlet weak var D: UILabel!
    @IBOutlet weak var answerD: UIButton!
    @IBOutlet weak var okButton: UIButton!
    var buttonString = ""
    var choiceString = "none"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        okButton.layer.cornerRadius = 20
        
        
        iconImageView.layer.cornerRadius = iconImageView.frame.size.width/2
        iconImageView.clipsToBounds = true

        iconImageView.layer.borderColor = UIColor.white.cgColor
        iconImageView.layer.borderWidth = 3.0
        
        answerA.layer.borderColor = UIColor.black.cgColor
        answerA.layer.borderWidth = 2.0
        answerB.layer.borderColor = UIColor.black.cgColor
        answerB.layer.borderWidth = 2.0
        anwerC.layer.borderColor = UIColor.black.cgColor
        anwerC.layer.borderWidth = 2.0
        answerD.layer.borderColor = UIColor.black.cgColor
        answerD.layer.borderWidth = 2.0
        
        A.layer.borderColor = UIColor.black.cgColor
        A.layer.borderWidth = 2.0
        B.layer.borderColor = UIColor.black.cgColor
               B.layer.borderWidth = 2.0
        C.layer.borderColor = UIColor.black.cgColor
               C.layer.borderWidth = 2.0
        D.layer.borderColor = UIColor.black.cgColor
               D.layer.borderWidth = 2.0
        
        
        switch buttonString {
        case "music":
            iconImageView.image = UIImage(named: "icons8-earbud-headphones-100-2")
        case "sports":
            iconImageView.image = UIImage(named: "icons8-sports-video-intersound-100-2")
        case "food":
            iconImageView.image = UIImage(named: "icons8-street-food-100-2")
        case "global":
            iconImageView.image = UIImage(named: "icons8-globe-earth-100")
        case "science":
             iconImageView.image = UIImage(named: "icons8-test-tube-100-2")
        default:
            print("nope")
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func onOKButtonPressed(_ sender: Any) {
    }
    
    @IBAction func onAPressed(_ sender: Any) {
        choiceString = "a"
        selected()
    }
    
    @IBAction func onBPressed(_ sender: Any) {
        choiceString = "b"
        selected()
    }
    @IBAction func onCPressed(_ sender: Any) {
        choiceString = "c"
        selected()
    }
    @IBAction func onDPressed(_ sender: Any) {
        choiceString = "d"
        selected()
    }
    
    
    func selected() {
        switch choiceString {
        case "a":
            answerA.layer.borderColor = UIColor.red.cgColor
            answerA.layer.borderWidth = 2.0
            answerB.layer.borderColor = UIColor.black.cgColor
            answerB.layer.borderWidth = 2.0
            anwerC.layer.borderColor = UIColor.black.cgColor
            anwerC.layer.borderWidth = 2.0
            answerD.layer.borderColor = UIColor.black.cgColor
            answerD.layer.borderWidth = 2.0
        case "b":
            answerA.layer.borderColor = UIColor.black.cgColor
            answerA.layer.borderWidth = 2.0
            answerB.layer.borderColor = UIColor.red.cgColor
            answerB.layer.borderWidth = 2.0
            anwerC.layer.borderColor = UIColor.black.cgColor
            anwerC.layer.borderWidth = 2.0
            answerD.layer.borderColor = UIColor.black.cgColor
            answerD.layer.borderWidth = 2.0
        case "c":
            answerA.layer.borderColor = UIColor.black.cgColor
            answerA.layer.borderWidth = 2.0
            answerB.layer.borderColor = UIColor.black.cgColor
            answerB.layer.borderWidth = 2.0
            anwerC.layer.borderColor = UIColor.red.cgColor
            anwerC.layer.borderWidth = 2.0
            answerD.layer.borderColor = UIColor.black.cgColor
            answerD.layer.borderWidth = 2.0
        case "d":
            answerA.layer.borderColor = UIColor.black.cgColor
            answerA.layer.borderWidth = 2.0
            answerB.layer.borderColor = UIColor.black.cgColor
            answerB.layer.borderWidth = 2.0
            anwerC.layer.borderColor = UIColor.black.cgColor
            anwerC.layer.borderWidth = 2.0
            answerD.layer.borderColor = UIColor.red.cgColor
            answerD.layer.borderWidth = 2.0
        default:
              print("none")
        }
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
