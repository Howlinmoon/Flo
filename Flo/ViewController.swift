//
//  ViewController.swift
//  Flo
//
//  Created by Caroline Begbie on 15/04/2015.
//  Copyright (c) 2015 Caroline Begbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  //Counter outlets
  @IBOutlet weak var counterView: CounterView!
  @IBOutlet weak var counterLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
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

