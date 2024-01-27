//
//  WeatherViewController.swift
//  AsyncAwait
//
//  Created by Hina on 2024/01/27.
//

import UIKit

class WeatherViewController: UIViewController {
    var prefecrure = ""

    @IBOutlet private weak var weatherLabel: UILabel!

    @IBOutlet private weak var prefectureLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func tappedFetchWeatherButton(_ sender: UIButton) {
        let (latitude, longitude) = PrefectureLatLon().fetchLatLon(weatherPrefecture: prefecrure)
        APIClient().getWeatherFromAPI(
            latitude: latitude,
            longitude: longitude, success: { description, cityName in
                DispatchQueue.main.async {
                    self.weatherLabel.text = description
                    self.prefectureLabel.text = cityName
                }
            }, failure: {
                print("error")
            }
        )
    }
}
