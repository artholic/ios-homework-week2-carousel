//
//  LoginViewController.swift
//  week2-Carousel
//
//  Created by Erin Yang on 9/14/14.
//  Copyright (c) 2014 yahoo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIAlertViewDelegate{
    
    
    @IBOutlet weak var login: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet var loginView: UITapGestureRecognizer!
    @IBOutlet weak var loadingView: UIActivityIndicatorView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadingView.hidden=true
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
   
        

        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
        
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            
            
            self.login.frame.origin.y=self.login.frame.origin.y-80
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            
            
            }, completion: nil)
        
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            
            
            self.login.frame.origin.y=self.login.frame.origin.y+80
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            
            
            }, completion: nil)
        
        
        
        
    }

    
    
    
    @IBAction func dismissKeyboard(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func onLoginButton(sender: AnyObject) {
        
        
        if (self.emailField.text.isEmpty && self.passwordField.text.isEmpty) {
            
            UIAlertView(title: "Oops", message: "Please enter an email or password", delegate: nil, cancelButtonTitle: "OK").show()
        }
            
            
        else {
            UIAlertView(title: "Loading...", message: "", delegate: nil, cancelButtonTitle: "OK").show()
            
            
            delay(2){
                
                
                var loadingAlert = UIAlertView(title: "Signing in...", message: nil, delegate: nil, cancelButtonTitle: nil)
            }
            
//            
//            if (self.emailField.text == "erin" && self.passwordField.text == "pass") {
//                self.performSegueWithIdentifier("loginSegue", sender: self)
//            }
//            
            
            if (self.emailField.text == "erin" && self.passwordField.text == "pass") {
                self.performSegueWithIdentifier("loginSegue", sender: self)
            }
                
            else {
                UIAlertView(title: "Oops.", message: "Wrong email or password", delegate: nil, cancelButtonTitle: "OK").show()
            }
            
            
            
        }
        
    }
    

    
    func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        // buttonIndex is 0 for Cancel
        // buttonIndex ranges from 1-n for the other buttons.
    }
    
    
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
