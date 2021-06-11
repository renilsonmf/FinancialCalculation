//
//  LoginCoordinator.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 11/06/21.
//

import UIKit
class LoginCoordinator: Coordinator {

    let navigationController: UINavigationController
    let setLogin: LoginType
    
    init(navigationController: UINavigationController, setLogin: LoginType){
        self.navigationController = navigationController
        self.setLogin = setLogin

    }
    
    func start() {
        self.setViewControllerLogin()
  
    }
    
    private func setViewControllerLogin(){
        let login = LoginViewController()
        self.navigationController.pushViewController(login, animated: true)
    }
}
