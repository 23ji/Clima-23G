//
//  WeatherManager.swift
//  Clima
//
//  Created by 이상지 on 4/10/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
  var URL = "https://api.openweathermap.org/data/2.5/weather?appid=ab2d2e496ebfc6758d71dd007225e58c"

  func featchWeather(cityName: String) {
    let weatherURL = "\(self.URL)&q=\(cityName)"
    print(cityName)
    print(weatherURL)
  }
  //1. String -> URL
  //2. URLSession
  //3. session -> dataTask
  //4. dataTask.resume()
  
  //&lat={lat}&lon={lon}&exclude={part}
  
}
