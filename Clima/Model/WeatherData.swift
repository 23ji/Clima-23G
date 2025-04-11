//
//  WeatherData.swift
//  Clima
//
//  Created by 이상지 on 4/11/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData {
  var cityName: Name
  var temperature: Main
  var id: [Weather]
}

struct Name: Decodable{
  var cityName: String
}

struct Main: Decodable{
  var temp: Float
}

struct Weather: Decodable{
  var id: Int
}
