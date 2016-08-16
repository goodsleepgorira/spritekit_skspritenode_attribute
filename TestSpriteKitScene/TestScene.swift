//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {

    //画面タッチ時の呼び出しメソッド
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        //タッチした座標を取得する。
        let location = touches.first!.locationInNode(self)
        
        //タッチした位置まで移動するアクションを作成する。
        let action = SKAction.moveTo(CGPoint(x:location.x, y:location.y), duration:1.0)
        
        //SKSファイルに配置した鳥ノードを取得する。
        let bird = self.childNodeWithName("bird1") as? SKSpriteNode
        
        //アクションを実行する。
        bird?.runAction(action)
        
    }

}
