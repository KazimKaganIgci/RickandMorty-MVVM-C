//
//  CustomCell.swift
//  TestProject
//
//  Created by ınv on 19.09.2023.
//

import UIKit

class CustomCell: UITableViewCell {

   static let identifier = "CustomCell"
    
    private let customImageView: UIImageView = {
       let customImageView = UIImageView()
        customImageView.contentMode = .scaleAspectFill
        customImageView.tintColor = .label
        //customImageView.image = UIImage(systemName: "house")
        customImageView.layer.cornerRadius = 15
        customImageView.layer.masksToBounds = true
        return customImageView
        
    }()
    
    
    
    
    private let customLabel:UILabel = {
        let label = UILabel()
        label.textColor = .label
        //label.text = "hi world"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    
    private let customDetailLabel:UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with image: UIImage, label: String, detailLabel:String) {
        self.customImageView.image = image
        self.customLabel.text = label
        self.customDetailLabel.text = detailLabel
    }
    
    func setupUI(){
        self.contentView.addSubview(customImageView)
        self.contentView.addSubview(customLabel)
        self.contentView.addSubview(customDetailLabel)

        customImageView.translatesAutoresizingMaskIntoConstraints = false
        customLabel.translatesAutoresizingMaskIntoConstraints = false
        customDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            customImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            customImageView.leadingAnchor.constraint(equalToSystemSpacingAfter: self.contentView.layoutMarginsGuide.leadingAnchor, multiplier: 1),
            customImageView.heightAnchor.constraint(equalToConstant: 90),
            customImageView.widthAnchor.constraint(equalToConstant: 90),
            
            
            customLabel.leadingAnchor.constraint(equalTo: self.customImageView.trailingAnchor, constant: 16),
            customLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 16),
            customLabel.bottomAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -4),
            
            
            customDetailLabel.leadingAnchor.constraint(equalTo: self.customImageView.trailingAnchor, constant: 16),
            customDetailLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 16),
            customDetailLabel.topAnchor.constraint(equalTo:contentView.centerYAnchor,constant: 4),
            
            
        ])
        
        
    }
    

}
