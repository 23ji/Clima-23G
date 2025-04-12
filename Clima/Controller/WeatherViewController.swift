//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var conditionImageView: UIImageView!
  @IBOutlet weak var temperatureLabel: UILabel!
  @IBOutlet weak var cityLabel: UILabel!
  @IBOutlet weak var searchWeather: UITextField!

  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.searchWeather.delegate = self
  }
  
  @IBAction func searchButton(_ sender: Any) {
  }
  
}

