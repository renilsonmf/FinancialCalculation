//
//  CreateAccountView.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 10/06/21.
//

import UIKit
class CreateAccountView: UIView {
    
    var title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .mainBlack
        
        return label
    }()

    var subTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .mainBlack
        
        return label
    }()
    
    private func setTitle() {
        addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
            title.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            title.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
        ])
    }
    
    private func setSubTitle() {
        addSubview(subTitle)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: self.title.bottomAnchor, constant: 12),
            subTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            subTitle.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
        ])
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView() {
        self.backgroundColor = .mainGreen
        setTitle()
        setSubTitle()
    }
    
}









