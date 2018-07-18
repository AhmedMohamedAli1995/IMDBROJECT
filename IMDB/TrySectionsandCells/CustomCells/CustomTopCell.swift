//
//  CustomTopCell.swift
//  SecondView
//
//  Created by Sayed Abdo on 7/9/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import UIKit
//import Cosmos

class CustomTopCell : UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    
//    @IBOutlet weak var profileImg: UIImageView!
    //    @IBOutlet weak var stars: CosmosView!
    
    func drawCell () -> Void {
        
//        self.profileImg.layer.masksToBounds =  false;
//        self.profileImg.layer.cornerRadius = self.profileImg.frame.width/2;
//        self.profileImg.clipsToBounds = true;
//
      self.lbl.layer.cornerRadius = self.lbl.frame.width / 2;
      self.lbl.clipsToBounds = true;
//        self.lbl.layer.shadowPath = UIBezierPath(roundedRect: self.lbl.frame, cornerRadius: self.lbl.frame.width / 2).cgPath
//        self.lbl.layer.borderColor = UIColor.black.cgColor
//        self.lbl.layer.shadowColor = UIColor.purple.cgColor
//        self.lbl.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
//        self.lbl.layer.shadowOpacity = 1;
//        self.lbl.layer.shadowRadius = self.lbl.frame.width / 2;
//        self.lbl.clipsToBounds = true;

       //cosmos
        
//        stars.rating = 3.5
//        stars.settings.updateOnTouch = false
//        stars.settings.fillMode = .half
        
        
        guard let image = imgView.image else {
            return
        }
        
        let size = image.size
        
        imgView.clipsToBounds = true
        imgView.image = image
        
        let curveRadius    = size.width * 0.004
        // Adjust curve of the image view here
        let invertedRadius = 1.0 / curveRadius
        
        let rect = CGRect(x: 0,
                          y: -40,
                          width: imgView.bounds.width + size.width * 2 * invertedRadius,
                          height: imgView.bounds.height)
        
        let ellipsePath = UIBezierPath(ovalIn: rect)
        let transform = CGAffineTransform(translationX: -size.width * invertedRadius, y: 0)
        ellipsePath.apply(transform)
        
        
        
        let rectanglePath = UIBezierPath(rect: imgView.bounds)
        rectanglePath.apply(CGAffineTransform(translationX: 0, y: -size.height * 0.5))
        ellipsePath.append(rectanglePath)
        
        let maskShapeLayer   = CAShapeLayer()
        maskShapeLayer.frame = imgView.bounds
        maskShapeLayer.path  = ellipsePath.cgPath
        imgView.layer.mask = maskShapeLayer
        
    }
}

extension UILabel {
    
}
