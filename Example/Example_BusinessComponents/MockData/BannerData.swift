//
//  BannerData.swift
//  Example_BusinessComponents
//
//  Created by Felipe Andres Andrade Valenzuela on 02-02-22.
//  Copyright © 2022 Mercado Libre. All rights reserved.
//

import UIKit
import MLBusinessComponents

class BannerData: NSObject, MLBusinessBannerData {
    func getTitle() -> String {
        return "Banner"
    }
    
    func getImageURL() -> String {
        return "https://pbs.twimg.com/profile_images/1124417403566395394/9Wuzg8pf.png"
    }
    
    func getDeepLink() -> String {
        return "https://pbs.twimg.com/profile_images/1124417403566395394/9Wuzg8pf.png"
    }
    
    func getPrint() -> String {
        return "1"
    }
    
    func getClick() -> String {
        return "0"
    }
    
}
    
