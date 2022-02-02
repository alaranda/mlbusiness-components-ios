//
//  MLBusinessBannerView.swift
//  MLBusinessComponents
//
//  Created by Felipe Andres Andrade Valenzuela on 02-02-22.
//

import UIKit

@objcMembers
public final class MLBusinessBannerView: UIView {
    private var viewData: MLBusinessBannerData?
    
    private let viewHeight: CGFloat = 50
    private weak var imageView: UIImageView?
    private let imageSize: CGFloat = 50
    private weak var titleLabel: UILabel?
    
    public init(_ viewData: MLBusinessBannerData? = nil) {
        self.viewData = viewData
        super.init(frame: .zero)
        render()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Privates methods
private extension MLBusinessBannerView {
    
    private func render() {
        self.prepareForAutolayout()
        
        let titleLabel = buildTitle()
        self.addSubview(titleLabel)
        
        let imageView = buildImageView()
        imageView.layer.cornerRadius = imageSize
        imageView.layer.masksToBounds = true
        self.addSubview(imageView)
        
        makeConstraints(titleLabel, imageView)
    }
    
    // MARK: Builders.
    private func buildTitle() -> UILabel {
        let titleLabel = UILabel()
        titleLabel.prepareForAutolayout(.clear)
        titleLabel.textColor = UI.Colors.mainLabelColor
        titleLabel.font = UIFont.ml_regularSystemFont(ofSize: UI.FontSize.XS_FONT)
        self.titleLabel = titleLabel
        return titleLabel
    }
    
    private func buildImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.prepareForAutolayout(.clear)
        imageView.setRemoteImage(imageUrl: viewData?.getImageURL() ?? "https://urbancomunicacion.com/wp-content/uploads/2017/04/Logotipos-famosos-Starbucks-Urban-comunicacion-1.png")
        self.imageView = imageView
        return imageView
    }
    
    private func setupImageView(image: UIImage) {
            self.imageView?.image = image
    }
    
    // MARK: Constraints.
    func makeConstraints(_ titleLabel: UILabel, _ imageView: UIImageView) {
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: imageSize),
            imageView.widthAnchor.constraint(equalToConstant: imageSize),
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: -UI.Margin.S_MARGIN),
            titleLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -UI.Margin.S_MARGIN)
        ])
    }
}
