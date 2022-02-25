//
//  MLBusinessBannerData.swift
//  FXBlurView
//
//  Created by Alexis Aranda on 02-02-22.
//

import Foundation

@objc public protocol MLBusinessAdsBannerData: NSObjectProtocol {
    @objc optional func getTitle() -> String?
    @objc optional func getSubtitle() -> String?
    @objc func getImageUrl() -> String
    @objc func getDeepLink() -> String
    @objc func getClickUrl() -> String
    @objc func getPrintUrl() -> String


}
