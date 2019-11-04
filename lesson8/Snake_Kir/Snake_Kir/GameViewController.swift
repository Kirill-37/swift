//
//  GameViewController.swift
//  Snake_Kir
//
//  Created by Кирилл Харузин on 04/11/2019.
//  Copyright © 2019 Кирилл Харузин. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gameScene = GameScene(size: view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        gameScene.scaleMode = .resizeFill
        skView.presentScene(gameScene)
    }
}
   
