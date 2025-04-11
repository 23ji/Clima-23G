//
//  WeatherManager.swift
//  Clima
//
//  Created by 이상지 on 4/11/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
  
  let myURL = "https://api.openweathermap.org/data/2.5/weather?appid=ab2d2e496ebfc6758d71dd007225e58c&units=metric"
  
  // String -> URL
  func fetchCityName(cityName: String){
    let weatherURL = "\(myURL)&q=\(cityName)"
    let url = URL(string: weatherURL)!
    fetchWeatherData(url: url)
  }
  
  let session = URLSession(configuration: .default)
  
  func fetchWeatherData(url: URL){
    let task = session.dataTask(with: url) { data, response, error in
      guard error == nil else { return }
      guard let data = data else { return }
      
      //data JSON 디코딩
      //데이터 파싱해야함
      self.parseData(data: data)
    }
    task.resume()
  }
  
  func parseData(data: Data) {
    let weatherDataDTO = try? JSONDecoder().decode(WeatherData.self, from: data)
  }
}
