//
//  PrefectureLatLon.swift
//  AsyncAwait
//
//  Created by Hina on 2024/01/27.
//

import Foundation

struct PrefectureLatLon {
    // swiftlint:disable:next cyclomatic_complexity
    func fetchLatLon(weatherPrefecture: String) -> (latitude: String, longitude: String) { // swiftlint:disable:this function_body_length
        var latitude: String = ""
        var longitude: String = ""
        switch weatherPrefecture {
        case "北海道":
            latitude = "43.064301"
            longitude = "141.346874"
        case "青森県":
            latitude = "40.824622"
            longitude = "140.740598"
        case "岩手県":
            latitude = "39.7036"
            longitude = "141.152709"
        case "宮城県":
            latitude = "38.268812"
            longitude = "140.872082"
        case "秋田県":
            latitude = "39.718611"
            longitude = "140.102401"
        case "山形県":
            latitude = "38.240422"
            longitude = "140.363592"
        case "福島県":
            latitude = "37.750301"
            longitude = "140.467522"
        case "茨城県":
            latitude = "36.341793"
            longitude = "140.446802"
        case "栃木県":
            latitude = "36.566672"
            longitude = "139.883093"
        case "群馬県":
            latitude = "36.390698"
            longitude = "139.060451"
        case "埼玉県":
            latitude = "35.857431"
            longitude = "139.648901"
        case "千葉県":
            latitude = "35.605045"
            longitude = "140.123325"
        case "東京都":
            latitude = "35.689753"
            longitude = "139.691731"
        case "神奈川県":
            latitude = "35.447495"
            longitude = "139.6424"
        case "新潟県":
            latitude = "37.902419"
            longitude = "139.023225"
        case "富山県":
            latitude = "36.695275"
            longitude = "137.211342"
        case "石川県":
            latitude = "36.59473"
            longitude = "136.625582"
        case "福井県":
            latitude = "36.065219"
            longitude = "136.221682"
        case "山梨県":
            latitude = "35.664161"
            longitude = "138.568459"
        case "長野県":
            latitude = "36.651296"
            longitude = "138.181239"
        case "岐阜県":
            latitude = "35.391228,"
            longitude = "136.722311"
        case "静岡県":
            latitude = "34.976944"
            longitude = "138.383009"
        case "愛知県":
            latitude = "35.180344"
            longitude = "136.906632"
        case "三重県":
            latitude = "34.730272"
            longitude = "136.508598"
        case "滋賀県":
            latitude = "35.004528"
            longitude = "135.868607"
        case "京都府":
            latitude = "35.021393"
            longitude = "135.755439"
        case "大阪府":
            latitude = "34.686555"
            longitude = "135.519474"
        case "兵庫県":
            latitude = "34.691287"
            longitude = "135.183061"
        case "奈良県":
            latitude = "34.685326"
            longitude = "135.832751"
        case "和歌山県":
            latitude = "34.226041"
            longitude = "135.167504"
        case "鳥取県":
            latitude = "35.503867"
            longitude = "134.237716"
        case "島根県":
            latitude = "35.472324"
            longitude = "133.05052"
        case "岡山県":
            latitude = "34.661759"
            longitude = "133.934399"
        case "広島県":
            latitude = "34.396603"
            longitude = "132.459621"
        case "山口県":
            latitude = "34.18613"
            longitude = "131.470497"
        case "徳島県":
            latitude = "34.065756"
            longitude = "134.559297"
        case "香川県":
            latitude = "34.340045"
            longitude = "134.043369"
        case "愛媛県":
            latitude = "33.841669"
            longitude = "132.765371"
        case "高知県":
            latitude = "33.5597"
            longitude = "133.531096"
        case "福岡県":
            latitude = "33.606781"
            longitude = "130.418307"
        case "佐賀県":
            latitude = "33.24957"
            longitude = "130.299804"
        case "長崎県":
            latitude = "32.744814"
            longitude = "129.8737"
        case "熊本県":
            latitude = "32.789816"
            longitude = "130.74169"
        case "大分県":
            latitude = "33.238205"
            longitude = "131.612625"
        case "宮崎県":
            latitude = "31.911058"
            longitude = "131.423883"
        case "鹿児島県":
            latitude = "31.560166"
            longitude = "130.557994"
        case "沖縄県":
            latitude = "26.212418"
            longitude = "127.680895"
        default:
            break
        }
        return (latitude, longitude)
    }
}
