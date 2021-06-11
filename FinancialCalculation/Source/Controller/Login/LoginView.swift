//
//  LoginView.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 11/06/21.
//

import UIKit
class LoginView: UIView {

    
    //MARK: TextFields
    lazy var textFieldUsuario:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "usuario"
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.returnKeyType = UIReturnKeyType.default
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        return textField
    }()
    lazy var textFieldSenha:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "senha"
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.isSecureTextEntry = true
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        return textField
    }()
    
    //MARK: Constants TextFields
    func setTextFieldUsuario() {
       addSubview(textFieldUsuario)
       NSLayoutConstraint.activate([
        textFieldUsuario.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 12),
        textFieldUsuario.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
        textFieldUsuario.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
        textFieldUsuario.heightAnchor.constraint(equalToConstant: 60)
       ])
   }
    func setTextFieldSenha() {
       addSubview(textFieldSenha)
       NSLayoutConstraint.activate([
        textFieldSenha.topAnchor.constraint(equalTo: self.textFieldUsuario.bottomAnchor, constant: 0),
        textFieldSenha.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
        textFieldSenha.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
        textFieldSenha.heightAnchor.constraint(equalToConstant: 60)
       ])
   }
    
    //MARK: Buttons
    let buttonLogin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = .zero
        button.layer.cornerRadius = 6
        button.backgroundColor = .mainBlack
        button.setTitle("LOGIN", for: .normal)
        return button
    }()
    let buttonForgotPassword: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = .zero
        button.setTitleColor(.mainBlack, for: .normal)
        button.contentHorizontalAlignment = .left
        button.setTitle("esqueci minha senha", for: .normal)
        return button
    }()
    
    //MARK: Constants Buttons
    func setButtonLogin(){
       buttonLogin.addTarget(self, action: #selector(loginActionButton), for: .touchUpInside)
       
       addSubview(buttonLogin)
       NSLayoutConstraint.activate([
        buttonLogin.topAnchor.constraint(equalTo: self.textFieldSenha.bottomAnchor, constant: 20),
        buttonLogin.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
        buttonLogin.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
        buttonLogin.heightAnchor.constraint(equalToConstant: 52)
       ])
   }
    func setButtonForgotPassword(){
        buttonForgotPassword.addTarget(self, action: #selector(forgotPasswordActionButton), for: .touchUpInside)
       
       addSubview(buttonForgotPassword)
       NSLayoutConstraint.activate([
        buttonForgotPassword.topAnchor.constraint(equalTo: self.buttonLogin.bottomAnchor, constant: 15),
        buttonForgotPassword.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
        buttonForgotPassword.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
        buttonForgotPassword.heightAnchor.constraint(equalToConstant: 52)
       ])
   }
    
    //MARK: Actions Buttons
    
    @objc
    func loginActionButton (sender: UIButton!) {
        print("Tentando logar ")
    }
    
    @objc
    func forgotPasswordActionButton (sender: UIButton!) {
        print("Usuario esqueceu a senha")
        //print(textFieldUsuario.text!)
    }
    
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView() {
        self.backgroundColor = .mainBackground
        setTextFieldUsuario()
        setTextFieldSenha()
        setButtonLogin()
        setButtonForgotPassword()
    }
    
}
