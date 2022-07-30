//
//  CircleView.swift
//  gameCircles
//
//  Created by a2 on 21.07.2022.
//

import UIKit

class CircleView: UIView {

    
    var circleview: UIView!
    var xibName: String = "CircleView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCircleView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCircleView()
    }
    
    func getFromXib() -> UIView{
        let bundle = Bundle(for: type(of: self))
        let xib = UINib(nibName: xibName, bundle: bundle)
        let view = xib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }

    func setCircleView() {
        circleview = getFromXib()
        circleview.layer.cornerRadius = frame.size.width / 2
        circleview.frame = bounds
        circleview.backgroundColor = .blue
        circleview.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        addSubview(circleview)
    }
    
}
