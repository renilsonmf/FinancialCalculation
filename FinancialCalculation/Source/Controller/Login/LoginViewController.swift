//
//  LoginViewController.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 11/06/21.
//

import UIKit
class LoginViewController: UIViewController {
    
    //MARK: Propertys
    var loginView = LoginView(frame: .zero)
    
    override func viewDidLoad() {
        title = "Tela de login"
    }
    
    override func loadView() {
        self.view = loginView
        
    }
}
