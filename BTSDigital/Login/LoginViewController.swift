//
//  ViewController.swift
//  BTSDigital
//
//  Created by Medeu Pazylov on 13.04.2024.
//

import UIKit

class LoginViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let backgroundView = UIImageView(image: UIImage(named: "background"))
    backgroundView.contentMode = .scaleAspectFill
    backgroundView.frame = view.frame
    view.addSubview(backgroundView)

    setupUI()
  }

  private func setupUI() {
    view.addSubview(logoImageView)
    view.addSubview(usernameTextField)
    view.addSubview(passwordTextField)
    view.addSubview(loginButton)

    NSLayoutConstraint.activate([
      logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
      logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -160),
      logoImageView.heightAnchor.constraint(equalToConstant: 150),

      usernameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 200),
      usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
      usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
      usernameTextField.heightAnchor.constraint(equalToConstant: 56),

      passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
      passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
      passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
      passwordTextField.heightAnchor.constraint(equalToConstant: 56),

      loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
      loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
      loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
      loginButton.heightAnchor.constraint(equalToConstant: 64)
    ])

    loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
  }

  @objc private func loginButtonTapped() {
    // Add your login logic here
    print("Login button tapped")
  }

  private let logoImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "logo")
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  private let usernameTextField: CustomTextField = {
    let textField = CustomTextField()
    textField.placeholder = "Username"
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.backgroundColor = .white.withAlphaComponent(0.7)
    textField.layer.cornerRadius = 20.0
    return textField
  }()

  private let passwordTextField: CustomTextField = {
    let textField = CustomTextField()
    textField.placeholder = "Password"
    textField.isSecureTextEntry = true
    textField.backgroundColor = .white.withAlphaComponent(0.7)
    textField.layer.cornerRadius = 20.0
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()

  private let loginButton: UIButton = {
    let button = UIButton()
    button.setTitle("Login", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.setTitleColor(.gray, for: .highlighted)
    button.backgroundColor = .white.withAlphaComponent(0.4)
    button.layer.cornerRadius = 20.0
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()


}

