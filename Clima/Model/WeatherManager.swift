//
//  WeatherManager.swift
//  Clima
//
//  Created by 이상지 on 4/10/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
  var weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=ab2d2e496ebfc6758d71dd007225e58c"

  // 도시 이름을 전달받는다
  func featchWeather(cityName: String) {
    
    //1. String -> URL
    let stringURL = "\(self.weatherURL)&q=\(cityName)"
    self.weatherData(stringURL: cityName)
  }
  
  // 해당 도시의 날씨 데이터를 받아온다
  func weatherData(stringURL: String) {
    guard let url = URL(string: stringURL) else { return }
    
    //2. URLSession
    let session = URLSession(configuration: .default)
    
    //3. session -> dataTask
    let task = session.dataTask(with: url) { data, response, error in
      guard error == nil else { return }
      guard let data = data else { return }
      
      guard let response = response else { return }
      
      // WeatherData 정의
      // 받은 데이터를 파싱해줘야함
      
    }
  }
  
  // 날씨 데이터를 표시한다.
  
  //4. dataTask.resume()
  
}
