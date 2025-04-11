//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
  
  // MARK: - UI
  
  @IBOutlet weak var conditionImageView: UIImageView!
  @IBOutlet weak var temperatureLabel: UILabel!
  @IBOutlet weak var cityLabel: UILabel!
  @IBOutlet weak var searchTextField: UITextField!
  
  
  private var weatherManager = WeatherManager()
  
  // MARK: - Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.searchTextField.delegate = self
    self.weatherManager.delegate = self
  }
  
  @IBAction func searchWeather(_ sender: Any) {
    self.searchTextField.endEditing(true)
  }
}

extension WeatherViewController: UITextFieldDelegate {
  // 리턴키 눌렸을 때 값 들어오는거 확인
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    guard self.searchTextField.text != "" else { return false }
    textField.resignFirstResponder()
    return true
  }
  
  
  // 사용자 입력이 끝났을 때
  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    guard self.searchTextField.text != "" else { return false }
    return true
  }
  
  // 입력이 완료되었을 때
  func textFieldDidEndEditing(_ textField: UITextField) {
    guard let cityName = self.searchTextField.text else { return }
    self.searchTextField.text = ""
    weatherManager.featchWeather(cityName: cityName)
  }
}

extension WeatherViewController: WeatherManagerDelegate{
  func updateWeather(wether: WeatherModel) {
    DispatchQueue.main.async {
      self.conditionImageView.image = UIImage(systemName: wether.conditionName)
      self.cityLabel.text = wether.cityName
      self.temperatureLabel.text = wether.stringTemp
    }
  }
}
