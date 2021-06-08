//
//  LoginViewController.swift
//  FinancialCalculation
//
//  Created by Renilson Moreira Ferreira on 07/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 4
        pageControl.pageIndicatorTintColor = .gray
        pageControl.currentPageIndicatorTintColor = .systemGreen
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainBackground
        pageControl.addTarget(self, action: #selector(pageControlDidChange(_:)), for: .valueChanged)
        scrollView.backgroundColor = .systemFill
        view.addSubview(scrollView)
        view.addSubview(pageControl)
        buttons()
        
    }
    @objc private func pageControlDidChange(_ sender: UIPageControl){
        let current = sender.currentPage
        scrollView.setContentOffset(CGPoint(x: CGFloat(current) * view.frame.size.width, y: 0), animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pageControl.frame = CGRect(x: 0, y: view.frame.size.height-450, width: view.frame.size.width, height: 70)
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 460)
        
        if scrollView.subviews.count == 2 {
            configureScrollView()
        }
    }
    
    private func configureScrollView(){
        scrollView.contentSize = CGSize(width: view.frame.size.width*4, height: scrollView.frame.size.height)
        scrollView.isPagingEnabled = true
        pageControl.isSelected = true
       
        
        let imagePage: [UIImage] = [.descomplicou, .planejamento, .ficaDica, .naPalmaDaMao]
        
        for i in 0..<4{
            let page = UIImageView(frame: CGRect(x: CGFloat(i) * view.frame.size.width, y: 0, width: view.frame.size.width, height: scrollView.frame.size.height))
            
            page.image = imagePage[i]
            scrollView.addSubview(page)
        }
    }
    func buttons() {
        let buttonCreateAccount = UIButton()
        buttonCreateAccount.frame = CGRect(x: view.frame.size.width-372, y: 616, width: 343, height: 52)
        buttonCreateAccount.backgroundColor = .mainGreen
        buttonCreateAccount.setTitle("CRIAR CONTA", for: .normal)
        buttonCreateAccount.layer.cornerRadius = 6
        buttonCreateAccount.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(buttonCreateAccount)
        
        
        let buttonLogin = UIButton()
        buttonLogin.frame = CGRect(x: view.frame.size.width-372, y: 683, width: 343, height: 52)
        buttonLogin.backgroundColor = .mainBlack
        buttonLogin.setTitle("LOGIN", for: .normal)
        buttonLogin.layer.cornerRadius = 6
        buttonLogin.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(buttonLogin)
        
    }
    
    @objc func buttonAction(sender: UIButton!) {
       print("Button tapped")
    }
  
    
}//nao apagar essa chave





