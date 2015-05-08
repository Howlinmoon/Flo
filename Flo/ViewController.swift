//
//  ViewController.swift
//  Flo
//
//  Created by jim Veneskey on 5/5/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

//Counter outlets
@IBOutlet weak var counterView: CounterView!
@IBOutlet weak var counterLabel: UILabel!

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        counterLabel.text = String(counterView.counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnPushButton(button: PushButtonView) {
        if button.isAddButton {
            counterView.counter++
        } else {
            if counterView.counter > 0 {
                counterView.counter--
            }
        }
        counterLabel.text = String(counterView.counter)
    }
    
}

