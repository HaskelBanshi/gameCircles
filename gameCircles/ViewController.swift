//
//  ViewController.swift
//  gameCircles
//
//  Created by a2 on 21.07.2022.
//

import UIKit

class ViewController: UIViewController {

    var circleELement1: CircleView! = CircleView(frame: CGRect(x: 40, y: 40, width: 100, height: 100)){
        didSet{
            circleELement1.isUserInteractionEnabled = true
        }
    }
    
    
    var circleElement2: CircleView = CircleView(frame: CGRect(x: 180, y: 180, width: 100, height: 100))
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(circleELement1)
        
        view.addSubview(circleElement2)
        
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(circleGestureRecognizer(_:)))
        
        circleELement1.addGestureRecognizer(panGestureRecognizer)
        // Do any additional setup after loading the view.
    }

   
    
    
    @objc private func circleGestureRecognizer(_ gesture: UIPanGestureRecognizer) {

        print("pan has been")
        let gestureTranslation = gesture.translation(in: view)

        guard let gestureView = gesture.view else{
            return

        }

        gestureView.center = CGPoint (x: gestureView.center.x + gestureTranslation.x,
                                      y: gestureView.center.y + gestureTranslation.y)

        gesture.setTranslation(.zero, in: view)

        guard gesture.state == .ended else {
            return
        }
    }

}

