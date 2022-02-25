//
//  MLBusinessBannerView.swift
//  MLBusinessComponents
//
//  Created by Alexis Aranda on 02-02-22.
//
//
//  MLBusinessLoyaltyRingView.swift
//  MLBusinessComponents
//
//  Created by Juan sebastian Sanzone on 8/28/19.
//  Copyright © 2019 Juan Sanzone. All rights reserved.
//

import UIKit
import MLUI

@objc public protocol MLBusinessAdsBannerViewDelegate{
    func didRender(_ printUrl: String)
    func didTap(deepLink: String, clickUrl: String)
}


@objcMembers
open class MLBusinessAdsBannerView: UIView {
    let viewData: MLBusinessAdsBannerData

    private let verticalMargin: CGFloat = 0.0
    
    @objc public weak var delegate: MLBusinessAdsBannerViewDelegate?

    public init(_ viewData: MLBusinessAdsBannerData, _ delegate: MLBusinessAdsBannerViewDelegate? = nil) {
        self.viewData = viewData
        self.delegate = delegate
        super.init(frame: .zero)
        render()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Privates.
extension MLBusinessAdsBannerView {
    private func render() {
        self.prepareForAutolayout()
        
        layer.backgroundColor = UIColor.clear.cgColor
        layer.isOpaque = false
        layer.applyShadow(alpha: 0.12, x: 0, y: 4, blur: 16)
        
        let banner = buildBanner()
        self.addSubview(banner)
        banner.isUserInteractionEnabled = true;
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapOnButton))
        banner.addGestureRecognizer(tapGesture)

        makeConstraints(banner)
    }

    // MARK: Builders.
    private func buildBanner() -> UIImageView {
        let banner = UIImageView()
        
        banner.roundCorners([.layerMaxXMinYCorner, .layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner], radius: 8.0)
        banner.clipsToBounds = true
        
        banner.prepareForAutolayout(.clear)
        banner.setRemoteImage(imageUrl: viewData.getImageUrl())

        return banner
    }
    


    // MARK: Constraints.
    func makeConstraints( _ banner: UIImageView) {
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: topAnchor, constant: verticalMargin),
            banner.widthAnchor.constraint(equalTo: widthAnchor, multiplier:  1.0),
            banner.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.25),
            banner.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -verticalMargin),
        ])
    }

    // MARK: Tap Selector.
    @objc private func didTapOnButton() {
        self.delegate?.didTap(deepLink: viewData.getDeepLink(), clickUrl: viewData.getClickUrl())
    }
}

//PUBLIC
extension MLBusinessAdsBannerView{
    public func viewDidRender(){
        self.delegate?.didRender(viewData.getPrintUrl())
    }
}
