//
//  WeatherData.swift
//  AsyncAwait
//
//  Created by Hina on 2024/01/27.
//

import Foundation

struct WeatherData: Decodable {
    let weather: [Weather]
    let name: String
}

struct Weather: Decodable {
    let main: String
}
