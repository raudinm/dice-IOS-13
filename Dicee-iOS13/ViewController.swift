//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var leftDicee: Int = 1
    var rightDicee: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// Conexion con el boton [Roll]
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let images: Array<UIImage> = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // Generar numeros random
        leftDicee = Int.random(in: 0..<images.count)
        rightDicee = Int.random(in: 0..<images.count)
        
        diceImageViewOne.image = images.randomElement()
        diceImageViewTwo.image = images.randomElement()
    }
    
}

