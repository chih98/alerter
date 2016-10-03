//
//  simpleAlert.swift
//  simpleAlert
//
//  Created by Marko Crnkovic on 9/24/16.
//  Copyright © 2016 Marko Crnkovic. All rights reserved.
//



import Foundation

/**
Creation of alerter
 
    - Author:
    Marko Crnkovic

 
*/
public class alerter {
    
     let view = UIApplication.shared.keyWindow?.rootViewController!.view
    
 
    /// This initializes the most basic alerter with a generic dialog and image.
     
   ///  - parameter message: String to be displayed when alerter is presented
   ///  - parameter dark: Boolean depicting whether alerter will be dark or light
   
    @discardableResult public convenience init(message: String, dark: Bool) {
        self.init()
        
        if view != nil {
            
            let alert = UIView(frame: CGRect(x: 0, y: 0, width: 350, height: 200))
            
            alert.center = CGPoint(x: view!.center.x, y: view!.center.y)
            
            let alertImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 135, height: 135))
            alertImage.center = CGPoint(x: alert.frame.width / 2, y: alertImage.frame.height / 2 + 10)
            
            
            
            
            let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 55))
            messageLabel.center = CGPoint(x: alert.frame.width / 2, y: alert.frame.height - 27)
            
            messageLabel.textAlignment = .center
            messageLabel.text = message
            messageLabel.font = UIFont.systemFont(ofSize: 40)
            messageLabel.adjustsFontSizeToFitWidth = true
            
            if dark == true {
                
                alert.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0.6)
                messageLabel.textColor = UIColor.white
                
                
                    
                    let image = UIImage(named: "darkAlert.jpg", in: Bundle.init(identifier: "org.cocoapods.alerter"), compatibleWith: nil)
                    alertImage.image = image!
             
            } else {
                
                alert.backgroundColor = UIColor(colorLiteralRed: 0.8, green: 0.8, blue: 0.8, alpha: 0.8)
                messageLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0.5, alpha: 1)
                
                
                    let image = UIImage(named: "lightAlert.png", in: Bundle.init(identifier: "org.cocoapods.alerter"), compatibleWith: nil)
                    alertImage.image = image!
                    
                
                
            }
            
            alert.layer.cornerRadius = 15
            alert.clipsToBounds = true
            
            
            
            
            
            alert.addSubview(messageLabel)
            alert.addSubview(alertImage)
            
            
            
            
            show(alert: alert)
            
        } else {
            
            NSLog("Alerter -- View was not initialized, therefore alerter was not able to attatch itself to view")
            
        }
        
        
        
    }

    /**
     Allows for specification of success or failure logo for image
     
       - parameter message: String to be displayed when alerter is presented
       - parameter dark: Boolean depicting whether alerter will be dark or light
       - parameter success: Boolean depicting whether alerter will display success or failure image
     
     
    */
    
   @discardableResult public convenience init(message: String, dark: Bool, success: Bool) {
        self.init()
    
    if view != nil {
        
        let alert = UIView(frame: CGRect(x: 0, y: 0, width: 350, height: 200))
        
        alert.center = CGPoint(x: view!.center.x, y: view!.center.y)
        
        let alertImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 135, height: 135))
        alertImage.center = CGPoint(x: alert.frame.width / 2, y: alertImage.frame.height / 2 + 10)
        
        
        
        
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 55))
        messageLabel.center = CGPoint(x: alert.frame.width / 2, y: alert.frame.height - 27)
        
        messageLabel.textAlignment = .center
        messageLabel.text = message
        messageLabel.font = UIFont.systemFont(ofSize: 40)
        messageLabel.adjustsFontSizeToFitWidth = true
        
        if dark == true {
            
            alert.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0.6)
            messageLabel.textColor = UIColor.white
            
            if success == true {
            
            let image = UIImage(named: "darkSuccess.png", in: Bundle.init(identifier: "org.cocoapods.alerter"), compatibleWith: nil)
            alertImage.image = image!
            } else if success == false {
                let image = UIImage(named: "darkFailure.png", in: Bundle.init(identifier: "org.cocoapods.alerter"), compatibleWith: nil)
                alertImage.image = image!
            }
            
        } else {
            
            alert.backgroundColor = UIColor(colorLiteralRed: 0.8, green: 0.8, blue: 0.8, alpha: 0.8)
            messageLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0.5, alpha: 1)
            
            if success == true {
                
                let image = UIImage(named: "lightSuccess.png", in: Bundle.init(identifier: "org.cocoapods.alerter"), compatibleWith: nil)
                alertImage.image = image!
                
            } else if success == false {
                
                let image = UIImage(named: "lightFailure.png", in: Bundle.init(identifier: "org.cocoapods.alerter"), compatibleWith: nil)
                alertImage.image = image!
                
            }
                
        }
        
        alert.layer.cornerRadius = 15
        alert.clipsToBounds = true
        
        
        
        
        
        alert.addSubview(messageLabel)
        alert.addSubview(alertImage)
        
        
        
        
        show(alert: alert)
        
    } else {
        
        NSLog("Alerter -- View was not initialized, therefore alerter was not able to attatch itself to view")
        
    }
    
    
    
    }
    
    /**
     Allows for specification of success or failure logo for image
     
     - parameter message: String to be displayed when alerter is presented
     - parameter dark: Boolean depicting whether alerter will be dark or light
     - parameter picture: UIImage to be shown with no editing (Use circularPicture for post editing)
     
    ````
     Example Implementation:
     
     let myImage = UIImage(named: "happyFace")
     alerter(message: "Hello", dark true, picture: myImage)
     
     ````
     
     
     */
    
    @discardableResult public convenience init(message: String, dark: Bool, picture: UIImage) {
        self.init()
        
        if view != nil {
            
            let alert = UIView(frame: CGRect(x: 0, y: 0, width: 350, height: 200))
            
            alert.center = CGPoint(x: view!.center.x, y: view!.center.y)
            
            let alertImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 135, height: 135))
            alertImage.center = CGPoint(x: alert.frame.width / 2, y: alertImage.frame.height / 2 + 10)
            
            
            
            
            let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 55))
            messageLabel.center = CGPoint(x: alert.frame.width / 2, y: alert.frame.height - 27)
            
            messageLabel.textAlignment = .center
            messageLabel.text = message
            messageLabel.font = UIFont.systemFont(ofSize: 40)
            messageLabel.adjustsFontSizeToFitWidth = true
            
            if dark == true {
                
                alert.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0.6)
                messageLabel.textColor = UIColor.white
                
                
                
                let image = picture
                alertImage.image = image
                
            } else {
                
                alert.backgroundColor = UIColor(colorLiteralRed: 0.8, green: 0.8, blue: 0.8, alpha: 0.8)
                messageLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0.5, alpha: 1)
                
                
                let image = picture
                alertImage.image = image
                
                
                
            }
            
            alert.layer.cornerRadius = 15
            alert.clipsToBounds = true
            
            
            
            
            
            alert.addSubview(messageLabel)
            alert.addSubview(alertImage)
            
            
            
            
            show(alert: alert)
            
        } else {
            
            NSLog("Alerter -- View was not initialized, therefore alerter was not able to attatch itself to view")
            
        }
        
        
        
    }

    /**
     Allows for specification of success or failure logo for image
     
     - parameter message: String to be displayed when alerter is presented
     - parameter dark: Boolean depicting whether alerter will be dark or light
     - parameter picture: UIImage cropped to a circle then shown (Use picture for raw image)
     
     ````
     Example Implementation:
     
     let myImage = UIImage(named: "happyFace")
     alerter(message: "Hello", dark true, picture: myImage)
     
     ````
     
     
     */
    
    @discardableResult public convenience init(message: String, dark: Bool, circularPicture: UIImage) {
        self.init()
        
        if view != nil {
            
            let alert = UIView(frame: CGRect(x: 0, y: 0, width: 350, height: 200))
            
            alert.center = CGPoint(x: view!.center.x, y: view!.center.y)
            
            let alertImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 135, height: 135))
            alertImage.center = CGPoint(x: alert.frame.width / 2, y: alertImage.frame.height / 2 + 10)
            alertImage.layer.cornerRadius = 67.5
            alertImage.clipsToBounds = true
            
            
            
            let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 55))
            messageLabel.center = CGPoint(x: alert.frame.width / 2, y: alert.frame.height - 27)
            
            messageLabel.textAlignment = .center
            messageLabel.text = message
            messageLabel.font = UIFont.systemFont(ofSize: 40)
            messageLabel.adjustsFontSizeToFitWidth = true
            
            if dark == true {
                
                alert.backgroundColor = UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0.6)
                messageLabel.textColor = UIColor.white
                
                
                
                let image = circularPicture
                alertImage.image = image
                
            } else {
                
                alert.backgroundColor = UIColor(colorLiteralRed: 0.8, green: 0.8, blue: 0.8, alpha: 0.8)
                messageLabel.textColor = UIColor(hue: 0, saturation: 0, brightness: 0.5, alpha: 1)
                
                
                let image = circularPicture
                alertImage.image = image
                
                
                
            }
            
            alert.layer.cornerRadius = 15
            alert.clipsToBounds = true
            
            
            
            
            
            alert.addSubview(messageLabel)
            alert.addSubview(alertImage)
            
            
            
            
            show(alert: alert)
            
        } else {
            
            NSLog("Alerter -- View was not initialized, therefore alerter was not able to attatch itself to view")
            
        }
        
        
        
    }
    
    
    
    
    private func show(alert: UIView) {
        
        view!.addSubview(alert)
        
        alert.transform = CGAffineTransform(scaleX: 0, y: 0)
        
        UIView.animate(withDuration: 0.5, animations: {
            alert.transform = CGAffineTransform(scaleX: 1, y: 1)
        }) { (Bool) in
            
            self.hide(alert: alert, delay: 2)
            
        }
    }
    
  
    private func hide(alert: UIView, delay: TimeInterval) {
        
        UIView.animate(withDuration: 0.5, delay: delay, options: .curveEaseInOut, animations: { 
            alert.transform = CGAffineTransform(scaleX: 0.00000001, y: 0.00000001)
            }) { (Bool) in
                    alert.removeFromSuperview()
        }
        
        
        
    }
    
    
}
