//
//  WeatherData.swift
//  Clima
//
//  Created by 이상지 on 4/11/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
  var name: Name
  var temp: Main
  var id: [Weather]
}

struct Name: Decodable{
  var name: String
}

struct Main: Decodable{
  var temp: Float
}

struct Weather: Decodable{
  var id: Int
}
