//
//  File.swift
//  ZachStout_CSP
//
//  Created by Stout, Zachary on 1/3/18.
//  Copyright © 2018 Stout, Zachary. All rights reserved.
//

import UIKit
import SpriteKit

public class DeathScene: SKScene
{
    override public func didMove(to view: SKView) -> Void
    {
        self.backgroundColor = SKColor.black
        
        let gameOver = SKLabelNode(text: "Wow just Wow..")
        gameOver.name = "game over"
        gameOver.fontSize = 65
        gameOver.fontColor = SKColor.yellow
        gameOver.position = CGPoint(x: frame.midX, y: frame.midY)
        
        addChild(gameOver)
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) -> Void
    {
        let touch = touches.first
        let touchLocation = touch?.location(in: self)
        let touchedNode = self.atPoint(touchLocation!)
        if(touchedNode.name == "game over")
        {
            let newGameScene = GameScene(size: size)
            newGameScene.scaleMode = scaleMode
            let transitionType = SKTransition.flipHorizontal(withDuration: 0.5)
            view?.presentScene(newGameScene, transition: transitionType)
        }
    }
}
