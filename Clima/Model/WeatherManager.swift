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
    self.weatherData(stringURL: stringURL)
  }
  
  // 해당 도시의 날씨 데이터를 받아온다
  func weatherData(stringURL: String) {
    guard let url = URL(string: stringURL) else { return }
    
    //2. URLSession
    let session = URLSession(configuration: .default)
    
    //3. session -> dataTask
    let task = session.dataTask(with: url) { data, response, error in
      // 1. 에러가 있는지 확인
      // → 네트워크 연결 문제 등
      guard error == nil else { return }
      
      // 2. 응답 데이터가 nil인지 확인
      // → 서버에서 제대로 데이터를 받았는지 체크
      guard data != nil else { return }
      
      // 3. 받은 JSON 데이터를 디코딩 (→ WeatherData 모델로)
      // → JSONDecoder 사용해서 Data -> Struct로 변환
      
      var weatherData = try? JSONDecoder().decode(WeatherData.self, from: data!)
      print(weatherData)
      
      // 4. 필요한 정보 추출
      // → 날씨 상태 id, 도시 이름, 온도 등
      
      
      // 5. 앱 내부에서 사용할 모델(WeatherModel)로 변환
      // → DTO는 raw 데이터, WeatherModel은 비즈니스 로직용
      
      // 6. delegate에게 전달
      // → 날씨 정보 업데이트 하라고 ViewController에 알림
    }
    //4. dataTask.resume()
    task.resume()
  }
  
  private func parseJson(
  
  // 날씨 데이터를 표시한다.
  
 
}
