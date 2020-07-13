//
//  CatagoryViewController.swift
//  Firebase
//
//  Created by Carly Cameron on 7/12/20.
//  Copyright © 2020 Carly Cameron. All rights reserved.
//

import UIKit

class CatagoryViewController: UIViewController {

    @IBOutlet weak var globalButton: UIButton!
    @IBOutlet weak var sportsButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var scienceButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    var globalFlag = false;
    var buttonString = "none"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //globalButton.setImage(UIImage(named: "icons8-globe-earth-100-2"), for: .selected)

        // Do any additional setup after loading the view.
         buttonString = "none"
        startButton.layer.cornerRadius = 20
    }
    override func viewWillAppear(_ animated: Bool) {
        buttonString = "none"
        setPictures()

    }
    
    @IBAction func onGlobalButtonPressed(_ sender: Any) {
        buttonString = "global"
        setPictures()
        
    }
    
    @IBAction func onSportsButtonPressed(_ sender: Any) {
        buttonString = "sports"
        setPictures()
        
    }
    @IBAction func onMusicButtonPressed(_ sender: Any) {
        buttonString = "music"
        setPictures()
        
    }
    @IBAction func onScienceButtonPressed(_ sender: Any) {
        buttonString = "science"
        setPictures()
        
    }
    @IBAction func onFoodButtonPressed(_ sender: Any) {
        buttonString = "food"
        setPictures()
        
    }
    @IBAction func onStartButtonPressed(_ sender: Any) {
        if buttonString != "none" {
            performSegue(withIdentifier: "segueToQuestion", sender: nil)
        }
        
    }
    
    
    func setPictures() {
        switch buttonString {
        case "global":
            globalButton.setImage(UIImage(named: "icons8-globe-earth-100-2"), for: .normal)
            sportsButton.setImage(UIImage(named: "icons8-sports-video-intersound-100-2"), for: .normal)
            musicButton.setImage(UIImage(named: "icons8-earbud-headphones-100-2"), for: .normal)
            scienceButton.setImage(UIImage(named: "icons8-test-tube-100-2"), for: .normal)
            foodButton.setImage(UIImage(named: "icons8-street-food-100-2"), for: .normal)
        case "sports":
            sportsButton.setImage(UIImage(named: "icons8-sports-video-intersound-100"), for: .normal)
            globalButton.setImage(UIImage(named: "icons8-globe-earth-100"), for: .normal)
            musicButton.setImage(UIImage(named: "icons8-earbud-headphones-100-2"), for: .normal)
            scienceButton.setImage(UIImage(named: "icons8-test-tube-100-2"), for: .normal)
            foodButton.setImage(UIImage(named: "icons8-street-food-100-2"), for: .normal)
        case "music":
            musicButton.setImage(UIImage(named: "icons8-earbud-headphones-100-3"), for: .normal)
            sportsButton.setImage(UIImage(named: "icons8-sports-video-intersound-100-2"), for: .normal)
            globalButton.setImage(UIImage(named: "icons8-globe-earth-100"), for: .normal)
            scienceButton.setImage(UIImage(named: "icons8-test-tube-100-2"), for: .normal)
            foodButton.setImage(UIImage(named: "icons8-street-food-100-2"), for: .normal)
        case "science":
            scienceButton.setImage(UIImage(named: "icons8-test-tube-100"), for: .normal)
            musicButton.setImage(UIImage(named: "icons8-earbud-headphones-100-2"), for: .normal)
            sportsButton.setImage(UIImage(named: "icons8-sports-video-intersound-100-2"), for: .normal)
            globalButton.setImage(UIImage(named: "icons8-globe-earth-100"), for: .normal)
            foodButton.setImage(UIImage(named: "icons8-street-food-100-2"), for: .normal)

        case "food":
            foodButton.setImage(UIImage(named: "icons8-street-food-100"), for: .normal)
            scienceButton.setImage(UIImage(named: "icons8-test-tube-100-2"), for: .normal)
            musicButton.setImage(UIImage(named: "icons8-earbud-headphones-100-2"), for: .normal)
            sportsButton.setImage(UIImage(named: "icons8-sports-video-intersound-100-2"), for: .normal)
            globalButton.setImage(UIImage(named: "icons8-globe-earth-100"), for: .normal)
        default:
            globalButton.setImage(UIImage(named: "icons8-globe-earth-100"), for: .normal)
            sportsButton.setImage(UIImage(named: "icons8-sports-video-intersound-100-2"), for: .normal)
            musicButton.setImage(UIImage(named: "icons8-earbud-headphones-100-2"), for: .normal)
            scienceButton.setImage(UIImage(named: "icons8-test-tube-100-2"), for: .normal)
            foodButton.setImage(UIImage(named: "icons8-street-food-100-2"), for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let qvc = segue.destination as! QuestionViewController
        qvc.buttonString = buttonString
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue)
    {
        
    }
}
