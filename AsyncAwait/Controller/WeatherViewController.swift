//
//  WeatherViewController.swift
//  AsyncAwait
//
//  Created by Hina on 2024/01/27.
//

import UIKit

final class WeatherViewController: UIViewController {
    var prefecture = ""

    @IBOutlet private weak var weatherLabel: UILabel!

    @IBOutlet private weak var prefectureLabel: UILabel!

    // didTapFetchWeatherButtonで良さそう。
    @IBAction private func didTapFetchWeatherButton(_ sender: UIButton) {
        showWeatherView()
    }

    private func showWeatherView() {
        let (latitude, longitude) = PrefectureLatLon().fetchLatLon(weatherPrefecture: prefecture)
        Task { @MainActor in
            do {
                let (description, cityName) = try await WeatherAPIClient().getWeather(latitude: latitude, longitude: longitude)
                self.weatherLabel.text = description
                self.prefectureLabel.text = cityName
            } catch {
                let alert = AlertMaker().make(didTapRetry: {
                    self.showWeatherView()
                })
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}
