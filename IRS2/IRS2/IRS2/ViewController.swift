//
//  ViewController.swift
//  IRS2
//
//  Created by Nick Zelada on 12/26/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var grossPay: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var dependents: UITextField!
    @IBOutlet weak var ssTax: UITextView!
    @IBOutlet weak var fedTax: UITextView!
    @IBOutlet weak var sumDed: UITextView!
    @IBOutlet weak var netPay: UITextView!
    @IBOutlet weak var WarningText: UITextView!
    @IBOutlet weak var marriageStatus: UISegmentedControl!
    @IBOutlet weak var mediTax: UITextView!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        grossPay.delegate = self
    }
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //  fedTax.text = String(Int(dependents.text!)! * 2)
          // index = 0 is Single
          // index =  1 is married
       
       
        
        if Double(dependents.text!) ?? 1 >= 1 && Double(dependents.text!) ?? 1 <= 10 && Double(textField.text!) ?? 0 >= 0.00  && Double(textField.text!) ?? 0 <= 165.00 && marriageStatus.selectedSegmentIndex == 0{
              fedTax.text = String(0.00)
          }
    
      
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 0.00  && Double(textField.text!) ?? 0 <= 75.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(0.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 75.01  && Double(textField.text!) ?? 0 <= 85.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(1.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 85.01  && Double(textField.text!) ?? 0 <= 95.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(2.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 95.01  && Double(textField.text!) ?? 0 <= 105.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(3.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 105.01  && Double(textField.text!) ?? 0 <= 115.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(4.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 115.01  && Double(textField.text!) ?? 0 <= 125.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(5.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 125.01  && Double(textField.text!) ?? 0 <= 135.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(6.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 135.01  && Double(textField.text!) ?? 0 <= 145.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(7.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 145.01  && Double(textField.text!) ?? 0 <= 155.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(8.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 155.01  && Double(textField.text!) ?? 0 <= 165.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(9.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 165.01  && Double(textField.text!) ?? 0 <= 175.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(10.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 175.01  && Double(textField.text!) ?? 0 <= 185.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(11.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 185.01  && Double(textField.text!) ?? 0 <= 195.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(12.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 195.01  && Double(textField.text!) ?? 0 <= 205.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(13.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 205.01  && Double(textField.text!) ?? 0 <= 215.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(14.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 215.01  && Double(textField.text!) ?? 0 <= 225.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(15.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 225.01  && Double(textField.text!) ?? 0 <= 235.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(16.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 235.01  && Double(textField.text!) ?? 0 <= 245.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(17.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 245.01  && Double(textField.text!) ?? 0 <= 255.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(18.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 255.01  && Double(textField.text!) ?? 0 <= 265.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(19.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 255.01  && Double(textField.text!) ?? 0 <= 265.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(19.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 265.01  && Double(textField.text!) ?? 0 <= 280.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(20.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 280.01  && Double(textField.text!) ?? 0 <= 295.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(22.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 295.01  && Double(textField.text!) ?? 0 <= 310.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(24.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 310.01  && Double(textField.text!) ?? 0 <= 325.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(26.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 325.01  && Double(textField.text!) ?? 0 <= 340.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(27.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 340.01  && Double(textField.text!) ?? 0 <= 355.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(29.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 355.01  && Double(textField.text!) ?? 0 <= 370.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(31.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 370.01  && Double(textField.text!) ?? 0 <= 385.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(33.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 385.01  && Double(textField.text!) ?? 0 <= 400.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(35.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 400.01  && Double(textField.text!) ?? 0 <= 415.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(36.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 415.01  && Double(textField.text!) ?? 0 <= 430.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(38.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 430.01  && Double(textField.text!) ?? 0 <= 445.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(40.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 445.01  && Double(textField.text!) ?? 0 <= 460.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(42.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 460.01  && Double(textField.text!) ?? 0 <= 475.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(44.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 475.01  && Double(textField.text!) ?? 0 <= 490.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(45.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 505.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(47.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 505.01  && Double(textField.text!) ?? 0 <= 520.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(49.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 520.01  && Double(textField.text!) ?? 0 <= 535.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(51.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 535.01  && Double(textField.text!) ?? 0 <= 550.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(53.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 550.01  && Double(textField.text!) ?? 0 <= 565.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(54.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 565.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(56.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 595.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(58.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 595.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(60.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(62.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(63.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(65.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(67.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(69.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(71.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(72.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(74.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(76.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(78.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(80.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(81.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(83.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(85.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(87.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(89.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(92.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(97.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(101.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(105.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(110.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(114.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(119.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(123.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(127.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(132.00)
          }
          else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
              fedTax.text = String(136.00)
          }
        else if Double(dependents.text!) ?? 2 >= 2 && Double(dependents.text!) ?? 2 <= 10 && Double(textField.text!) ?? 0 >= 165.01  && Double(textField.text!) ?? 0 <= 215.00 && marriageStatus.selectedSegmentIndex == 0{
              fedTax.text = String(0.00)
          }
        else if Double(dependents.text!) ?? 3 >= 3 && Double(dependents.text!) ?? 3 <= 10 && Double(textField.text!) ?? 0 >= 215.01  && Double(textField.text!) ?? 0 <= 265.00 && marriageStatus.selectedSegmentIndex == 0{
              fedTax.text = String(0.00)
          }
        else if Double(dependents.text!) ?? 4 >= 4 && Double(dependents.text!) ?? 4 <= 10 && Double(textField.text!) ?? 0 >= 265.01  && Double(textField.text!) ?? 0 <= 415.00 && marriageStatus.selectedSegmentIndex == 0{
              fedTax.text = String(0.00)
          }
        else if Double(dependents.text!) ?? 5 >= 5 && Double(dependents.text!) ?? 5 <= 10 && Double(textField.text!) ?? 0 >= 415.01  && Double(textField.text!) ?? 0 <= 490.00 && marriageStatus.selectedSegmentIndex == 0{
              fedTax.text = String(0.00)
          }
        else if Double(dependents.text!) ?? 6 >= 6 && Double(dependents.text!) ?? 6 <= 10 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 565.00 && marriageStatus.selectedSegmentIndex == 0{
              fedTax.text = String(0.00)
          }
        else if Double(dependents.text!) ?? 7 >= 7 && Double(dependents.text!) ?? 7 <= 10 && Double(textField.text!) ?? 0 >= 565.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 0{
              fedTax.text = String(0.00)
          }
        else if Double(dependents.text!) ?? 8 >= 8 && Double(dependents.text!) ?? 8 <= 10 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 0{
              fedTax.text = String(0.00)
          }
        else if Double(dependents.text!) ?? 9 >= 9 && Double(dependents.text!) ?? 9 <= 10 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 0{
              fedTax.text = String(0.00)
          }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 165.01  && Double(textField.text!) ?? 0 <= 175.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(1.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 175.01  && Double(textField.text!) ?? 0 <= 185.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(2.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 185.01  && Double(textField.text!) ?? 0 <= 195.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(3.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 195.01  && Double(textField.text!) ?? 0 <= 205.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(4.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 205.01  && Double(textField.text!) ?? 0 <= 215.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(5.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 215.01  && Double(textField.text!) ?? 0 <= 225.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 225.01  && Double(textField.text!) ?? 0 <= 235.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(7.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 235.01  && Double(textField.text!) ?? 0 <= 245.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(8.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 245.01  && Double(textField.text!) ?? 0 <= 255.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(9.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 255.01  && Double(textField.text!) ?? 0 <= 265.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(10.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 265.01  && Double(textField.text!) ?? 0 <= 280.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(12.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 280.01  && Double(textField.text!) ?? 0 <= 295.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(13.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 295.01  && Double(textField.text!) ?? 0 <= 310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(15.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 310.01  && Double(textField.text!) ?? 0 <= 325.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(16.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 325.01  && Double(textField.text!) ?? 0 <= 340.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(18.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 340.01  && Double(textField.text!) ?? 0 <= 355.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(19.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 355.01  && Double(textField.text!) ?? 0 <= 370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(21.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 370.01  && Double(textField.text!) ?? 0 <= 385.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(23.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 385.01  && Double(textField.text!) ?? 0 <= 400.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(25.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 400.01  && Double(textField.text!) ?? 0 <= 415.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(26.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 415.01  && Double(textField.text!) ?? 0 <= 430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(28.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 430.01  && Double(textField.text!) ?? 0 <= 445.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(30.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 445.01  && Double(textField.text!) ?? 0 <= 460.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(32.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 460.01  && Double(textField.text!) ?? 0 <= 475.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(34.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 475.01  && Double(textField.text!) ?? 0 <= 490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(35.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 505.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(37.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 505.01  && Double(textField.text!) ?? 0 <= 520.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(39.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 520.01  && Double(textField.text!) ?? 0 <= 535.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(41.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 535.01  && Double(textField.text!) ?? 0 <= 550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(43.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 550.01  && Double(textField.text!) ?? 0 <= 565.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(44.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 565.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(46.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 595.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(48.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 595.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(50.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(52.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(53.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(55.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(57.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(59.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(61.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(62.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(64.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 215.01  && Double(textField.text!) ?? 0 <= 225.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 225.01  && Double(textField.text!) ?? 0 <= 235.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 235.01  && Double(textField.text!) ?? 0 <= 245.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 245.01  && Double(textField.text!) ?? 0 <= 255.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(1.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 255.01  && Double(textField.text!) ?? 0 <= 265.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(2.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 265.01  && Double(textField.text!) ?? 0 <= 280.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(3.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 280.01  && Double(textField.text!) ?? 0 <= 295.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(5.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 295.01  && Double(textField.text!) ?? 0 <= 310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 310.01  && Double(textField.text!) ?? 0 <= 325.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(8.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 325.01  && Double(textField.text!) ?? 0 <= 340.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(9.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 340.01  && Double(textField.text!) ?? 0 <= 355.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(11.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 355.01  && Double(textField.text!) ?? 0 <= 370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(12.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 370.01  && Double(textField.text!) ?? 0 <= 385.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(14.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 385.01  && Double(textField.text!) ?? 0 <= 400.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(15.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 400.01  && Double(textField.text!) ?? 0 <= 415.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(17.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 415.01  && Double(textField.text!) ?? 0 <= 430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(18.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 430.01  && Double(textField.text!) ?? 0 <= 445.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(20.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 445.01  && Double(textField.text!) ?? 0 <= 460.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(22.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 460.01  && Double(textField.text!) ?? 0 <= 475.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(24.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 475.01  && Double(textField.text!) ?? 0 <= 490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(25.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 505.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(27.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 505.01  && Double(textField.text!) ?? 0 <= 520.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(29.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 520.01  && Double(textField.text!) ?? 0 <= 535.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(31.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 535.01  && Double(textField.text!) ?? 0 <= 550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(33.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 550.01  && Double(textField.text!) ?? 0 <= 565.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(34.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 565.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(36.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 595.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(38.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 595.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(40.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(42.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(43.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(45.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(47.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(49.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(51.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(52.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(54.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 265.01  && Double(textField.text!) ?? 0 <= 325.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 325.01  && Double(textField.text!) ?? 0 <= 340.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(1.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 340.01  && Double(textField.text!) ?? 0 <= 355.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(3.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 355.01  && Double(textField.text!) ?? 0 <= 370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(4.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 370.01  && Double(textField.text!) ?? 0 <= 385.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 385.01  && Double(textField.text!) ?? 0 <= 400.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(7.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 400.01  && Double(textField.text!) ?? 0 <= 415.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(9.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 415.01  && Double(textField.text!) ?? 0 <= 430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(10.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 430.01  && Double(textField.text!) ?? 0 <= 445.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(12.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 445.01  && Double(textField.text!) ?? 0 <= 460.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(13.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 460.01  && Double(textField.text!) ?? 0 <= 475.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(15.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 475.01  && Double(textField.text!) ?? 0 <= 490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(16.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 505.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(18.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 505.01  && Double(textField.text!) ?? 0 <= 520.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(19.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 520.01  && Double(textField.text!) ?? 0 <= 535.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(21.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 535.01  && Double(textField.text!) ?? 0 <= 550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(23.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 550.01  && Double(textField.text!) ?? 0 <= 565.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(25.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 565.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(26.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 595.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(28.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 595.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(30.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(32.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(34.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(35.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(37.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(39.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(41.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(43.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(44.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 415.01  && Double(textField.text!) ?? 0 <= 430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(2.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 430.01  && Double(textField.text!) ?? 0 <= 445.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(3.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 445.01  && Double(textField.text!) ?? 0 <= 460.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(5.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 460.01  && Double(textField.text!) ?? 0 <= 475.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 475.01  && Double(textField.text!) ?? 0 <= 490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(8.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 505.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(9.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 505.01  && Double(textField.text!) ?? 0 <= 520.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(11.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 520.01  && Double(textField.text!) ?? 0 <= 535.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(12.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 535.01  && Double(textField.text!) ?? 0 <= 550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(14.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 550.01  && Double(textField.text!) ?? 0 <= 565.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(15.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 565.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(17.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 595.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(18.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 595.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(20.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(22.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(24.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(25.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(27.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(29.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(31.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(33.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(34.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 505.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(1.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 505.01  && Double(textField.text!) ?? 0 <= 520.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(3.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 520.01  && Double(textField.text!) ?? 0 <= 535.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(4.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 535.01  && Double(textField.text!) ?? 0 <= 550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 550.01  && Double(textField.text!) ?? 0 <= 565.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(7.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 565.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(9.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 595.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(10.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 595.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(12.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(13.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(15.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(16.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(18.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(19.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(21.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(23.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(25.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 565.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 595.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(2.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 595.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(3.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(5.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(8.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(9.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(11.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(12.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(14.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(15.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(1.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(3.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(4.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(7.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(141.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(145.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(149.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(154.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(158.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(163.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(167.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(171.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(176.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(180.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(185.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(189.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(193.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(198.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(202.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(207.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(211.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(215.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(220.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(224.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(229.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(233.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(237.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(242.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(246.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(251.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(255.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(259.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(264.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(268.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(273.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(277.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(281.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(286.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(291.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(296.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(301.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(305.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(310.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(315.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(320.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(325.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(329.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(122.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(127.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(131.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(136.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(140.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(144.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(149.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(153.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(158.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(162.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(166.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(171.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(175.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(180.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(184.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(188.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(193.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(197.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(202.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(206.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(210.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(215.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(219.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(224.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(228.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(232.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(237.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(241.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(246.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(250.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(254.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(259.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(263.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(268.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(272.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(276.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(281.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(286.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(290.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(295.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(300.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(305.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(310.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(104.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(109.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(113.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(117.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(122.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(126.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(131.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(135.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(139.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(144.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(148.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(153.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(157.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(161.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(166.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(170.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(175.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(179.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(183.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(188.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(192.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(197.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(201.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(205.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(210.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(214.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(219.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(223.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(227.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(232.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(236.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(241.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(245.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(249.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(254.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(258.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(263.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(267.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(271.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(276.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(280.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(285.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(290.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(87.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(90.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(95.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(99.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(104.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(108.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(112.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(117.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(121.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(126.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(130.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(134.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(139.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(143.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(148.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(152.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(156.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(161.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(165.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(170.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(174.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(178.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(183.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(187.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(192.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(196.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(200.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(205.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(209.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(214.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(218.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(222.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(227.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(231.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(236.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(240.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(244.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(249.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(253.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(258.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(262.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(266.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(271.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(77.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(80.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(82.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(85.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(87.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(90.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(94.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(99.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(103.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(107.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(112.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(116.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(121.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(125.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(129.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(134.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(138.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(143.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(147.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(151.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(156.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(160.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(165.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(169.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(173.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(178.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(182.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(187.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(191.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(195.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(200.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(204.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(209.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(213.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(217.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(222.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(226.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(231.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(235.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(239.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(244.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(248.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(253.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(67.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(70.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(72.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(75.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(77.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(79.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(82.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(84.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(87.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(89.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(94.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(98.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(102.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(107.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(111.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(116.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(120.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(124.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(129.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(133.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(138.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(142.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(146.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(151.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(155.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(160.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(164.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(168.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(173.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(177.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(182.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(186.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(190.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(195.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(199.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(204.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(208.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(212.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(217.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(221.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(226.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(230.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(234.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(57.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(60.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(62.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(65.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(67.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(69.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(72.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(74.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(77.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(79.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(81.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(84.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(86.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(89.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(93.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(97.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(102.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(106.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(111.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(115.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(119.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(124.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(128.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(133.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(137.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(141.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(146.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(150.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(155.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(159.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(163.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(168.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(172.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(177.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(181.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(185.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(190.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(194.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(199.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(203.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(207.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(212.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(216.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(48.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(50.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(52.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(55.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(57.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(60.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(62.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(64.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(67.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(69.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(72.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(74.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(76.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(79.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(81.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(84.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(86.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(88.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(92.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(97.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(101.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(106.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(110.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(114.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(119.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(123.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(128.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(132.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(136.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(141.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(145.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(150.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(154.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(158.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(163.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(167.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(172.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(176.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(180.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(185.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(189.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(194.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(198.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(38.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(40.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(42.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(45.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(47.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(50.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(52.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(54.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(57.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(59.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(62.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(64.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(66.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(69.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(71.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(74.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(76.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(78.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(81.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(83.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(86.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(88.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(92.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(96.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(101.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(105.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(109.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(114.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(118.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(123.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(127.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(131.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(136.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(140.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(145.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(149.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(153.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(158.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(162.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(167.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(171.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(175.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(180.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(28.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(30.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(33.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(35.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(37.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(40.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(42.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(45.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(47.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(49.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(52.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(54.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(57.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(59.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(61.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(64.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(66.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(69.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(71.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(73.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(76.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(78.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(81.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(83.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(85.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(88.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(91.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(96.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(100.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(104.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(109.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(113.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(118.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(122.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(126.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(131.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(135.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(140.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(144.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(148.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(153.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(157.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(162.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1070.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(18.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1110.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(20.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1110.01  && Double(textField.text!) ?? 0 <= 1130.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(23.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1130.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(25.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1170.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(27.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1170.01  && Double(textField.text!) ?? 0 <= 1190.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(30.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1190.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(32.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1230.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(35.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1230.01  && Double(textField.text!) ?? 0 <= 1250.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(37.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1250.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(39.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1290.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(42.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1290.01  && Double(textField.text!) ?? 0 <= 1310.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(44.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1310.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(47.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1350.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(49.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1350.01  && Double(textField.text!) ?? 0 <= 1370.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(51.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1370.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(54.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1410.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(56.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1410.01  && Double(textField.text!) ?? 0 <= 1430.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(59.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1430.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(61.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1470.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(63.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1470.01  && Double(textField.text!) ?? 0 <= 1490.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(66.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1490.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(68.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1530.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(71.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1530.01  && Double(textField.text!) ?? 0 <= 1550.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(73.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1550.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(75.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1590.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(78.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1590.01  && Double(textField.text!) ?? 0 <= 1610.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(80.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1610.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(83.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1650.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(85.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1650.01  && Double(textField.text!) ?? 0 <= 1670.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(87.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1670.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(91.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1710.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(95.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1710.01  && Double(textField.text!) ?? 0 <= 1730.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(99.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1730.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(104.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1770.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(108.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1770.01  && Double(textField.text!) ?? 0 <= 1790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(113.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1790.01  && Double(textField.text!) ?? 0 <= 1810.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(117.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1810.01  && Double(textField.text!) ?? 0 <= 1830.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(121.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1830.01  && Double(textField.text!) ?? 0 <= 1850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(126.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1850.01  && Double(textField.text!) ?? 0 <= 1870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(130.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1870.01  && Double(textField.text!) ?? 0 <= 1890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(135.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1890.01  && Double(textField.text!) ?? 0 <= 1910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(139.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1910.01  && Double(textField.text!) ?? 0 <= 1930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(143.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(66.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(68.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(70.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(71.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(73.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(75.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(77.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(79.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(81.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(83.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(86.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(88.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(92.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(96.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(100.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(105.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(109.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(114.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(118.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(56.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(58.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(60.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(61.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(63.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(65.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(67.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(69.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(71.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(73.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(76.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(78.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(80.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(83.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(85.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(88.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(91.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(95.00)
        }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(100.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(46.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(48.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(50.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(52.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(53.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(55.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(57.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(59.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(61.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(63.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(66.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(68.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(70.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(73.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(75.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(78.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(80.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(82.00)
        }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(85.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(36.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(38.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(40.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(42.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(43.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(45.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(47.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(49.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(51.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(53.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(56.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(58.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(61.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(63.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(65.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(68.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(70.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(73.00)
        }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(75.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(26.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(28.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(30.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(32.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(34.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(35.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(37.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(39.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(41.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(43.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(46.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(48.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(51.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(53.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(55.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(58.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(60.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(63.00)
        }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(65.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(17.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(18.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(20.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(22.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(24.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(25.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(27.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(29.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(31.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(33.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(36.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(38.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(41.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(43.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(45.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(48.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(50.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(53.00)
        }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(55.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(9.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(10.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(12.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(13.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(15.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(16.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(18.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(19.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(21.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(24.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(26.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(28.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(31.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(33.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(36.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(38.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(40.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(43.00)
        }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(45.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(2.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(3.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(5.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(8.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(9.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(11.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(13.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(15.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(17.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(19.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(21.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(23.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(26.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(28.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(30.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(33.00)
        }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(35.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(1.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(3.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 870.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(4.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(8.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(10.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(12.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(14.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(16.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(18.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(21.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(23.00)
        }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(25.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 870.01  && Double(textField.text!) ?? 0 <= 890.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 890.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 930.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(2.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 930.01  && Double(textField.text!) ?? 0 <= 950.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(4.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 950.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 990.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(8.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 990.01  && Double(textField.text!) ?? 0 <= 1010.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(10.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1010.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(12.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1050.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(14.00)
        }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1050.01  && Double(textField.text!) ?? 0 <= 1070.00 && marriageStatus.selectedSegmentIndex == 0 {
            fedTax.text = String(16.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 0.00  && Double(textField.text!) ?? 0 <= 230.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(0.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 230.01  && Double(textField.text!) ?? 0 <= 240.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(1.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 240.01  && Double(textField.text!) ?? 0 <= 250.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(2.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 250.01  && Double(textField.text!) ?? 0 <= 260.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(3.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 260.01  && Double(textField.text!) ?? 0 <= 270.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(4.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 270.01  && Double(textField.text!) ?? 0 <= 280.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(5.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 280.01  && Double(textField.text!) ?? 0 <= 290.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(6.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 290.01  && Double(textField.text!) ?? 0 <= 300.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(7.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 300.01  && Double(textField.text!) ?? 0 <= 310.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(8.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 310.01  && Double(textField.text!) ?? 0 <= 320.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(9.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 320.01  && Double(textField.text!) ?? 0 <= 330.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(10.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 330.01  && Double(textField.text!) ?? 0 <= 340.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(11.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 340.01  && Double(textField.text!) ?? 0 <= 350.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(12.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 350.01  && Double(textField.text!) ?? 0 <= 360.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(13.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 360.01  && Double(textField.text!) ?? 0 <= 370.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(14.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 370.01  && Double(textField.text!) ?? 0 <= 380.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(15.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 380.01  && Double(textField.text!) ?? 0 <= 390.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(16.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 390.01  && Double(textField.text!) ?? 0 <= 400.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(17.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 400.01  && Double(textField.text!) ?? 0 <= 410.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(18.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 410.01  && Double(textField.text!) ?? 0 <= 420.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(19.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 420.01  && Double(textField.text!) ?? 0 <= 430.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(20.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 430.01  && Double(textField.text!) ?? 0 <= 440.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(21.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 440.01  && Double(textField.text!) ?? 0 <= 450.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(22.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 450.01  && Double(textField.text!) ?? 0 <= 460.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(23.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 460.01  && Double(textField.text!) ?? 0 <= 470.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(24.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 470.01  && Double(textField.text!) ?? 0 <= 480.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(25.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 480.01  && Double(textField.text!) ?? 0 <= 490.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(26.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 500.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(27.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 500.01  && Double(textField.text!) ?? 0 <= 510.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(28.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 510.01  && Double(textField.text!) ?? 0 <= 520.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(29.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 520.01  && Double(textField.text!) ?? 0 <= 530.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(30.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 530.01  && Double(textField.text!) ?? 0 <= 540.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(31.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 540.01  && Double(textField.text!) ?? 0 <= 550.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(32.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 550.01  && Double(textField.text!) ?? 0 <= 560.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(33.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 560.01  && Double(textField.text!) ?? 0 <= 570.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(34.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 570.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(35.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 590.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(36.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 590.01  && Double(textField.text!) ?? 0 <= 600.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(37.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 600.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(38.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(39.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(41.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(43.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(44.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(46.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(48.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(50.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(52.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(53.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(55.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(57.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(59.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(61.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(62.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(64.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(66.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 865.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(68.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 865.01  && Double(textField.text!) ?? 0 <= 880.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(70.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 880.01  && Double(textField.text!) ?? 0 <= 895.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(71.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 895.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(73.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 925.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(75.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 925.01  && Double(textField.text!) ?? 0 <= 940.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(77.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 940.01  && Double(textField.text!) ?? 0 <= 955.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(79.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 955.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(80.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 985.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(82.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 985.01  && Double(textField.text!) ?? 0 <= 1000.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(84.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1000.01  && Double(textField.text!) ?? 0 <= 1015.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(86.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1015.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(88.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1045.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(89.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1045.01  && Double(textField.text!) ?? 0 <= 1060.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(91.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(93.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(95.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(97.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(98.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(100.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(102.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(104.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(106.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(107.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(109.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(111.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(113.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(115.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(116.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(118.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(120.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(122.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(124.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(125.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(127.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(129.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(131.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(133.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(134.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(136.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(138.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(140.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(142.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(143.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(145.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(147.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(149.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(151.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(152.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(154.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(156.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(158.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(160.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(161.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(163.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(165.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(167.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(169.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(170.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(172.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(174.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(176.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(178.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(182.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(186.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(190.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(195.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(199.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(204.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(208.00)
        }
        else if Double(dependents.text!) == 0 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
            fedTax.text = String(212.00)
        }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 320.01  && Double(textField.text!) ?? 0 <= 330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(1.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 330.01  && Double(textField.text!) ?? 0 <= 340.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(2.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 340.01  && Double(textField.text!) ?? 0 <= 350.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(3.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 350.01  && Double(textField.text!) ?? 0 <= 360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(4.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 360.01  && Double(textField.text!) ?? 0 <= 370.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(5.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 370.01  && Double(textField.text!) ?? 0 <= 380.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(6.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 380.01  && Double(textField.text!) ?? 0 <= 390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(7.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 390.01  && Double(textField.text!) ?? 0 <= 400.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(8.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 400.01  && Double(textField.text!) ?? 0 <= 410.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(9.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 410.01  && Double(textField.text!) ?? 0 <= 420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(10.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 420.01  && Double(textField.text!) ?? 0 <= 430.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(11.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 430.01  && Double(textField.text!) ?? 0 <= 440.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(12.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 440.01  && Double(textField.text!) ?? 0 <= 450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(13.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 450.01  && Double(textField.text!) ?? 0 <= 460.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(14.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 460.01  && Double(textField.text!) ?? 0 <= 470.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(15.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 470.01  && Double(textField.text!) ?? 0 <= 480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(16.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 480.01  && Double(textField.text!) ?? 0 <= 490.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(17.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 500.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(18.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 500.01  && Double(textField.text!) ?? 0 <= 510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(19.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 510.01  && Double(textField.text!) ?? 0 <= 520.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(20.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 520.01  && Double(textField.text!) ?? 0 <= 530.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(21.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 530.01  && Double(textField.text!) ?? 0 <= 540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(22.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 540.01  && Double(textField.text!) ?? 0 <= 550.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(23.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 550.01  && Double(textField.text!) ?? 0 <= 560.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(24.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 560.01  && Double(textField.text!) ?? 0 <= 570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(25.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 570.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(26.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 590.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(27.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 590.01  && Double(textField.text!) ?? 0 <= 600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(28.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 600.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(29.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(31.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(32.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(34.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(35.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(37.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(38.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(40.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(42.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(44.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(45.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(47.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(49.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(51.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(53.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(54.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(56.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 865.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(58.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 865.01  && Double(textField.text!) ?? 0 <= 880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(60.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 880.01  && Double(textField.text!) ?? 0 <= 895.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(62.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 895.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(63.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 925.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(65.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 925.01  && Double(textField.text!) ?? 0 <= 940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(67.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 940.01  && Double(textField.text!) ?? 0 <= 955.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(69.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 955.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(71.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 985.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(72.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 985.01  && Double(textField.text!) ?? 0 <= 1000.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(74.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1000.01  && Double(textField.text!) ?? 0 <= 1015.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(76.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1015.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(78.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1045.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(80.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1045.01  && Double(textField.text!) ?? 0 <= 1060.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(81.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(83.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(85.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(87.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(89.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(90.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(92.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(94.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(96.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(98.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(99.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(101.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(103.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(105.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(107.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(108.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(110.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(112.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(114.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(116.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(117.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(119.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(121.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(123.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(125.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(126.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(128.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(130.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(132.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(134.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(135.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(137.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(139.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(141.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(143.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(144.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(146.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(148.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(150.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(152.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(153.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(155.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(157.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(159.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(161.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(162.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(164.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(166.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(168.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(170.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(172.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(175.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(177.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(181.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(185.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(190.00)
                }
        else if Double(dependents.text!) == 1 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(194.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 370.01  && Double(textField.text!) ?? 0 <= 380.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(0.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 380.01  && Double(textField.text!) ?? 0 <= 390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(0.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 390.01  && Double(textField.text!) ?? 0 <= 400.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(0.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 400.01  && Double(textField.text!) ?? 0 <= 410.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(1.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 410.01  && Double(textField.text!) ?? 0 <= 420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(2.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 420.01  && Double(textField.text!) ?? 0 <= 430.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(3.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 430.01  && Double(textField.text!) ?? 0 <= 440.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(4.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 440.01  && Double(textField.text!) ?? 0 <= 450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(5.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 450.01  && Double(textField.text!) ?? 0 <= 460.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(6.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 460.01  && Double(textField.text!) ?? 0 <= 470.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(7.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 470.01  && Double(textField.text!) ?? 0 <= 480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(8.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 480.01  && Double(textField.text!) ?? 0 <= 490.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(9.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 500.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(10.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 500.01  && Double(textField.text!) ?? 0 <= 510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(11.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 510.01  && Double(textField.text!) ?? 0 <= 520.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(12.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 520.01  && Double(textField.text!) ?? 0 <= 530.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(13.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 530.01  && Double(textField.text!) ?? 0 <= 540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(14.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 540.01  && Double(textField.text!) ?? 0 <= 550.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(15.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 550.01  && Double(textField.text!) ?? 0 <= 560.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(16.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 560.01  && Double(textField.text!) ?? 0 <= 570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(17.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 570.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(18.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 590.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(19.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 590.01  && Double(textField.text!) ?? 0 <= 600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(20.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 600.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(21.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(22.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(24.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(25.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(27.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(28.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(30.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(31.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(33.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(34.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(36.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(37.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(39.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(41.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(43.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(44.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(46.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 865.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(48.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 865.01  && Double(textField.text!) ?? 0 <= 880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(50.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 880.01  && Double(textField.text!) ?? 0 <= 895.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(52.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 895.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(53.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 925.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(55.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 925.01  && Double(textField.text!) ?? 0 <= 940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(57.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 940.01  && Double(textField.text!) ?? 0 <= 955.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(59.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 955.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(61.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 985.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(62.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 985.01  && Double(textField.text!) ?? 0 <= 1000.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(64.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1000.01  && Double(textField.text!) ?? 0 <= 1015.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(66.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1015.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(68.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1045.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(70.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1045.01  && Double(textField.text!) ?? 0 <= 1060.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(71.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(73.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(75.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(77.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(79.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(80.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(82.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(84.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(86.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(88.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(89.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(91.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(93.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(95.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(97.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(98.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(100.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(102.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(104.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(106.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(107.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(109.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(111.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(113.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(115.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(116.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(118.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(120.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(122.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(124.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(125.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(127.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(129.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(131.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(133.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(134.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(136.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(138.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(140.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(142.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(143.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(145.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(147.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(149.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(151.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(152.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(154.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(156.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(158.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(160.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(162.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(165.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(167.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(169.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(172.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(174.00)
                }
        else if Double(dependents.text!) == 2 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(177.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 480.01  && Double(textField.text!) ?? 0 <= 490.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(1.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 490.01  && Double(textField.text!) ?? 0 <= 500.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(2.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 500.01  && Double(textField.text!) ?? 0 <= 510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(3.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 510.01  && Double(textField.text!) ?? 0 <= 520.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(4.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 520.01  && Double(textField.text!) ?? 0 <= 530.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(5.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 530.01  && Double(textField.text!) ?? 0 <= 540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(6.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 540.01  && Double(textField.text!) ?? 0 <= 550.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(7.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 550.01  && Double(textField.text!) ?? 0 <= 560.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(8.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 560.01  && Double(textField.text!) ?? 0 <= 570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(9.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 570.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(10.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 590.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(11.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 590.01  && Double(textField.text!) ?? 0 <= 600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(12.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 600.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(13.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(14.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(16.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(17.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(19.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(20.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(22.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(23.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(25.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(26.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(28.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(29.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(31.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(32.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(34.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(35.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(37.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 865.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(38.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 865.01  && Double(textField.text!) ?? 0 <= 880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(40.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 880.01  && Double(textField.text!) ?? 0 <= 895.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(42.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 895.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(43.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 925.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(45.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 925.01  && Double(textField.text!) ?? 0 <= 940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(47.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 940.01  && Double(textField.text!) ?? 0 <= 955.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(49.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 955.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(51.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 985.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(52.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 985.01  && Double(textField.text!) ?? 0 <= 1000.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(54.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1000.01  && Double(textField.text!) ?? 0 <= 1015.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(56.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1015.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(58.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1045.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(60.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1045.01  && Double(textField.text!) ?? 0 <= 1060.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(61.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(63.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(65.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(67.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(69.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(70.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(72.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(74.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(76.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(78.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(79.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(81.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(83.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(85.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(87.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(88.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(90.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(92.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(94.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(96.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(97.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(99.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(101.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(103.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(105.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(106.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(108.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(110.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(112.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(114.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(115.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(117.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(119.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(121.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(123.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(124.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(126.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(128.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(130.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(132.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(133.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(135.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(137.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(139.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(141.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(142.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(144.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(146.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(148.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(150.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(152.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(155.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(157.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(160.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(162.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(164.00)
                }
        else if Double(dependents.text!) == 3 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(167.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 560.01  && Double(textField.text!) ?? 0 <= 570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(1.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 570.01  && Double(textField.text!) ?? 0 <= 580.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(2.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 580.01  && Double(textField.text!) ?? 0 <= 590.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(3.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 590.01  && Double(textField.text!) ?? 0 <= 600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(4.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 600.01  && Double(textField.text!) ?? 0 <= 610.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(5.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 610.01  && Double(textField.text!) ?? 0 <= 625.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(6.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 625.01  && Double(textField.text!) ?? 0 <= 640.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(7.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(9.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(10.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(12.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(13.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(15.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(16.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(18.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(19.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(21.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(22.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(24.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(25.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(27.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(28.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 865.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(30.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 865.01  && Double(textField.text!) ?? 0 <= 880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(31.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 880.01  && Double(textField.text!) ?? 0 <= 895.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(33.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 895.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(34.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 925.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(36.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 925.01  && Double(textField.text!) ?? 0 <= 940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(37.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 940.01  && Double(textField.text!) ?? 0 <= 955.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(39.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 955.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(41.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 985.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(43.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 985.01  && Double(textField.text!) ?? 0 <= 1000.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(44.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1000.01  && Double(textField.text!) ?? 0 <= 1015.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(46.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1015.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(48.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1045.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(50.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1045.01  && Double(textField.text!) ?? 0 <= 1060.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(52.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(53.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(55.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(57.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(59.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(61.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(62.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(64.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(66.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(68.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(70.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(71.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(73.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(75.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(77.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(79.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(80.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(82.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(84.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(86.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(88.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(89.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(91.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(93.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(95.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(97.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(98.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(100.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(102.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(104.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(106.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(107.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(109.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(111.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(113.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(115.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(116.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(118.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(120.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(122.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(124.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(125.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(127.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(139.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(131.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(133.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(134.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(136.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(138.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(140.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(142.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(145.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(147.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(150.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(152.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(154.00)
                }
        else if Double(dependents.text!) == 4 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(157.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 640.01  && Double(textField.text!) ?? 0 <= 655.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(1.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 655.01  && Double(textField.text!) ?? 0 <= 670.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(2.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 670.01  && Double(textField.text!) ?? 0 <= 685.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(4.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 685.01  && Double(textField.text!) ?? 0 <= 700.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(5.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 700.01  && Double(textField.text!) ?? 0 <= 715.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(7.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 715.01  && Double(textField.text!) ?? 0 <= 730.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(8.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(10.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(11.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(13.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(14.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(16.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(17.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(19.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(20.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 865.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(22.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 865.01  && Double(textField.text!) ?? 0 <= 880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(23.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 880.01  && Double(textField.text!) ?? 0 <= 895.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(25.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 895.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(26.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 925.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(28.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 925.01  && Double(textField.text!) ?? 0 <= 940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(29.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 940.01  && Double(textField.text!) ?? 0 <= 955.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(31.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 955.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(32.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 985.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(34.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 985.01  && Double(textField.text!) ?? 0 <= 1000.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(35.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1000.01  && Double(textField.text!) ?? 0 <= 1015.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(37.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1015.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(38.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1045.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(40.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1045.01  && Double(textField.text!) ?? 0 <= 1060.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(42.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(43.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(45.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(47.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(49.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(51.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(52.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(54.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(56.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(58.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(60.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(61.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(63.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(65.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(67.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(69.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(70.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(72.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(74.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(76.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(78.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(79.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(81.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(83.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(85.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(87.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(88.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(90.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(92.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(94.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(96.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(97.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(99.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(101.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(103.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(105.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(106.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(108.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(110.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(112.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(114.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(115.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(117.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(119.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(121.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(123.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(124.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(126.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(128.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(130.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(133.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(135.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(137.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(140.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(142.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(145.00)
                }
        else if Double(dependents.text!) == 5 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(157.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 730.01  && Double(textField.text!) ?? 0 <= 745.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(1.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 745.01  && Double(textField.text!) ?? 0 <= 760.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(3.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 760.01  && Double(textField.text!) ?? 0 <= 775.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(4.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 775.01  && Double(textField.text!) ?? 0 <= 790.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(6.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 790.01  && Double(textField.text!) ?? 0 <= 805.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(7.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 805.01  && Double(textField.text!) ?? 0 <= 820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(9.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(10.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(12.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 865.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(13.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 865.01  && Double(textField.text!) ?? 0 <= 880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(15.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 880.01  && Double(textField.text!) ?? 0 <= 895.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(16.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 895.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(18.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 925.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(19.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 925.01  && Double(textField.text!) ?? 0 <= 940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(21.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 940.01  && Double(textField.text!) ?? 0 <= 955.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(22.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 955.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(24.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 985.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(25.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 985.01  && Double(textField.text!) ?? 0 <= 1000.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(27.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1000.01  && Double(textField.text!) ?? 0 <= 1015.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(28.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1015.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(30.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1045.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(31.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1045.01  && Double(textField.text!) ?? 0 <= 1060.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(33.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(34.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(36.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(37.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(39.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(41.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(43.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(44.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(46.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(48.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(50.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(52.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(53.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(55.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(57.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(59.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(61.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(62.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(64.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(66.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(68.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(70.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(71.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(73.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(75.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(77.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(79.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(80.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(82.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(84.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(86.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(88.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(89.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(91.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(93.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(95.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(97.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(98.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(100.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(102.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(104.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(106.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(107.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(109.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(111.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(113.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(115.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(116.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(118.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(120.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(123.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(125.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(127.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(130.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(132.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(135.00)
                }
        else if Double(dependents.text!) == 6 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(137.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 820.01  && Double(textField.text!) ?? 0 <= 835.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(2.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 835.01  && Double(textField.text!) ?? 0 <= 850.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(3.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 850.01  && Double(textField.text!) ?? 0 <= 865.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(5.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 865.01  && Double(textField.text!) ?? 0 <= 880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(6.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 880.01  && Double(textField.text!) ?? 0 <= 895.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(8.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 895.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(9.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 925.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(11.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 925.01  && Double(textField.text!) ?? 0 <= 940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(12.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 940.01  && Double(textField.text!) ?? 0 <= 955.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(14.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 955.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(15.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 985.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(17.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 985.01  && Double(textField.text!) ?? 0 <= 1000.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(18.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1000.01  && Double(textField.text!) ?? 0 <= 1015.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(20.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1015.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(21.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1045.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(23.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1045.01  && Double(textField.text!) ?? 0 <= 1060.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(24.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(26.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(27.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(29.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(30.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(32.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(33.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(35.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(36.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(38.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(40.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(42.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(43.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(45.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(47.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(49.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(51.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(52.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(54.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(56.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(58.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(60.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(61.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(63.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(65.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(67.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(69.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(70.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(72.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(74.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(76.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(78.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(79.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(81.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(83.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(85.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(87.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(88.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(90.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(92.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(94.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(96.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(97.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(99.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(101.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(103.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(105.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(106.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(108.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(110.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(113.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(115.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(117.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(120.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(122.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(125.00)
                }
        else if Double(dependents.text!) == 7 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(127.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 895.01  && Double(textField.text!) ?? 0 <= 910.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(1.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 910.01  && Double(textField.text!) ?? 0 <= 925.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(3.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 925.01  && Double(textField.text!) ?? 0 <= 940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(4.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 940.01  && Double(textField.text!) ?? 0 <= 955.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(6.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 955.01  && Double(textField.text!) ?? 0 <= 970.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(7.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 970.01  && Double(textField.text!) ?? 0 <= 985.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(9.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 985.01  && Double(textField.text!) ?? 0 <= 1000.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(10.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1000.01  && Double(textField.text!) ?? 0 <= 1015.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(12.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1015.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(13.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1045.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(15.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1045.01  && Double(textField.text!) ?? 0 <= 1060.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(16.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(18.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(19.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(21.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(22.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(24.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(25.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(27.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(28.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(30.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(31.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(33.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(34.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(36.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(37.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(39.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(41.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(42.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(44.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(46.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(48.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(50.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(51.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(53.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(55.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(57.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(59.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(60.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(62.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(64.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(66.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(68.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(69.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(71.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(73.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(75.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(77.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(78.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(80.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(82.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(84.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(86.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(87.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(89.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(91.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(93.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(95.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(96.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(98.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(100.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(103.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(105.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(108.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(110.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(112.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(115.00)
                }
        else if Double(dependents.text!) == 8 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(117.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 985.01  && Double(textField.text!) ?? 0 <= 1000.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(2.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1000.01  && Double(textField.text!) ?? 0 <= 1015.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(3.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1015.01  && Double(textField.text!) ?? 0 <= 1030.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(5.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1030.01  && Double(textField.text!) ?? 0 <= 1045.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(6.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1045.01  && Double(textField.text!) ?? 0 <= 1060.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(8.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(9.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(11.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(12.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(14.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(15.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(17.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(18.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(20.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(21.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(23.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(24.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(26.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(27.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(29.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(30.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(32.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(33.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(35.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(36.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(38.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(40.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(42.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(43.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(45.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(47.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(49.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(51.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(52.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(54.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(56.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(58.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(60.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(61.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(63.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(65.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(67.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(69.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(70.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(72.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(74.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(76.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(78.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(79.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(81.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(83.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(85.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(87.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(88.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(90.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(93.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(95.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(98.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(100.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(102.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(105.00)
                }
        else if Double(dependents.text!) == 9 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(107.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1060.01  && Double(textField.text!) ?? 0 <= 1075.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(1.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1075.01  && Double(textField.text!) ?? 0 <= 1090.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(3.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1090.01  && Double(textField.text!) ?? 0 <= 1105.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(4.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1105.01  && Double(textField.text!) ?? 0 <= 1120.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(6.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1120.01  && Double(textField.text!) ?? 0 <= 1135.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(7.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1135.01  && Double(textField.text!) ?? 0 <= 1150.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(9.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1150.01  && Double(textField.text!) ?? 0 <= 1165.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(10.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1165.01  && Double(textField.text!) ?? 0 <= 1180.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(12.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1180.01  && Double(textField.text!) ?? 0 <= 1195.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(13.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1195.01  && Double(textField.text!) ?? 0 <= 1210.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(15.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1210.01  && Double(textField.text!) ?? 0 <= 1225.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(16.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1225.01  && Double(textField.text!) ?? 0 <= 1240.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(18.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1240.01  && Double(textField.text!) ?? 0 <= 1255.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(19.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1255.01  && Double(textField.text!) ?? 0 <= 1270.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(21.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1270.01  && Double(textField.text!) ?? 0 <= 1285.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(22.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1285.01  && Double(textField.text!) ?? 0 <= 1300.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(24.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1300.01  && Double(textField.text!) ?? 0 <= 1315.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(25.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1315.01  && Double(textField.text!) ?? 0 <= 1330.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(27.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1330.01  && Double(textField.text!) ?? 0 <= 1345.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(28.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1345.01  && Double(textField.text!) ?? 0 <= 1360.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(30.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1360.01  && Double(textField.text!) ?? 0 <= 1375.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(31.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1375.01  && Double(textField.text!) ?? 0 <= 1390.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(33.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1390.01  && Double(textField.text!) ?? 0 <= 1405.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(34.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1405.01  && Double(textField.text!) ?? 0 <= 1420.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(36.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1420.01  && Double(textField.text!) ?? 0 <= 1435.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(37.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1435.01  && Double(textField.text!) ?? 0 <= 1450.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(39.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1450.01  && Double(textField.text!) ?? 0 <= 1465.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(41.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1465.01  && Double(textField.text!) ?? 0 <= 1480.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(42.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1480.01  && Double(textField.text!) ?? 0 <= 1495.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(44.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1495.01  && Double(textField.text!) ?? 0 <= 1510.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(46.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1510.01  && Double(textField.text!) ?? 0 <= 1525.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(48.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1525.01  && Double(textField.text!) ?? 0 <= 1540.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(50.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1540.01  && Double(textField.text!) ?? 0 <= 1555.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(51.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1555.01  && Double(textField.text!) ?? 0 <= 1570.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(53.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1570.01  && Double(textField.text!) ?? 0 <= 1585.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(55.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1585.01  && Double(textField.text!) ?? 0 <= 1600.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(57.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1600.01  && Double(textField.text!) ?? 0 <= 1615.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(59.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1615.01  && Double(textField.text!) ?? 0 <= 1630.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(60.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1630.01  && Double(textField.text!) ?? 0 <= 1645.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(62.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1645.01  && Double(textField.text!) ?? 0 <= 1660.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(64.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1660.01  && Double(textField.text!) ?? 0 <= 1675.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(66.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1675.01  && Double(textField.text!) ?? 0 <= 1690.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(68.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1690.01  && Double(textField.text!) ?? 0 <= 1705.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(69.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1705.01  && Double(textField.text!) ?? 0 <= 1720.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(71.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1720.01  && Double(textField.text!) ?? 0 <= 1735.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(73.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1735.01  && Double(textField.text!) ?? 0 <= 1750.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(75.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1750.01  && Double(textField.text!) ?? 0 <= 1765.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(77.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1765.01  && Double(textField.text!) ?? 0 <= 1780.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(78.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1780.01  && Double(textField.text!) ?? 0 <= 1800.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(81.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1800.01  && Double(textField.text!) ?? 0 <= 1820.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(83.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1820.01  && Double(textField.text!) ?? 0 <= 1840.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(85.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1840.01  && Double(textField.text!) ?? 0 <= 1860.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(88.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1860.01  && Double(textField.text!) ?? 0 <= 1880.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(90.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1880.01  && Double(textField.text!) ?? 0 <= 1900.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(93.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1900.01  && Double(textField.text!) ?? 0 <= 1920.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(95.00)
                }
        else if Double(dependents.text!) == 10 && Double(textField.text!) ?? 0 >= 1920.01  && Double(textField.text!) ?? 0 <= 1940.00 && marriageStatus.selectedSegmentIndex == 1 {
                    fedTax.text = String(97.00)
                }
          else{
            fedTax.text = String(0.00)
          }
        
        

        
       
        //output.text = String(Int(input1.text!)! + Int(input2.text!)!)
        
        ssTax.text = String(format:"%.2f",(Double(textField.text!)?.rounded() ?? 0) * 0.062)
        mediTax.text = String(format:"%.2f",(Double(textField.text!) ?? 0) * 0.0145)
        
      
        sumDed.text = String(format:"%.2f",Double(ssTax.text!)! + Double(mediTax.text!)!+Double(fedTax.text!)!)
        netPay.text = String(format:"%.2f",(Double(textField.text!) ?? 0) - Double(sumDed.text!)!)
        

        
        //let formatter = NumberFormatter()
       // formatter.numberStyle = NumberFormatter.Style.spellOut
       // let number = Double(netPay.text!) ?? 0
        
       // WarningText.text = formatter.string(from: NSNumber(value: number))!
       
    }
// Do something
}

