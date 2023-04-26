//
//  ViewController.swift
//  7
//
//  Created by Kole Reiser on 4/26/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelPens.isUserInteractionEnabled = true
        pens.isUserInteractionEnabled = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(recognizer:)))
        tapGesture.numberOfTouchesRequired = 1
        tapGesture.numberOfTapsRequired = 5
        labelPens.addGestureRecognizer(tapGesture)
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(self.swipe(recognizer:)))
        swipeGesture.direction = .up
        pens.addGestureRecognizer(swipeGesture)
    }

    @IBOutlet weak var pens: UIImageView!
    
    @IBOutlet weak var labelPens: UILabel!
    
    
    @objc func tap(recognizer:UITapGestureRecognizer) {
        labelPens.backgroundColor = .orange
    }
    @objc func swipe(recognizer:UISwipeGestureRecognizer) {
        pens.image = UIImage(named: "steelers")
    }
    
}
