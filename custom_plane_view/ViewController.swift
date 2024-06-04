//
//  ViewController.swift
//  custom_plane_view
//
//  Created by Zignuts Tchnolab on 04/06/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(AircraftView())
        // Do any additional setup after loading the view.
    }


}


class AircraftView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        
        let path: UIBezierPath = getPath()
        
        let shape = CAShapeLayer()
        shape.path = path.cgPath
        shape.lineWidth = 2.0
        shape.strokeColor = UIColor.white.cgColor
        shape.fillColor = UIColor.clear.cgColor
        
 
        self.layer.addSublayer(shape)
    }
    
    func getPath() -> UIBezierPath {
        let path: UIBezierPath = UIBezierPath()
        
        path.move(to: CGPoint(x: 230, y: 520))
        
        path.addLine(to: CGPoint(x: 70, y: 520))
        
        path.addLine(to: CGPoint(x: 60, y: 250))
        
        path.addCurve(to: CGPoint(x: 240, y: 250), controlPoint1: CGPoint(x: 96, y: 16), controlPoint2: CGPoint(x: 204, y: 16))
        
        path.addLine(to: CGPoint(x: 230, y: 520))
        
        path.close()
        return path
    }
}
