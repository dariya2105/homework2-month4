//
//  ViewController.swift
//  homework 2
//
//  Created by User on 25/10/23.
//

import UIKit

class RegistrationController: UIViewController {
    
    private let loginLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Login"
        view.textColor = .black
        view.font = .systemFont(ofSize: 18, weight: .bold)
        return view
    }()
    
    private let userIconImg: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "User")
        return view
    }()
    
    private let welcomeBackLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Welcome back , Rohit thakur"
        view.textColor = .gray
        view.font = .systemFont(ofSize: 14, weight: .regular)
        return view
    }()
    
    private let drawKitIllustration: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "DrawKit Illustration")
        return view
    }()
    
    private let enterMobileNumberLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Enter Your Mobile Number"
        view.textColor = UIColor(red: 0.949, green: 0.475, blue: 0.42, alpha: 1)
        view.font = .systemFont(ofSize: 17, weight: .heavy)
        return view
    }()
    
    private let numberTF: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 13, weight: .regular)
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    let placeholderAttributes: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 13, weight: .regular),
        .foregroundColor: UIColor.gray
    ]
    
    private let errorLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        //view.text = "Phone number entered incorrectly"
        view.font = .systemFont(ofSize: 13, weight: .regular)
        view.textColor = .red
        return view
    }()
    
    private let changeNumberBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.setTitle("Change Number ?", for: .normal)
        view.setTitleColor(UIColor.gray, for: .normal)
        let customFont = UIFont.systemFont(ofSize: 12, weight: .regular)
        view.titleLabel?.font = customFont
        return view
    }()
    
    private let loginBtn: UIButton = {
        let view  = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Login", for: .normal)
        view.backgroundColor = UIColor(red: 0.949, green: 0.475, blue: 0.42, alpha: 1)
        view.setTitleColor(UIColor.white, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.layer.cornerRadius = 10
        return view
    }()
    
    private let googleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    private let googleImg: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "google icon")
        return view
    }()
    
    private let googleBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Google", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.backgroundColor = .clear
        view.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return view
    }()
    
    private let viewSignUp: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    private let dontHaveAnAccountLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "You Don’t have an account ?"
        view.textColor = .gray
        view.font = .systemFont(ofSize: 12, weight: .light)
        return view
    }()
    
    private let signUpBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.setTitle("Sign Up", for: .normal)
        view.setTitleColor(UIColor.gray, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .heavy)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        
        initUI()
        
    }
    
    private func initUI() {
        view.addSubview(loginLbl)
        setupConstraintsForLoginLbl()
        
        view.addSubview(userIconImg)
        setupConstraintsForUserIconImg()
        
        view.addSubview(welcomeBackLbl)
        setupConstraintsForWelcomeBackLbl()
        
        view.addSubview(drawKitIllustration)
        setupConstraintsForDrawKitIllustration()
        
        view.addSubview(enterMobileNumberLbl)
        setupConstraintsForEnterMobileNumberLbl()
        
        view.addSubview(numberTF)
        setupConstraintsForNumberTF()
        addPrefixToTextField()
        
        view.addSubview(errorLbl)
        setupConstraintsForErrorLbl()
        
        view.addSubview(changeNumberBtn)
        setupConstraintsForChangeNumberBtn()
        
        view.addSubview(loginBtn)
        setupConstraintsForLoginBtn()
        
        view.addSubview(viewSignUp)
        setupConstraintsForViewSignUp()
        
        view.addSubview(googleView)
        setupConstraintsForGoogleView()
        
        googleView.addSubview(googleImg)
        setupConstraintsForGoogleImg()
        
        googleView.addSubview(googleBtn)
        setupConstraintsForGoogleBtn()
        
        viewSignUp.addSubview(dontHaveAnAccountLbl)
        setupConstraintsForDontHaveAnAccountLbl()
        
        viewSignUp.addSubview(signUpBtn)
        setupConstraintsForSignUpBtn()
        
    }
    
    private func setupConstraintsForLoginLbl() {
        if UIScreen.main.nativeBounds.height <= 2340 { // iPhone SE
            loginLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 22).isActive = true
        } else {
            loginLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 62).isActive = true
        }
        loginLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
    }
    
    private func setupConstraintsForUserIconImg() {
        if UIScreen.main.nativeBounds.height <= 2340 { // iPhone SE
            userIconImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 22).isActive = true
        } else {
            userIconImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 62).isActive = true
        }
        userIconImg.leadingAnchor.constraint(equalTo: loginLbl.trailingAnchor, constant: 4).isActive = true
    }
    
    private func setupConstraintsForWelcomeBackLbl() {
        welcomeBackLbl.topAnchor.constraint(equalTo: loginLbl.bottomAnchor, constant: 3).isActive = true
        welcomeBackLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
    }
    
    private func setupConstraintsForDrawKitIllustration() {
        drawKitIllustration.topAnchor.constraint(equalTo: welcomeBackLbl.bottomAnchor, constant: 49).isActive = true
        drawKitIllustration.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setupConstraintsForEnterMobileNumberLbl() {
        enterMobileNumberLbl.topAnchor.constraint(equalTo: drawKitIllustration.bottomAnchor, constant: 15).isActive = true
        enterMobileNumberLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setupConstraintsForNumberTF() {
        numberTF.topAnchor.constraint(equalTo: enterMobileNumberLbl.bottomAnchor, constant: 30).isActive = true
        numberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        numberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        numberTF.heightAnchor.constraint(equalToConstant: 42).isActive = true
        
        numberTF.attributedPlaceholder = NSAttributedString(string: "Enter number", attributes: placeholderAttributes)
    }
    private func addPrefixToTextField() {
        let prefixLabel = UILabel()
        prefixLabel.text = "  +996  "
        prefixLabel.textColor = .black
        prefixLabel.font = .systemFont(ofSize: 13, weight: .regular)
        prefixLabel.sizeToFit()
        
        numberTF.leftView = prefixLabel
        numberTF.leftViewMode = .always
    }
    
    private func setupConstraintsForErrorLbl() {
        errorLbl.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 10).isActive = true
        errorLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
    }
    
    private func setupConstraintsForChangeNumberBtn() {
        changeNumberBtn.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 10).isActive = true
        changeNumberBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -38).isActive = true
        changeNumberBtn.heightAnchor.constraint(equalToConstant: 18).isActive = true
    }
    
    private func setupConstraintsForLoginBtn() {
        loginBtn.topAnchor.constraint(equalTo: changeNumberBtn.bottomAnchor, constant: 34).isActive = true
        loginBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        loginBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 42).isActive = true
        
        loginBtn.addTarget(self, action: #selector(loginBtnTapped), for: .touchUpInside)
    }
    @objc func loginBtnTapped(_ sender: UIButton) {
        var shouldNavigate = true
        
        if let phoneNumber = numberTF.text {
            let isNumeric = phoneNumber.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
            
            if numberTF.text?.isEmpty ?? true {
                numberTF.layer.borderColor = UIColor.red.cgColor
                numberTF.layer.borderWidth = 0.4
                numberTF.placeholder = "Phone Number is required"
                shouldNavigate = false
            }
            else if !isNumeric || phoneNumber.count != 9 {
                errorLbl.text = "Phone number entered incorrectly"
                numberTF.layer.borderColor = UIColor.red.cgColor
                numberTF.layer.borderWidth = 0.4
                shouldNavigate = false
            } else {
                errorLbl.text = ""
                numberTF.layer.borderColor = UIColor.red.cgColor
            }
            if shouldNavigate {
                let vc = ContactsViewController()
                navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
    
    private func setupConstraintsForGoogleView() {
        if UIScreen.main.nativeBounds.height <= 2340 { // iPhone SE
            googleView.bottomAnchor.constraint(equalTo: viewSignUp.topAnchor, constant: -20).isActive = true
        } else {
            googleView.bottomAnchor.constraint(equalTo: viewSignUp.topAnchor, constant: -88).isActive = true
        }
        googleView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        googleView.heightAnchor.constraint(equalToConstant: 22).isActive = true
        googleView.widthAnchor.constraint(equalToConstant: 62).isActive = true
    }
    
    private func setupConstraintsForGoogleImg() {
        googleImg.topAnchor.constraint(equalTo: googleView.topAnchor).isActive = true
        googleImg.leadingAnchor.constraint(equalTo: googleView.leadingAnchor).isActive = true
        googleImg.heightAnchor.constraint(equalToConstant: 22).isActive = true
        googleImg.widthAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    private func setupConstraintsForGoogleBtn() {
        googleBtn.centerYAnchor.constraint(equalTo: googleView.centerYAnchor).isActive = true
        googleBtn.leadingAnchor.constraint(equalTo: googleImg.trailingAnchor, constant: 10).isActive = true
    }

    
    private func setupConstraintsForViewSignUp() {
        
        if UIScreen.main.nativeBounds.height <= 2340 { // iPhone SE
            viewSignUp.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        } else {
            viewSignUp.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -64).isActive = true
        }
        viewSignUp.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewSignUp.heightAnchor.constraint(equalToConstant: 18).isActive = true
        viewSignUp.widthAnchor.constraint(equalToConstant: 220).isActive = true
    }
    
    private func setupConstraintsForDontHaveAnAccountLbl() {
        dontHaveAnAccountLbl.leadingAnchor.constraint(equalTo: viewSignUp.leadingAnchor).isActive = true
        dontHaveAnAccountLbl.topAnchor.constraint(equalTo: viewSignUp.topAnchor).isActive = true
    }
    
    private func setupConstraintsForSignUpBtn() {
        signUpBtn.leadingAnchor.constraint(equalTo: dontHaveAnAccountLbl.trailingAnchor, constant: 2).isActive = true
        signUpBtn.topAnchor.constraint(equalTo: viewSignUp.topAnchor).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 14).isActive = true
    }
}
