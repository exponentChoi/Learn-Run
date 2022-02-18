//
//  String+.swift
//  MyFoundation
//
//  Created by 이서준 on 2021/11/30.
//

import Foundation

extension String {
    enum LetterType {
        case english
        case korean
        case number
        case unknown
    }
    
    func getLetterType() -> LetterType {
        if self < "A" {
            return .number
        }
        // 둘 다 영문이면 오름차순 정렬
        else if (self >= "A" && self <= "z") {
            return .english
        }
        // 둘 다 한글이면 오름차순 정렬
        else if self > "z" {
            return .korean
        }
        return .unknown
    }
}

extension String {
    /// "yyyy-MM-dd HH:mm:ss"
    func toDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormatter.timeZone = TimeZone(identifier: "Asia/Seoul")
        if let date = dateFormatter.date(from: self) {
            return date
        } else {
            return nil
        }
    }
}
