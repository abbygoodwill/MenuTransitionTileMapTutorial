//
//  MenuScene.swift
//  MenuTransitionTileTutorial
//
//  Created by Abby Goodwill on 5/31/19.
//  Copyright © 2019 Abby Goodwill. All rights reserved.
//

import Foundation
import SpriteKit

class MenuScene: SKScene {
    
    // initializing this class
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    override init(size: CGSize) {
        
        super.init(size: size)
        
        // Setting the background color to purple
        backgroundColor = SKColor.purple
        
        let startGameText = SKLabelNode(fontNamed: "Baskerville")
        startGameText.text = "Tap to Play"
        startGameText.fontSize = 40
        startGameText.fontColor = SKColor.white
        // Positioning the startGameText
        startGameText.position = CGPoint(x: size.width / 2.0, y: size.height / 2.0)
        // Add this to the scene
        addChild(startGameText)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // made two constants stored GameScene and Transition
        let scene = SKScene(fileNamed: "GameScene")!
        let transition = SKTransition.fade(withDuration: 0.2)
        
        // Ensuring the aspect ratio is proper
        scene.scaleMode = .aspectFill
        
        // Presenting the scene
        self.view?.presentScene(scene, transition: transition)
        
    }
}
