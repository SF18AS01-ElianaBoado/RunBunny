//
//  ViewController.swift
//  RunBunnyAnimation
//
//  Created by Eliana Boado on 1/22/19.
//  Copyright © 2019 Eliana Boado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bunnyImage: UIImageView!     //ImageView connection
    
    var bunnyUIImages: [UIImage] = [];      //array of bunnies
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bunnyUIImages = createArray(total: 6, imagePrefix: "bunny");  //calling up from createArray
        print(bunnyUIImages.count);
    }
    
    func createArray(total: Int, imagePrefix: String) -> [UIImage] {        //create array of all the image
        var bunnyA: [UIImage] = [];
        for bunnyCount in 0..<total {
            let imageName: String = "\(imagePrefix)-\(bunnyCount).jpg";
            if let image: UIImage = UIImage(named: imageName){
            bunnyA.append(image);
            }
        }
        return bunnyA;
    }
    
    func animation(imageView: UIImageView, imag: [UIImage]) {      //determining the animation
        imageView.animationImages = imag;
        imageView.animationDuration = 1.0;
        imageView.animationRepeatCount = 1;
        imageView.startAnimating();
    }
    
    @IBAction func BtnAction(_ sender: UIButton) {  //call the animation func when the appropriate button is tapped
        animation(imageView: bunnyImage, imag: bunnyUIImages);
    }
}
