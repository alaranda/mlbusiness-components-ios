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



@objcMembers
open class MLBusinessBannerView: UIView {
    let viewData: MLBusinessBannerData

    private let verticalMargin: CGFloat = 20

    private let buttonHeight: CGFloat = 20

    private var tapAction: ((_ deepLink: String) -> Void)?

    public init(_ viewData: MLBusinessBannerData) {
        self.viewData = viewData
        super.init(frame: .zero)
        render()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Privates.
extension MLBusinessBannerView {
    private func render() {
        self.prepareForAutolayout()

        let banner = buildBanner()
        self.addSubview(banner)

        makeConstraints(banner)
    }

    // MARK: Builders.
    private func buildBanner() -> UIImageView {
        let banner = UIImageView()
        banner.prepareForAutolayout(.clear)
        banner.setRemoteImage(imageUrl: viewData.getUrl())

        return banner
    }
    


    // MARK: Constraints.
    func makeConstraints( _ banner: UIImageView) {
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: topAnchor, constant: verticalMargin),
            banner.leadingAnchor.constraint(equalTo: leadingAnchor),
            banner.widthAnchor.constraint(equalToConstant: 350),
            banner.heightAnchor.constraint(equalToConstant: 100),
            banner.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -verticalMargin)
            

            
        ])
    }

/*    // MARK: Tap Selector.
    @objc private func didTapOnButton() {
        tapAction?(viewData.getButtonDeepLink())
    }
}

// MARK: Public Methods.
extension MLBusinessBannerView {
    @objc open func addTapAction(_ action: @escaping ((_ deepLink: String) -> Void)) {
        self.tapAction = action
    }

    @objc open func fillPercentProgressWithAnimation(_ duration: TimeInterval = 1.0) {
        ringView?.startProgress(to: CGFloat(viewData.getRingPercentage()), duration: duration)
    }*/
}
