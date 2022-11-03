//
//  ViewController.swift
//  dice
//
//  Created by ddukk18 on 03/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var newmg: UIImageView!
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var newimg_one: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        let rand = Int.random(in: 1...6)
        let second = Int.random(in: 1...6)
        newmg.image = UIImage(named: "dice\(rand)")
        newimg_one.image = UIImage(named: "dice\(second)")
       
        if rand > second{
            output.text = String(" First one is the winner ..!!")
        }
        else if rand == second{
            output.text = String(" Equal dice so no winners ..!!")
        }
        else{
            output.text = String(" Second one is the winner ..!!")
        }
        
       
    }
    
    
}

