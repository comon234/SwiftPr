//
//  ViewController.swift
//  imgView2
//
//  Created by 박민혁 on 2020/12/09.
//

import UIKit

class ViewController: UIViewController {
    var numImage = 1
    var maxImage = 6

    @IBOutlet var imageGallery: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPreImage(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage < 1) {
            numImage = maxImage
        }
        let imageName = String(numImage) + ".png"
        imageGallery.image = UIImage(named: imageName)
    }
    
    @IBAction func btnNextImage(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage) {
            numImage = 1
        }
        let imageName = String(numImage) + ".png"
        imageGallery.image = UIImage(named: imageName)
    }
}

