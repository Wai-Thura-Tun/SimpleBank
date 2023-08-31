//
//  StringExtension.swift
//  simplebank
//
//  Created by Wai Thura Tun on 31/08/2023.
//

import Foundation

extension String {
    var captializedName: String {
        let firstLetter: String = self.prefix(1).capitalized
        let remainingLetters: String = self.dropFirst().lowercased()
        return firstLetter + remainingLetters
    }
}
