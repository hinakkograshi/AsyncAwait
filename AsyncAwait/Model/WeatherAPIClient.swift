//
//  APIClient.swift
//  AsyncAwait
//
//  Created by Hina on 2024/01/27.
//

import Foundation

struct WeatherAPIClient {

    func getWeather(latitude: String, longitude: String) async throws -> (String, String) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\(Constants.apiKey)"
        let url = URL(string: urlString)
        let urlRequest = URLRequest(url: url!)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        switch (response as? HTTPURLResponse)?.statusCode {
        case 200:
            let weatherData = try JSONDecoder().decode(WeatherData.self, from: data)
            let description = weatherData.weather[0].main
            let cityName = weatherData.name
            return (description, cityName)
        default:
            throw APIClientError.networkError
        }
    }
}
