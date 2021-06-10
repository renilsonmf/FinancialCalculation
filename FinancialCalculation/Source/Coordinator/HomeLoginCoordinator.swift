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
        let viewController = HomeLoginViewController()
        self.navigationController.isNavigationBarHidden = true
        self.navigationController.pushViewController(viewController, animated: false)
        }
        
       
    }
