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
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    guard textField.text != nil else { return false }
    return true
  }
  
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    guard textField.text != nil else { return false }
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    guard let text = textField.text else { return }
    textField.text = ""
    // 입력된 text를 이용해 날씨 정보 요청
    
  }
}


