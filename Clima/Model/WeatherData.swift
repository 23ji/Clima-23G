//
//  WeatherData.swift
//  Clima
//
//  Created by 이상지 on 4/10/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
  var name: String
  var main: Main
  var weather: [Weather]
}

struct Main: Decodable {
  var temp: Float
}

struct Weather: Decodable {
  var id: Int
}
