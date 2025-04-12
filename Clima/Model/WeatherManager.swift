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
  
  var delegate: WeatherManagerDelegate? //?
  
  func fetchWeather(cityName: String) {
    guard let weatherURL = URL(string: "\(weatherString)&q=\(cityName)") else { return }
    self.requestWeather(url: weatherURL)
  }
  
  func requestWeather(url: URL) {
    let session = URLSession(configuration: .default)
    
    let task = session.dataTask(with: url) { data, response, error in
      guard error == nil else { return }
      guard let data = data else { return }
      
      guard let weatherDataDTO = self.parseData(data: data) else { return }
      guard let id = weatherDataDTO.weather.first?.id else { return }
      
      var weatherModel = WeatherModel(
        cityName: weatherDataDTO.name,
        temp: weatherDataDTO.main.temp,
        conditionID: id
      )
      //업데이트
      self.delegate?.updateWeather(weatherModel: weatherModel)

    }
    task.resume()
  }
  
  func parseData(data: Data)-> WeatherData? { //?
    var weatherData = try? JSONDecoder().decode(WeatherData.self, from: data) //Weather.self
    return weatherData
  }
  
}

protocol WeatherManagerDelegate {
  func updateWeather(weatherModel: WeatherModel)
}
