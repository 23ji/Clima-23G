//
//  WeatherData.swift
//  Clima
//
//  Created by 이상지 on 4/12/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
  var name: String
  var temp: Main
  var id: [Weather]
}

struct Main: Decodable {
  var temp: Float
}

struct Weather: Decodable {
  var id: Int
}
