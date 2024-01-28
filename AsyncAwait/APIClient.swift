//
//  APIClient.swift
//  AsyncAwait
//
//  Created by Hina on 2024/01/27.
//

import Foundation

struct APIClient {
    func getWeatherFromAPI(latitude: String, longitude: String) async throws -> (String, String) {
        var description = ""
        var cityName = ""
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\(Constants.apiKey)"
        let url = URL(string: urlString)
        let urlRequest = URLRequest(url: url!)

        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        switch (response as? HTTPURLResponse)?.statusCode {
        case 200:
            let decodeData = try JSONDecoder().decode(WeatherData.self, from: data)
            description = decodeData.weather[0].main
            cityName = decodeData.name
            return (description, cityName)
        default:
            throw APIClientError.networkError
        }
    }
}
