//
//  ProfileViewController.swift
//  recipeApp
//
//  Created by Maggie Williams on 11/7/19.
//  Copyright © 2019 CMU. All rights reserved.
//
import UIKit
import Foundation
import CoreData

class ProfileViewController: UIViewController, UITextFieldDelegate {
    
    var user: NSManagedObject?
    var viewModel = ProfileViewModel()
    
    @IBOutlet var username: UILabel!
    @IBOutlet var cuisine: UILabel!
    @IBOutlet var restrictions: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        viewModel.resetData()
        user = viewModel.fetchUser("User")
        print("")
        print("is it saved")
        print(user!.value(forKey: "first_name")!)
        print(user!.value(forKey: "last_name")!)
        print(user!.value(forKey: "email")!)
        print(user!.value(forKey: "preferences")!)
        print(user!.value(forKey: "dietary_restrictions")!)
//        print(user!.value(forKey: "saved_recipes"))
        loadDetails()
    }
    
    func loadDetails() {
        print("user is")
        print(user!)
        self.username.text = "Hi, \(user!.value(forKey: "first_name")!)!"
        self.cuisine.text = "\(user!.value(forKey: "preferences")!)"
        self.restrictions.text = "\(user!.value(forKey: "dietary_restrictions")!)"
    }
    
}