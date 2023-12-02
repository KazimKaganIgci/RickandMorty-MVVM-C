//
//  DetailViewController.swift
//  TestProject
//
//  Created by ınv on 19.09.2023.
//

import UIKit

class DetailViewController: UIViewController {
   // private var result:Result
   // private var detailPresenter:DetailPresenter?
    var detailVM: DetailViewModel
    
    init(detailVM:DetailViewModel) {
        self.detailVM = detailVM
        super.init(nibName: nil, bundle: nil)
    }
//
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//

    private var customImageView: UIImageView = {
       let customImageView = UIImageView()
        customImageView.contentMode = .scaleAspectFill
        customImageView.tintColor = .label
        //customImageView.image = UIImage(systemName: "house")
        customImageView.layer.cornerRadius = 25
        customImageView.layer.masksToBounds = true
        return customImageView
        
    }()
    
    private let customView: UIView = {
        let myView = UIView()
        
        myView.layer.cornerRadius = 10
        myView.layer.borderColor = UIColor.black.cgColor
        myView.layer.borderWidth = 1.0
        return myView
    }()
    
    
    private let nameLabel:UILabel = {
        let label = UILabel()
        label.textColor = .label
        //label.text = "hi world"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()

    
    
    private let statusLabel:UILabel = {
        let label = UILabel()
        label.textColor = .label
        //label.text = "hi world"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.layer.cornerRadius = 25
        stackView.layer.masksToBounds = true
        //stackView.layer.borderWidth = 1
        //stackView.layer.borderColor = UIColor.gray.cgColor
        return stackView
    }()
    
    let labelStackView = UIStackView()

    private let genderLabel:UILabel = {
        let label = UILabel()
        label.textColor = .label
        //label.text = "hi world"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let locationLabel:UILabel = {
        let label = UILabel()
        label.textColor = .label
        //label.text = "hi world"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let createdLabel:UILabel = {
        let label = UILabel()
        label.textColor = .label
        //label.text = "hi world"
        label.textAlignment = .left
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(stackView)
        view.addSubview(customView)
        //detailPresenter = DetailPresenter(delegate: self, result: result)
        //detailPresenter?.getNewResults()
        self.setupUI()
        self.configration()
        
        //customView.frame = CGRect(x:10, y: 100, width: self.view.frame.width - 20, height: 700)
    }
    func configration() {
        self.nameLabel.text = detailVM.fullNameText
        self.createdLabel.text = detailVM.createdText
        self.genderLabel.text = detailVM.genderText
        self.statusLabel.text = detailVM.statusText
        self.locationLabel.text = detailVM.locationNameText
        TakeUrlImage.getUIimage(url: detailVM.imageUrl) { image in
            self.customImageView.image = image
        }
        
        
        
    }
    
    

  
    
    func setupUI() {
        stackView.axis = .vertical
        stackView.spacing = 30
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        
        
        labelStackView.axis = .vertical
        labelStackView.spacing = 20
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        
        

        
        labelStackView.addArrangedSubview(nameLabel)
        labelStackView.addArrangedSubview(statusLabel)
        labelStackView.addArrangedSubview(genderLabel)
        labelStackView.addArrangedSubview(locationLabel)
        labelStackView.addArrangedSubview(createdLabel)
        //statusLabel.isHidden = true
        

        stackView.addArrangedSubview(customImageView)
        stackView.addArrangedSubview(labelStackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            customImageView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            labelStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
        ])
    }
    
    
    
    
    
    
    
    
    

   }

