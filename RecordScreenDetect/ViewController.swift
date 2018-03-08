//
//  ViewController.swift
//  RecordScreenDetect
//
//  Created by BinaryBoy on 3/4/18.
//  Copyright © 2018 BinaryBoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //  Converted to Swift 4 by Swiftify v4.1.6632 - https://objectivec2swift.com/
        UIScreen.main.addObserver(self, forKeyPath: "captured", options: .new, context: nil)

    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey: Any]?, context: UnsafeMutableRawPointer?) {
        if (keyPath == "captured") {
            let isCaptured = UIScreen.main.isCaptured
            //blablabla
            print(isCaptured)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

