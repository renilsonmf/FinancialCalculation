//
//  CreateAccountCoordinator.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 10/06/21.
//

import UIKit
class CreateAccountCoordinator: Coordinator {

    let navigationController: UINavigationController
    let setLogin: LoginType
    
    init(navigationController: UINavigationController, setLogin: LoginType){
        self.navigationController = navigationController
        self.setLogin = setLogin
    }
    
    func start() {
        self.setViewControllerCreateAccount()
    }
    
    private func setViewControllerCreateAccount(){
        let createAccount = CreateAccountViewController()
        self.navigationController.pushViewController(createAccount, animated: true)
    }
}
