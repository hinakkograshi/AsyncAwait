//
//  ErrorChangeViewController.swift
//  AsyncAwait
//
//  Created by Hina on 2024/02/12.
//

import UIKit

class ErrorChangeViewController: UIViewController {
    var prefecture = ""
    @IBOutlet private weak var weatherLabel: UILabel!
    @IBOutlet private weak var prefectureLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }

    @IBAction private func didTapFetchWeather(_ sender: UIButton) {
        let (latitude, longitude) = PrefectureLatLon().fetchLatLon(weatherPrefecture: prefecture)
        Task {
            do {
                let (description, cityName) = try await WeatherAPIClient().getWeather(latitude: latitude, longitude: longitude)
                self.weatherLabel.text = description
                self.prefectureLabel.text = cityName
                view.backgroundColor = .systemBlue

            } catch {
                view.backgroundColor = .red
            }
        }
    }
}
