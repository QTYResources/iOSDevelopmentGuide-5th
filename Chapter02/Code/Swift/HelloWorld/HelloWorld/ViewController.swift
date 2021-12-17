//
//  ViewController.swift
//  HelloWorld
//
//  Created by 覃团业 on 2021/12/17.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel = UILabel(frame: CGRect.zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        let text = "HelloWorld"
        let textSize = (text as NSString).size(withAttributes: [NSAttributedString.Key.font: self.label.font as Any])
        let screenSize = UIScreen.main.bounds
        self.label.text = text
        self.label.frame = CGRect(x: (screenSize.width - textSize.width) / 2, y: (screenSize.height - textSize.height) / 2, width: textSize.width, height: textSize.height)
        self.view.addSubview(self.label)
    }


}

