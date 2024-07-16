//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var userStories = StoryBrain()
    
    @IBAction func choiceMade(_ sender: UIButton) {
        print("button pressed")
        let userChoice = sender.currentTitle!
        userStories.checkChoice(userChoice)
        updateUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
        
        
        func updateUI() {
            storyLabel.text = userStories.getStoryText()
            choice1Button.setTitle(userStories.getChoice1(), for: .normal)
            choice2Button.setTitle(userStories.getChoice2(), for: .normal)
        }

    }

