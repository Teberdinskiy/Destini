//
//  ViewController.swift
//  Destini
//
//  Created by 🧔🏻Alikhan Batchaev on 25.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.titleLabel?.numberOfLines = 0
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.titleLabel?.numberOfLines = 0
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

