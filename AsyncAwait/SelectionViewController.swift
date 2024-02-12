//
//  SelectionViewController.swift
//  AsyncAwait
//
//  Created by Hina on 2024/02/12.
//

import UIKit

class SelectionViewController: UIViewController {
    var prefecture = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction private func didTapAlertViewButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "WeatherView", bundle: nil)
        let weatherVC = storyboard.instantiateViewController(withIdentifier: "WeatherView") as? WeatherViewController
        weatherVC?.prefecture = prefecture
        // SwiftLint
        navigationController?.pushViewController(weatherVC!, animated: true)
    }

    @IBAction private func didTapChangeViewButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "ErrorChangeView", bundle: nil)
        let errorChangeViewVC = storyboard.instantiateViewController(withIdentifier: "ErrorChangeView") as? ErrorChangeViewController
        errorChangeViewVC?.prefecture = prefecture
        // SwiftLint
        navigationController?.pushViewController(errorChangeViewVC!, animated: true)
    }

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

}
