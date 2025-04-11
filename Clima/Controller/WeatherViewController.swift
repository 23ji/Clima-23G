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
    //endediting
    self.searchWeather.endEditing(true)
  }
  
  //사용자가 입력을 끝낼 때
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    guard textField.text != "" else { return false }
    //엔터키 눌러도 동작하게
    return true
  }
  
  //입력이 끝났을 때
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    guard textField.text != "" else { return false }
    return true
  }
  
  //리턴키 눌렀을 때
  func textFieldDidEndEditing(_ textField: UITextField) {
    //텍스트 값 전달
    guard let text = textField.text else { return }
    
  }
  
}

