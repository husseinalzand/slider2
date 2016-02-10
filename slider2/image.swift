//
//  image.swift
//  slider2
//
//  Created by hussein alzand on 27/02/15.
//  Copyright (c) 2015 hussein alzand. All rights reserved.
//

import Foundation
import UIKit
var index=0
struct animalİmage{

var image:UIImage = UIImage(named:"z2.jpg")!
    

    func fact()->String{
        var randomNummber=Int(arc4random_uniform(UInt32(3)))
        while index==randomNummber{randomNummber=Int(arc4random_uniform(UInt32(3)))
        }
        index=randomNummber
        var fact:String=""                                                                                           
        switch randomNummber{
        case 0:
            fact="Ağaç maziyi istikbale bağlar, size sabrı öğretir, beraber yaşamanın, birbirine faydalı olmanın zevkini verir"
        case 1:
            fact="Doğa insan olmadan da yaşar; ama insan doğa yok olduktan sonra yaşayamaz."
        case 2:
            fact="Pırıl pırıl gökkuşağını görmek için, önce yağmuru yaşamak gerekir."
        case 3:
            fact="Doğa bize aldırmadığından, doğanın ortasında kendimizi öyle rahat hissederiz ki."
        default:"Her Hangi Bir Bilgiye Erişilemedi"
    
        }
        
    return fact
    
    }
}
