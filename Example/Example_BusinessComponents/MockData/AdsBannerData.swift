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
    func getImageUrl() -> String {
        return "https://http2.mlstatic.com/D_NQ_983670-MLA48849245111_012022-F.jpg"
    }
    
    func getClickUrl() -> String {
        return "click"
    }
    
    
    func getUrl() -> String {
        return "https://http2.mlstatic.com/D_NQ_983670-MLA48849245111_012022-F.jpg"
    }
    
    func getDeepLink() -> String {
        return "meli://webview/?url=https://www.mercadolibre.com.ar/ofertas#menu-user&c_id=/home/top_home_banner&c_uid=eea9cf15-1949-4859-a85c-03cf933ad1ca&c_category=fallback_mla"
    }
    
    func getPrintUrl() -> String {
        "holi soy un print"
    }
}

