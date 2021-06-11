//
//  LoginViewController.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 07/06/21.
//

import UIKit

class HomeLoginViewController: UIViewController {
    
    var onLoginButton: ((_ setLogin: LoginType ) -> Void)?
    
    let homeLoginView = HomeLoginView(frame: .zero)
    
    let settingsPage = SettingsPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        settingsPage.addToViewControllerPageControl(view: view)
        setActions()
    }
    
    //MARK: Propertys Buttons
    override func loadView() {
        self.view = homeLoginView
    }
    
    //MARK: Propertys PageControl
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        settingsPage.setFramePageScroll(view: view)
    }
    
    //MARK: Actions
    private func setActions() {
        homeLoginView.onLoginButton = { setLogin in
            self.onLoginButton?(setLogin)
        }
    }
    
   
  
}




