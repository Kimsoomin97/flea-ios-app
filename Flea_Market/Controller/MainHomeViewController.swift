//
//  MainHomeViewController.swift
//  Flea_Market
//
//  Created by 김수민 on 2022/03/30.
//

import UIKit

class MainHomeViewController: UIViewController {
    
    private let registButton: UIButton = {
        let button = UIButton()
//        button.setTitle("회원가입 폼 이동", for: .normal)
//        button.setTitleColor(.label, for: .normal)
        button.addTarget(self, action: #selector(didTapRegistButton), for: .touchUpInside)
        button.setBackgroundImage(UIImage(named: "regist"), for: .normal)
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
//        button.setTitle("로그인 폼 이동", for: .normal)
//        button.setTitleColor(.label, for: .normal)
        
        button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        button.setBackgroundImage(UIImage(named: "login"), for: .normal)
        return button
        
    }()
    
//    private let imageView: UIImageView = {
//        let imageVw = UIImageView()
//        imageVw.image = UIImage(named: "image")
//        imageVw.contentMode = .scaleAspectFit
//        imageVw.layer.masksToBounds = true
//        return imageVw
//    }()
    
//    private let moveButton: UIButton = {
//        let button = UIButton()
//        button.setTitle("로그인", for: .normal)
//        button.setTitleColor(.label, for: .normal)
//        button.addTarget(self, action: #selector(didTapMoveButton), for: .touchUpInside)
//        button.setBackgroundImage(UIImage(named: "image"), for: .normal)
//        return button
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()

    }
    
    @objc func didTapRegistButton() {
        let vc = RegistrationViewController()
//        self.present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc func didTapLoginButton() {
        let vc = LoginViewController()
//        self.present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    private func configureUI() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(registButton)
        registButton.translatesAutoresizingMaskIntoConstraints = false
//        registButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        registButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        registButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
        registButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70).isActive = true
        
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
//        moveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
        loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70).isActive = true
        
//        view.addSubview(imageView)
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        imageView.topAnchor.constraint(equalTo: moveButton.bottomAnchor, constant: 10).isActive = true
    }
}
