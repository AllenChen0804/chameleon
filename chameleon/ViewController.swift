//
//  ViewController.swift
//  chameleon
//
//  Created by 陳永展 on 2019/8/19.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var player: AVPlayer?
    @IBOutlet weak var animal: UIView!
    
    @IBOutlet weak var moveSlider: UISlider!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
            if let url = Bundle.main.url(forResource: "ALIN", withExtension: "mp3") {
                   player = AVPlayer(url: url)
                   player?.play()
            
               }

    }
  
    
    
    
    
      @IBAction func moveSlider(_ sender: UISlider) {
     
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = animal.bounds
        let image = UIImage(named: "chameleon-1")
        let imageView = UIImageView(image: image)
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        gradientLayer.locations = [0, 0.8,1]
     
        gradientLayer.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: imageView.frame.size)
        animal.mask = imageView
        animal.layer.addSublayer(gradientLayer)
        print(sender.value)
       
    
        
        
        if sender.value < 1.5 {
         
            gradientLayer.colors = [UIColor.blue.cgColor, UIColor.blue.cgColor]
            let sliderValue = sender.value * 72
            animal.frame.origin.x = CGFloat(653 - sliderValue)
        }
        else if sender.value < 3{
            
            gradientLayer.colors = [UIColor.orange.cgColor, UIColor.blue.cgColor]
            let sliderValue = sender.value * 72
            animal.frame.origin.x = CGFloat(653 - sliderValue)
        }else if sender.value < 4.5{
          
        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.orange.cgColor]
        let sliderValue = sender.value * 72
            animal.frame.origin.x = CGFloat(653 - sliderValue)
        }else if sender.value < 6.0{
        
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.orange.cgColor]
        let sliderValue = sender.value * 72
            animal.frame.origin.x = CGFloat(653 - sliderValue)
        }else if sender.value < 7.5{
          
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.green.cgColor]
        let sliderValue = sender.value * 72
            animal.frame.origin.x = CGFloat(653 - sliderValue)
        }else if sender.value < 9.0{
           
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor]
        let sliderValue = sender.value * 72
            animal.frame.origin.x = CGFloat(653 - sliderValue)
        }
        
       
               
            }
   

}
    
    



