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
        
    }
    
    func setViewCreateAccount(){
        self.title = "teste"
    }
    
    override func loadView() {
        self.view = createAccountView
    }
}
