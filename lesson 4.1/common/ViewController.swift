//
//  ViewController.swift
//  lesson 4.1
//
//  Created by adyl CEO on 14/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var mainImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "mainimg")
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    
    private var vectorImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "vector")
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    private var mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome Back"
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private var mainLabel2: UILabel = {
        let label = UILabel()
        label.text = "Sign in to continue"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private var mainUIView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 35
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private var labelTF1: UILabel = {
        let label = UILabel()
        label.text = "Employee Id / Email"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var labelTF2: UILabel = {
       let label = UILabel()
        label.text = "Password"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var textFieldEmail: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Enter Your Email..."
        textfield.borderStyle = .none
        textfield.layer.borderColor = UIColor.red.cgColor
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLineView = UIView()
        bottomLineView.backgroundColor = UIColor.lightGray
        bottomLineView.translatesAutoresizingMaskIntoConstraints = false
        
        textfield.addSubview(bottomLineView)
        bottomLineView.leadingAnchor.constraint(equalTo: textfield.leadingAnchor).isActive = true
        bottomLineView.trailingAnchor.constraint(equalTo: textfield.trailingAnchor).isActive = true
        bottomLineView.bottomAnchor.constraint(equalTo: textfield.bottomAnchor).isActive = true
        bottomLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true

        return textfield
    }()
    
    private var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter your Password"
        textField.borderStyle = .none
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        let bottomLineView = UIView()
        bottomLineView.backgroundColor = UIColor.lightGray
        bottomLineView.translatesAutoresizingMaskIntoConstraints = false
        
        textField.addSubview(bottomLineView)
        bottomLineView.leadingAnchor.constraint(equalTo: textField.leadingAnchor).isActive = true
        bottomLineView.trailingAnchor.constraint(equalTo: textField.trailingAnchor).isActive = true
        bottomLineView.bottomAnchor.constraint(equalTo: textField.bottomAnchor).isActive = true
        bottomLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return textField
    }()
    
    
    private var hidePasswordButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "eye"), for: .normal)
        button.tintColor = .gray
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private var forgottPasswordLabel: UILabel = {
       let label = UILabel()
        label.text = "Forgott Password?"
        label.textColor = .systemCyan
        label.font = .systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private var checkBox: UIButton = {
        let checkBox = UIButton(type: .system)
        checkBox.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        checkBox.tintColor = .black
        checkBox.frame = CGRect(x: 50, y: 50, width: 200, height: 90)
        checkBox.translatesAutoresizingMaskIntoConstraints = false
        return checkBox
    }()
   
    
    private var rememberLabel: UILabel = {
        let label = UILabel()
        label.text = "Remember Me"
        label.font = .systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.addTarget(self, action: #selector(showNextPage), for: .touchUpInside)
        let customColor = UIColor(red: 40/255, green: 85/255, blue: 174/255, alpha: 1.0)
        button.backgroundColor = customColor
        button.tintColor = .white
        button.layer.cornerRadius = 16
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var helpLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have an account? Sign Up"
        label.textColor = .black
        label.font = .systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
    //----------------------------------------------------------
    
    override func viewDidLoad() {
    super.viewDidLoad()
        GradientHelper.setupGradientBackground(for: view)
        
        setupUI()
        setupMainLabel()
        setupMainLabel2()
        setupMainView()
        setupLabelTF1()
        setupTextFieldEmail()
        setupLabelTF2()
        setupTextFieldPassword()
        setupHidePasswordButton()
        setupForgottPasswordLabel()
        setupCheckBox()
        setupRememberMe()
        setupSignInButton()
        setupHelpLabel()
        setupVectorImage()
        
        
        
    }
    
    private func setupUI() {
        view.addSubview(mainImg)
        NSLayoutConstraint.activate([
            mainImg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            mainImg.heightAnchor.constraint(equalToConstant: 256),
            mainImg.widthAnchor.constraint(equalToConstant: 350),
            mainImg.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
        ])
    }
    
    
    private func setupMainLabel() {
        view.addSubview(mainLabel)
        NSLayoutConstraint.activate([
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 349)
        ])
    }
    
    
    private func setupMainLabel2() {
        view.addSubview(mainLabel2)
        
        NSLayoutConstraint.activate([
            mainLabel2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            mainLabel2.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 15)
        ])
    }
    
    private func setupMainView() {
        view.addSubview(mainUIView)
        
        NSLayoutConstraint.activate([
            mainUIView.heightAnchor.constraint(equalToConstant: 442),
            mainUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 1),
            mainUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -1),
            mainUIView.topAnchor.constraint(equalTo: mainLabel2.bottomAnchor, constant: 8)
        ])
    }
    
    private func setupLabelTF1() {
        mainUIView.addSubview(labelTF1)
        
        NSLayoutConstraint.activate([
            labelTF1.topAnchor.constraint(equalTo: mainUIView.topAnchor, constant: 43),
            labelTF1.leadingAnchor.constraint(equalTo: mainUIView.leadingAnchor, constant: 23),
            labelTF1.trailingAnchor.constraint(equalTo: mainUIView.trailingAnchor, constant: 144)
        ])
    }
    
    private func setupTextFieldEmail() {
        mainUIView.addSubview(textFieldEmail)
        
        NSLayoutConstraint.activate([
            textFieldEmail.leadingAnchor.constraint(equalTo: mainUIView.leadingAnchor, constant: 23),
            textFieldEmail.trailingAnchor.constraint(equalTo: mainUIView.trailingAnchor, constant: -23),
            textFieldEmail.heightAnchor.constraint(equalToConstant: 50),
            textFieldEmail.topAnchor.constraint(equalTo: labelTF1.bottomAnchor, constant: 1)
        ])
    }
    
    private func setupLabelTF2() {
        mainUIView.addSubview(labelTF2)
        
        NSLayoutConstraint.activate([
            labelTF2.topAnchor.constraint(equalTo: mainUIView.topAnchor, constant: 140),
            labelTF2.leadingAnchor.constraint(equalTo: mainUIView.leadingAnchor, constant: 23),
            labelTF2.trailingAnchor.constraint(equalTo: mainUIView.trailingAnchor, constant: -283)
        ])
    }
    
    private func setupTextFieldPassword() {
        mainUIView.addSubview(textFieldPassword)
        
        NSLayoutConstraint.activate([
            textFieldPassword.leadingAnchor.constraint(equalTo: mainUIView.leadingAnchor, constant: 23),
            textFieldPassword.trailingAnchor.constraint(equalTo: mainUIView.trailingAnchor, constant: -23),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 50),
            textFieldPassword.topAnchor.constraint(equalTo: labelTF2.bottomAnchor, constant: 1)
        ])
    }
    
    private func setupHidePasswordButton() {
        textFieldPassword.addSubview(hidePasswordButton)
        
        NSLayoutConstraint.activate([
            hidePasswordButton.trailingAnchor.constraint(equalTo: textFieldPassword.trailingAnchor, constant: 0),
            hidePasswordButton.centerYAnchor.constraint(equalTo: textFieldPassword.centerYAnchor)
        ])
    }
    
    
    private func setupForgottPasswordLabel() {
        mainUIView.addSubview(forgottPasswordLabel)
        
        NSLayoutConstraint.activate([
            forgottPasswordLabel.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 10),
            forgottPasswordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22)
        ])
    }
    
    
    private func setupCheckBox() {
        mainUIView.addSubview(checkBox)
        
        NSLayoutConstraint.activate([
            checkBox.topAnchor.constraint(equalTo: mainUIView.topAnchor, constant: 227),
            checkBox.leadingAnchor.constraint(equalTo: mainUIView.leadingAnchor, constant: 23)
        ])
    }
    
    private func setupRememberMe() {
        mainUIView.addSubview(rememberLabel)
        
        NSLayoutConstraint.activate([
            rememberLabel.leadingAnchor.constraint(equalTo: checkBox.trailingAnchor, constant: 10),
            rememberLabel.topAnchor.constraint(equalTo: mainUIView.topAnchor, constant: 228)
        ])
    }
    
    private func setupSignInButton() {
        mainUIView.addSubview(signInButton)
        
        NSLayoutConstraint.activate([
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.topAnchor.constraint(equalTo: rememberLabel.bottomAnchor, constant: 35),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
            signInButton.widthAnchor.constraint(equalToConstant: 168)
        ])
    }
    
    
    private func setupVectorImage() {
        mainUIView.addSubview(vectorImage)
        
        NSLayoutConstraint.activate([
            vectorImage.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: -10)
        ])
    }
    
    private func setupHelpLabel() {
        vectorImage.addSubview(helpLabel)
        
        NSLayoutConstraint.activate([
            helpLabel.topAnchor.constraint(equalTo: vectorImage.topAnchor, constant: 31),
            helpLabel.leadingAnchor.constraint(equalTo: vectorImage.leadingAnchor, constant: 19)
        ])
    }

    
    @objc func showNextPage(_ sender: UIButton) {
        var Navigate = true

        if textFieldEmail.text?.isEmpty ?? true {
            textFieldEmail.layer.borderColor = UIColor.red.cgColor
            textFieldEmail.layer.borderWidth = 1
            Navigate = false
        }

        if textFieldPassword.text?.isEmpty ?? true {
            textFieldPassword.layer.borderColor = UIColor.red.cgColor
            textFieldPassword.layer.borderWidth = 1
            Navigate = false
        }

        if  Navigate {
            let vc = SecondViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
    


