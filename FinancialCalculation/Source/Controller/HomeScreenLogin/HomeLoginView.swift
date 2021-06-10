//
//  HomeLoginView.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 09/06/21.
//

import UIKit

class HomeLoginView: UIView {
        
    //MARK: Actions
    var onLoginButton: ((_ login: LoginType) -> Void)?
    
    //MARK: BUTTONS
    let buttonCreateAccount: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = .zero
        button.layer.cornerRadius = 6
        button.backgroundColor = .mainGreen
        button.setTitle("CRIAR CONTA", for: .normal)
        button.tintColor = .mainBackground
        return button
    }()
    
    let buttonLogin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = .zero
        button.layer.cornerRadius = 6
        button.backgroundColor = .mainBlack
        button.setTitle("Login", for: .normal)
        button.tintColor = .mainBackground
        return button
    }()
    
    //MARK: Constraints
     func setButtonCreateAccount(){
        buttonCreateAccount.addTarget(self, action: #selector(createAccountActionButton), for: .touchUpInside)
        buttonLogin.addTarget(self, action: #selector(loginActionButton), for: .touchUpInside)
        
        addSubview(buttonCreateAccount)
        NSLayoutConstraint.activate([
            buttonCreateAccount.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 600),
            buttonCreateAccount.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            buttonCreateAccount.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
            buttonCreateAccount.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
    //MARK: Actions
    @objc
    func createAccountActionButton(sender: UIButton!) {
        onLoginButton?(LoginType.CreateAccount)
        print("Button create account acionado")
    }
    
    @objc
    func loginActionButton(sender: UIButton!) {
        onLoginButton?(LoginType.Login)
        print("Button login acionado")

    }
    
     func setButtonLogin() {
        addSubview(buttonLogin)
        NSLayoutConstraint.activate([
            buttonLogin.topAnchor.constraint(equalTo: self.buttonCreateAccount.bottomAnchor, constant: 15),
            buttonLogin.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            buttonLogin.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
            buttonLogin.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
    //MARK: Cria e seta os buttons
    override init(frame: CGRect) {
        super.init(frame: frame)
        createViewButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createViewButton(){
        self.backgroundColor = .mainGreen
        setButtonCreateAccount()
        setButtonLogin()

    }
    


}
