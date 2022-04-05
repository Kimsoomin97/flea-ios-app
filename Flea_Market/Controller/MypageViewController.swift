//
//  MypageViewController.swift
//  Flea_Market
//
//  Created by 김수민 on 2022/04/05.
//


import UIKit

class myPageViewController: UIViewController {
    
    private let myPageViewLabel: UILabel = {
        let label = UILabel()
        label.text = "My Page"
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    private let idLabel: UILabel = {
       let label = UILabel()
        label.text = "ID :"
        return label
    }()
    
    private let idViewLabel: UILabel = {
       let label = UILabel()
        label.text = "사용자 아이디"
        return label
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
    
    private let confiPWTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "비밀번호 확인"
        return txt
    }()
    
    private let emailLabel: UILabel = {
       let label = UILabel()
        label.text = "E-mail :"
        return label
    }()
    
    let emailTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "e-mail 수정"
        return txt
    }()
    
    private let phoneLabel: UILabel = {
       let label = UILabel()
        label.text = "휴대폰 번호 :"
        return label
    }()
    
    private let phoneTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "휴대폰 번호 수정"
        return txt
    }()
    
    private let nicknameLabel: UILabel = {
       let label = UILabel()
        label.text = "별명 :"
        return label
    }()
    
    private let nicknameTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "별명 수정"
        return txt
    }()
    
    private let addressLabel: UILabel = {
       let label = UILabel()
        label.text = "주소 :"
        return label
    }()
    
    private let addressTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "주소 수정"
        return txt
    }()
    
    private let modifyButton: UIButton = {
        let button = UIButton()
//        button.heightAnchor.constraint(equalToConstant:)
//        button.widthAnchor.constraint(equalToConstant:)
        button.setTitle("수정하기", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.backgroundColor = .systemGray
        button.addTarget(self, action: #selector(didTapModifyButton), for: .touchUpInside)

        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
//        emailTextField.delegate = self
//        NetworkingManager.shard.postNetworking()
    }
    
    @objc func didTapModifyButton() {
        NetworkingManager.shard.postNetworking()
        self.navigationController?.popViewController(animated: true)
    }
    
    private func configureUI() {
        view.backgroundColor = .systemBackground
       
        view.addSubview(myPageViewLabel)
        myPageViewLabel.translatesAutoresizingMaskIntoConstraints = false
        myPageViewLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        myPageViewLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        
        view.addSubview(idLabel)
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        idLabel.topAnchor.constraint(equalTo: myPageViewLabel.bottomAnchor, constant: 60).isActive = true
        idLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        
        view.addSubview(idViewLabel)
        idViewLabel.translatesAutoresizingMaskIntoConstraints = false
        idViewLabel.topAnchor.constraint(equalTo: registrationLabel.bottomAnchor, constant: 60).isActive = true
        idViewLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150).isActive = true
        
        view.addSubview(pwLabel)
        pwLabel.translatesAutoresizingMaskIntoConstraints = false
        pwLabel.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 30).isActive = true
        pwLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        
        view.addSubview(pwTextField)
        pwTextField.translatesAutoresizingMaskIntoConstraints = false
        pwTextField.topAnchor.constraint(equalTo: idViewLabel.bottomAnchor, constant: 30).isActive = true
        pwTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150).isActive = true
        
        view.addSubview(confiPWTextField)
        confiPWTextField.translatesAutoresizingMaskIntoConstraints = false
        confiPWTextField.topAnchor.constraint(equalTo: pwTextField.bottomAnchor, constant: 10).isActive = true
        confiPWTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150).isActive = true
        
        view.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.topAnchor.constraint(equalTo: confiPWTextField.bottomAnchor, constant: 30).isActive = true
        emailLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        
        view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: confiPWTextField.bottomAnchor, constant: 30).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150).isActive = true
        
        view.addSubview(phoneLabel)
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 30).isActive = true
        phoneLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        
        view.addSubview(phoneTextField)
        phoneTextField.translatesAutoresizingMaskIntoConstraints = false
        phoneTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30).isActive = true
        phoneTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150).isActive = true
        
        view.addSubview(nicknameLabel)
        nicknameLabel.translatesAutoresizingMaskIntoConstraints = false
        nicknameLabel.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 30).isActive = true
        nicknameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        
        view.addSubview(nicknameTextField)
        nicknameTextField.translatesAutoresizingMaskIntoConstraints = false
        nicknameTextField.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 30).isActive = true
        nicknameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150).isActive = true
        
        view.addSubview(addressLabel)
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        addressLabel.topAnchor.constraint(equalTo: nicknameLabel.bottomAnchor, constant: 30).isActive = true
        addressLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        
        view.addSubview(addressTextField)
        addressTextField.translatesAutoresizingMaskIntoConstraints = false
        addressTextField.topAnchor.constraint(equalTo: nicknameTextField.bottomAnchor, constant: 30).isActive = true
        addressTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150).isActive = true
        
        
        view.addSubview(modifyButton)
        modifyButton.translatesAutoresizingMaskIntoConstraints = false
        modifyButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        modifyButton.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 30).isActive = true
        modifyButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        modifyButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("text = \(textField.text)")
        return true
    }
}

//알림창은 UIAlertController, UIAlertAction
//textField delegate
