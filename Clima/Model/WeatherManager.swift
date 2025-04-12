//
//  WeatherManager.swift
//  Clima
//
//  Created by 이상지 on 4/12/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
  let weatherString = "https://api.openweathermap.org/data/2.5/weather?appid=ab2d2e496ebfc6758d71dd007225e58c&units=metric"
  
  func fetchWeather(cityName: String) {
    guard let weatherURL = URL(string: "\(weatherString)&q=\(cityName)") else { return }
    self.requestWeather(url: weatherURL)
  }
  
  func requestWeather(url: URL) {
    let session = URLSession(configuration: .default)
    
    let task = session.dataTask(with: url) { data, response, error in
      guard error == nil else { return }
      guard let data = data else { return }
      
      //let weatherDataDTO = self.parseData()
    }

  }
  
  //func parseData(data: Data)->
}
