//
//  LoginViewController.swift
//  Flea_Market
//
//  Created by 김수민 on 2022/03/30.
//

import UIKit

//class MainTabbarController: UITabBarController {
//
//}

class LoginViewController: UIViewController {
    
    private let logInLabel: UILabel = {
        let label = UILabel()
        label.text = "로그인"
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    private let idLabel: UILabel = {
       let label = UILabel()
        label.text = "ID :"
        return label
    }()
    
    private let idTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "아이디 입력"
        return txt
    }()
    
    private let pwLabel: UILabel = {
       let label = UILabel()
        label.text = "비밀번호 :"
        return label
    }()
    
    private let pwTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "비밀번호 입력"
        return txt
    }()
        
    private let logInButton: UIButton = {
        let button = UIButton()
//        button.heightAnchor.constraint(equalToConstant:)
//        button.widthAnchor.constraint(equalToConstant:)
        button.setTitle("LOG IN", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.backgroundColor = .systemGray
        button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)

        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        
//        let alert = UIAlertController(title: <#T##String?#>, message: <#T##String?#>, preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: <#T##String?#>, style: <#T##UIAlertAction.Style#>, handler: <#T##((UIAlertAction) -> Void)?##((UIAlertAction) -> Void)?##(UIAlertAction) -> Void#>))
//
//        present(alert, animated: true, completion: nil)
        
        
//        emailTextField.delegate = self
//        NetworkingManager.shard.postNetworking()
    }

    @objc func didTapLoginButton() {
        NetworkingManager.shard.postNetworking()
        self.navigationController?.popViewController(animated: true)
    }
    
    private func configureUI() {
        view.backgroundColor = .systemBackground
       
        view.addSubview(logInLabel)
        logInLabel.translatesAutoresizingMaskIntoConstraints = false
        logInLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        logInLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        
        view.addSubview(idLabel)
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        idLabel.topAnchor.constraint(equalTo: logInLabel.bottomAnchor, constant: 60).isActive = true
        idLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        
        view.addSubview(idTextField)
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        idTextField.topAnchor.constraint(equalTo: logInLabel.bottomAnchor, constant: 60).isActive = true
        idTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150).isActive = true
        
        view.addSubview(pwLabel)
        pwLabel.translatesAutoresizingMaskIntoConstraints = false
        pwLabel.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 30).isActive = true
        pwLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        
        view.addSubview(pwTextField)
        pwTextField.translatesAutoresizingMaskIntoConstraints = false
        pwTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 30).isActive = true
        pwTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150).isActive = true
        
        view.addSubview(logInButton)
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        logInButton.topAnchor.constraint(equalTo: pwTextField.bottomAnchor, constant: 30).isActive = true
        logInButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        print("text = \(textField.text)")
//        return true
//    }
}
