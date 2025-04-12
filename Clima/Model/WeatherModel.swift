//
//  WeatherModel.swift
//  Clima
//
//  Created by 이상지 on 4/12/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
  var cityName: String
  var temp: Float
  var conditionID: Int
  
  var tempString: String{
    return String(format: "%.1f", temp)
  }
  
  var weatherName: String{
    switch conditionID {
            case 200...232:
                return "cloud.bolt"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "sun.max"
            case 801...804:
                return "cloud.bolt"
            default:
                return "cloud"
            }
  }
}
