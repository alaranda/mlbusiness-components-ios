//
//  MLBusinessBannerData.swift
//  MLBusinessComponents
//
//  Created by Felipe Andres Andrade Valenzuela on 02-02-22.
//

import UIKit

@objc public protocol MLBusinessBannerData: NSObjectProtocol {
    @objc func getTitle() -> String
    @objc func getImageURL() -> String
    @objc func getDeepLink() -> String
    @objc func getPrint() -> String
    @objc func getClick() -> String
}
