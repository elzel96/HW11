//
//  ViewController.swift
//  HW11
//
//  Created by Helena on 17.06.2023.
//

import UIKit

class ViewController: UIViewController {
   
    // MARK: - UI Elements
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textAlignment = .center
        label.font = UIFont(name: "GTWalsheimPro-Bold", size: 28)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var loginView: UITextField = {
        let text = UITextField()
        text.textColor = .gray
        text.textAlignment = .left
        text.placeholder = "Type your login"
        text.font = UIFont(name: "GTWalsheimPro-Thin", size: 18)
        text.setLeftIcon(UIImage(systemName: "person")!)
        text.tintColor = .gray
        text.setRightIcon(UIImage(systemName: "checkmark.circle.fill")!)
        text.layer.cornerRadius = 25
        text.backgroundColor = .white
        text.layer.shadowColor = UIColor.purple.cgColor
        text.layer.shadowOpacity = 0.5
        text.layer.shadowOffset = .zero
        text.layer.shadowRadius = 10
        text.layer.shouldRasterize = true
        text.layer.rasterizationScale = UIScreen.main.scale
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private lazy var passwordView: UITextField = {
        let text = UITextField()
        text.textColor = .gray
        text.textAlignment = .left
        text.placeholder = "Password"
        text.font = UIFont(name: "GTWalsheimPro-Thin", size: 18)
        text.setLeftIcon(UIImage(systemName: "lock")!)
        text.tintColor = .gray
        text.layer.cornerRadius = 25
        text.backgroundColor = .white
        text.layer.shadowColor = UIColor.purple.cgColor
        text.layer.shadowOpacity = 0.5
        text.layer.shadowOffset = .zero
        text.layer.shadowRadius = 10
        text.layer.shouldRasterize = true
        text.layer.rasterizationScale = UIScreen.main.scale
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .systemIndigo
        button.layer.cornerRadius = 25
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "GTWalsheimPro-Bold", size: 18)
        button.titleLabel?.textAlignment = .center
        button.layer.shadowColor = UIColor.purple.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot your password?", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "GTWalsheimPro-Thin", size: 18)
        button.titleLabel?.textAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var connectWithLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textAlignment = .center
        label.font = UIFont(name: "GTWalsheimPro-Thin", size: 18)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var lineOne: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    private lazy var lineTwo: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    private lazy var twitterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Twitter", for: .normal)
        button.backgroundColor = .systemTeal
        button.layer.cornerRadius = 23
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "GTWalsheimPro-Bold", size: 15)
        button.titleLabel?.textAlignment = .left
        button.layer.shadowColor = UIColor.systemTeal.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.setImage(UIImage(named: "twitter"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var facebookButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Facebook", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 23
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "GTWalsheimPro-Bold", size: 15)
        button.titleLabel?.textAlignment = .left
        button.layer.shadowColor = UIColor.systemTeal.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.setImage(UIImage(named: "facebook"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var accountLabel: UILabel = {
        let label = UILabel()
        label.text = "Dont have account?"
        label.textAlignment = .center
        label.font = UIFont(name: "GTWalsheimPro-Thin", size: 18)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign up", for: .normal)
        button.tintColor = .blue
        button.titleLabel?.font = UIFont(name: "GTWalsheimPro-Thin", size: 18)
        button.titleLabel?.textAlignment = .center
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Life Cycle
       
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }

       // MARK: - Setups
       
    private func setupView() {
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
    }

    private func setupHierarchy() {
        view.addSubview(loginLabel)
        view.addSubview(loginView)
        view.addSubview(passwordView)
        view.addSubview(button)
        view.addSubview(forgotPasswordButton)
        view.addSubview(connectWithLabel)
        view.addSubview(lineOne)
        view.addSubview(lineTwo)
        view.addSubview(twitterButton)
        view.addSubview(facebookButton)
        view.addSubview(stackView)
        stackView.addArrangedSubview(accountLabel)
        stackView.addArrangedSubview(signUpButton)
    }
    
    private func setupLayout() {
        let height = view.bounds.height
        let width = view.bounds.width

        NSLayoutConstraint.activate([
        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        loginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: height * 0.11),
            
        loginView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: width * 0.12),
        loginView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -width * 0.12),
        loginView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: height * 0.05),
        loginView.heightAnchor.constraint(equalToConstant: height * 0.06),

        passwordView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: width * 0.12),
        passwordView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -width * 0.12),
        passwordView.topAnchor.constraint(equalTo: loginView.bottomAnchor, constant: height * 0.02),
        passwordView.heightAnchor.constraint(equalToConstant: height * 0.06),
        
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: width * 0.12),
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -width * 0.12),
        button.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: height * 0.05),
        button.heightAnchor.constraint(equalToConstant: height * 0.06),
        
        forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        forgotPasswordButton.topAnchor.constraint(equalTo: button.bottomAnchor, constant: height * 0.015),
        
        connectWithLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        connectWithLabel.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -height * 0.3),
        
        lineOne.topAnchor.constraint(equalTo: view.bottomAnchor, constant: (-height * 0.3) + 12),
        lineOne.heightAnchor.constraint(equalToConstant: 1),
        lineOne.rightAnchor.constraint(equalTo: connectWithLabel.leftAnchor, constant: -4),
        lineOne.leftAnchor.constraint(equalTo: view.leftAnchor, constant: width * 0.09),
        
        lineTwo.topAnchor.constraint(equalTo: view.bottomAnchor, constant: (-height * 0.3) + 12),
        lineTwo.heightAnchor.constraint(equalToConstant: 1),
        lineTwo.leftAnchor.constraint(equalTo: connectWithLabel.rightAnchor, constant: 4),
        lineTwo.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -width * 0.09),
        
        twitterButton.topAnchor.constraint(equalTo: lineTwo.bottomAnchor, constant: height * 0.05),
        twitterButton.widthAnchor.constraint(equalToConstant: (width * 0.41) - 5),
        twitterButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -width * 0.09),
        twitterButton.heightAnchor.constraint(equalToConstant: height * 0.05),
        
        facebookButton.topAnchor.constraint(equalTo: lineTwo.bottomAnchor, constant: height * 0.05),
        facebookButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: width * 0.09),
        facebookButton.widthAnchor.constraint(equalToConstant: (width * 0.41) - 5),
        facebookButton.heightAnchor.constraint(equalToConstant: height * 0.05),
        
        stackView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -height * 0.1),
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

