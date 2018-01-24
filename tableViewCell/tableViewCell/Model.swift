//
//  Model.swift
//  tableViewCell
//
//  Created by Mac on 10.10.17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit


var dataArray: [Model] {
    
    
    return [Model(name: "red head", image: UIImage(named: "1.jpeg")),Model(name: "blonde head", image: UIImage(named: "2.jpg")),Model(name: "black head", image: UIImage(named: "3.jpg"))]
}


class Model {
    
    var name : String
    var image : UIImage?
    
    init(name: String, image: UIImage?) {
        self.name = name
        self.image = image
        
    }
  

}
