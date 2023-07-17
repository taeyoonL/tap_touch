//
//  ViewController.swift
//  tap_touch
//
//  Created by 이태윤 on 2023/07/17.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var message: UILabel!
    
    @IBOutlet var tap_count: UILabel!
    
    @IBOutlet var touch_count: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        message.text = "Touches Began"
        tap_count.text = String(touch.tapCount)
        touch_count.text = String(touches.count)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        message.text = "Touches Moved"
        tap_count.text = String(touch.tapCount)
        touch_count.text = String(touches.count)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        message.text = "Touches Ended"
        tap_count.text = String(touch.tapCount)
        touch_count.text = String(touches.count)
    }


}

