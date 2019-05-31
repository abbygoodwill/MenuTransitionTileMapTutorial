//
//  GameViewController.swift
//  MenuTransitionTileTutorial
//
//  Created by Abby Goodwill on 5/31/19.
//  Copyright © 2019 Abby Goodwill. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var scene: MenuScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure the main view
        let skView = view as! SKView
        skView.showsFPS = false
        
        // Create and set our menu scene
        scene = MenuScene(size: skView.bounds.size)
        // maintaing the aspect ratio
        scene.scaleMode = .aspectFill
        
        // Present the scene
        skView.presentScene(scene)

    }
}
