//
//  ErrorChangeViewController.swift
//  AsyncAwait
//
//  Created by Hina on 2024/02/12.
//

import UIKit

class ErrorChangeViewController: UIViewController {
    var prefecture = ""
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var prefectureLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }

    @IBAction func didTapFetchWeather(_ sender: UIButton) {
        let (latitude, longitude) = PrefectureLatLon().fetchLatLon(weatherPrefecture: prefecture)
        Task {
            do {
                let (description, cityName) = try await WeatherAPIClient().getWeather(latitude: latitude, longitude: longitude)
                self.weatherLabel.text = description
                self.prefectureLabel.text = cityName

            } catch {
                view.backgroundColor = .red
            }
        }
    }
}
