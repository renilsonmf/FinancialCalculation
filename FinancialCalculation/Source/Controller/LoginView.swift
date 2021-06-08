//
//  LoginView.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 08/06/21.
//

import UIKit

class LoginView: UIView {
   // var viewController = ViewController()
    var onLoginButtons: ((_ login: LoginType) -> Void)?
    
    let accountCreateButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.frame = .zero
        btn.backgroundColor = .mainGreen
        btn.setTitle("CRIAR CONTA", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 6
        
        return btn
    }()
    
    let loginButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.frame = .zero
        btn.backgroundColor = .mainBlack
        btn.setTitle("LOGIN", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 6
        
        
        return btn
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView() {
        setCreateAccountButton()
        setLoginButton()
    }
    
    private func setCreateAccountButton() {
       // technologyButton.addTarget(self, action: #selector(technologyActionButton), for: .touchUpInside)
       // scienceButton.addTarget(self, action: #selector(scienceActionButton), for: .touchUpInside)
        
        addSubview(accountCreateButton)
        
        NSLayoutConstraint.activate([
            accountCreateButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 616),
            accountCreateButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            accountCreateButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15),
            accountCreateButton.heightAnchor.constraint(equalToConstant: 52),
        ])
    }
    
//    @objc
//    func technologyActionButton(sender: UIButton!) {
//            onCategoryButton?(CategoryType.Technology)
//    }
//
//    @objc
//    func scienceActionButton(sender: UIButton!) {
//        onCategoryButton?(CategoryType.Science)
//    }

    private func setLoginButton() {
        addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: self.accountCreateButton.bottomAnchor, constant: 15),
            loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            loginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15),
            loginButton.heightAnchor.constraint(equalToConstant: 52),
        ])
    }
}
