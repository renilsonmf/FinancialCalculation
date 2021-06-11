//
//  CreateAccountViewController.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 10/06/21.
//

import UIKit
class CreateAccountViewController: UIViewController {
    
    //MARK: Propertys
    var createAccountView = CreateAccountView(frame: .zero)
    
    override func viewDidLoad() {
        self.view.backgroundColor = .mainBackground
        self.navigationItem.backBarButtonItem?.title = "Abra sua conta"
        title = "Abra sua conta"
    }
    
    override func loadView() {
        self.view = createAccountView
        
    }
}


