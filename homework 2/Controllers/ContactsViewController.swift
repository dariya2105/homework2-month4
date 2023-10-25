//
//  ContactsViewController.swift
//  homework 2
//
//  Created by User on 25/10/23.
//

import UIKit

class ContactsViewController: UIViewController {
    
    private let logoLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "My Contacts"
        view.font = .systemFont(ofSize: 16, weight: .bold)
        view.textColor = .black
        return view
    }()
    
    private let contactsTableView = UITableView()
    private var contacts: [Contact] = []
    
        override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)

            initUI()
    }
    
    private func initUI() {
        view.addSubview(logoLbl)
        setupConstraintsForLogoLbl()
        
        view.addSubview(contactsTableView)
        setupConstraintsForContactsTableView()
        
        setData()
    }
    
    private func setupConstraintsForLogoLbl() {
        if UIScreen.main.nativeBounds.height <= 2340 { // iPhone SE
            logoLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 26).isActive = true
        } else {
            logoLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 55).isActive = true
        }
        logoLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setupConstraintsForContactsTableView() {
        contactsTableView.translatesAutoresizingMaskIntoConstraints = false
        contactsTableView.topAnchor.constraint(equalTo: logoLbl.bottomAnchor, constant: 12).isActive = true
        contactsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contactsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        contactsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        contactsTableView.dataSource = self
        contactsTableView.delegate = self
    }
}

extension ContactsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")

        
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.detailTextLabel?.text = contacts[(indexPath.row)].phoneNumber
        cell.imageView?.image = UIImage(named: contacts[indexPath.row].imageContact)
        cell.detailTextLabel?.textColor = UIColor.gray
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        return cell
    }

    
    private func setData() {
        contacts = [
            Contact(imageContact: "cat1", name: "Lubimyi zhanm", phoneNumber: "0(771)-007-285"),
            Contact(imageContact: "cat2", name: "Adelya Mochalka", phoneNumber: "+996(998)-300-670"),
            Contact(imageContact: "cat3", name: "Aizhan Chernyi niger", phoneNumber: "+996(556)-450-120"),
            Contact(imageContact: "cat4", name: "Dastan dd", phoneNumber: "0(551)-306-050"),
            Contact(imageContact: "cat5", name: "Kraska dlya volos", phoneNumber: "+996(770)-427-912"),
            Contact(imageContact: "cat6", name: "Elitnaya 999", phoneNumber: "+996(557)-967-099"),
            Contact(imageContact: "cat7", name: "Altuha", phoneNumber: "0(555)-655-001"),
            Contact(imageContact: "cat8", name: "Iphone tualet", phoneNumber: "+996(554)-215-773"),
            Contact(imageContact: "cat9", name: "Otdai naushniki", phoneNumber: "+996(550)-100-027"),
            Contact(imageContact: "dwyane johnson", name: "Halyava cringe", phoneNumber: "+996(707)-844-411")
        ]
    }
    
}

//class RoundedImageTableViewCell: UITableViewCell {
//    let roundedImageView = UIImageView()
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        contentView.addSubview(roundedImageView)
//
//        // Установка ограничений для imageView
//        roundedImageView.translatesAutoresizingMaskIntoConstraints = false
//        roundedImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
//        roundedImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
//        roundedImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
//        roundedImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//
//        // Настройка внешнего вида imageView
//        roundedImageView.layer.cornerRadius = 25
//        roundedImageView.clipsToBounds = true
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
