//
//  BanerData.swift
//  Example_BusinessComponents
//
//  Created by Alexis Aranda on 02-02-22.
//  Copyright © 2022 Mercado Libre. All rights reserved.
//

import UIKit
import MLBusinessComponents


class AdsBannerData: NSObject, MLBusinessAdsBannerData {
    
    func getUrl() -> String {
        return "https://http2.mlstatic.com/D_NQ_983670-MLA48849245111_012022-F.jpg"
    }
}

