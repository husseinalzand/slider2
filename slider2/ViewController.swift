//
//  ViewController.swift
//  slider2
//
//  Created by hussein alzand on 27/02/15.
//  Copyright (c) 2015 hussein alzand. All rights reserved.
//hussein alzand

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalİmageViwe: UIImageView!
    
    @IBOutlet weak var factLabel: UILabel!
    var index=0
    var animalArray:[animalİmage]=[]
    override func viewDidLoad() {
        
        var animal=animalİmage()
        animal.image=UIImage(named:"images.jpg")!
        animalİmageViwe.image=animal.image
        factLabel.text=animal.fact()
        animalArray.append(animal)
        
        var animal2=animalİmage()
        animal2.image=UIImage(named:"z2.jpg")!
        animalİmageViwe.image=animal2.image
        animal.fact()
        animalArray+=[animal2]
        
        var animal3=animalİmage()
        animal3.image=UIImage(named:"monkey.jpg")!
        animalİmageViwe.image=animal3.image
        animal.fact()
        animalArray+=[animal3]
        
        var animal4=animalİmage()
        animal4.image=UIImage(named:"tiger.jpg")!
        animalİmageViwe.image=animal4.image
        animalArray+=[animal4]
        animal.fact()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextAnimal(sender: UIBarButtonItem) {
        
        var rand=Int(arc4random_uniform(UInt32(animalArray.count)))
       
        while rand==index
        {
            rand=Int(arc4random_uniform(UInt32(animalArray.count)))
          
        }
        
        index=rand
        var animalCurent=animalArray[rand]
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations:{
            self.animalİmageViwe.image=animalCurent.image
            self.factLabel.text = animalCurent.fact()
            }, completion: { (finished:Bool) ->()in
            })
        
    }

}

