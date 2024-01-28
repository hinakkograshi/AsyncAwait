//
//  AlertMaker.swift
//  AsyncAwait
//
//  Created by Hina on 2024/01/28.
//

import Foundation
import UIKit

struct AlertMaker {
    func make(didTapRetry: @escaping () -> Void) -> UIAlertController {
        let alert = UIAlertController(title: "エラー", message: "通信に失敗しました。", preferredStyle: .alert)
        let action = UIAlertAction(title: "リトライ", style: .default, handler: {_ -> Void in
            didTapRetry()
        })
        alert.addAction(action)
        return alert
    }
}
