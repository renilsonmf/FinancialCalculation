//
//  HomeLoginCoordinator.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 10/06/21.
//

import UIKit

class HomeLoginCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeLoginViewController = HomeLoginViewController()
        
        homeLoginViewController.onLoginButton = { setLogin in
            let coordinator = CreateAccountCoordinator(navigationController: self.navigationController, setLogin: setLogin)
            coordinator.start()
            
        }
        self.navigationController.pushViewController(homeLoginViewController, animated: true)
    }
    
        
       
    }
