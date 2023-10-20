//
//  ViewController.swift
//  DevelopX_CodeTest
//
//  Created by Kyaw Ye Htun on 20/10/2023.
//

import UIKit

enum signInType{
    case phone
    case email
}
class LoginViewController: UIViewController {
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var lblPhoneTab: UILabel!
    @IBOutlet weak var lblEmailTab: UILabel!
    
    @IBOutlet weak var emailTabLine: UIView!
    @IBOutlet weak var phoneTabLine: UIView!
    
    @IBOutlet weak var phoneTFView: UIView!
    @IBOutlet weak var emailTFView: UIView!
    @IBOutlet weak var passwordTFView: UIView!
    
    @IBAction func clickedPhone(_ sender: Any) {
        self.changeView(.phone)
        self.view.endEditing(true)
        self.emailTFView.fadeTransition(0.5, transactionType: .fromLeft)
        self.phoneTFView.fadeTransition(0.5, transactionType: .fromLeft)
    }
    
    @IBAction func clickedEmail(_ sender: Any) {
        self.changeView(.email)
        self.view.endEditing(true)
        self.emailTFView.fadeTransition(0.5, transactionType: .fromRight)
        self.phoneTFView.fadeTransition(0.5, transactionType: .fromRight)
    }
    
    @IBAction func clickedSignIn(_ sender: Any) {
        
    }
    
    var type : signInType = .phone
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.changeView(.phone)
   
    }
    
    override func viewDidLayoutSubviews() {
        self.topView.roundCorners(.bottomRight, radius: 60)
        self.bottomView.roundCorners(.topLeft, radius: 60)
    }
 
    func changeView(_ type : signInType){
        if type == .phone{
            self.lblPhoneTab.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            self.lblEmailTab.textColor = UIColor(red: 0.451, green: 0.451, blue: 0.451, alpha: 1)
            self.emailTabLine.isHidden = true
            self.phoneTabLine.isHidden = false
            self.emailTFView.isHidden = true
            self.phoneTFView.isHidden = false
            
        }else{
            self.lblPhoneTab.textColor = UIColor(red: 0.451, green: 0.451, blue: 0.451, alpha: 1)
            self.lblEmailTab.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            self.emailTabLine.isHidden = false
            self.phoneTabLine.isHidden = true
            self.emailTFView.isHidden = false
            self.phoneTFView.isHidden = true

        }
       
    }
    
    
}


