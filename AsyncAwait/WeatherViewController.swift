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
        showWeatherView()
    }
    func showWeatherView() {
        let (latitude, longitude) = PrefectureLatLon().fetchLatLon(weatherPrefecture: prefecrure)
        Task { @MainActor in
            do {
                let (description, cityName) = try await APIClient().getWeatherFromAPI(latitude: latitude, longitude: longitude)
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
