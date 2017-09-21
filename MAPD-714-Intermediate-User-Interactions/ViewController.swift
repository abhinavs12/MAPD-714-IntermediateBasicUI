/*
 * Name: Abhinav Sharma
 * Date: September 20, 2017
 * StudentID: 300975677
 * Description: Intermediate User Interaction Demo
 * Version: 0.3 - Added Partial Functionality
 */

import UIKit

class ViewController: UIViewController {

    //OUTLETS+++++++++++
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    @IBOutlet weak var doSomethingButton: UIButton!
    
    
    //INHERITED METHODS ++++++++++
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //ACTION METHODS ++++++++++++++
    
    @IBAction func textFieldDoneEditing(_ sender: UITextField) {
        
        sender.resignFirstResponder()
        
    }
    
    
    @IBAction func onTapGestureRecognized(_ sender: UITapGestureRecognizer) {
        
        nameTextField.resignFirstResponder()
        numberTextField.resignFirstResponder()
        
        
    }
    
    
    @IBAction func onSliderChange(_ sender: UISlider) {
        
        sliderLabel.text="\(lroundf(sender.value))"
        
    }
    
    @IBAction func onSegmentedControlChange(_ sender: UISegmentedControl) {
        
        if(sender.selectedSegmentIndex==0){
            leftSwitch.isHidden=false
            rightSwitch.isHidden=false
            doSomethingButton.isHidden=true
        }else{
            leftSwitch.isHidden=true
            rightSwitch.isHidden=true
            doSomethingButton.isHidden=false
        }
        
    }
    
    @IBAction func onDoSomethingPressed(_ sender: UIButton) {
        
        
        
    }
    
    @IBAction func onSwitchChanged(_ sender: UISwitch) {
    
        let setting = sender.isOn
        leftSwitch.setOn(setting, animated: true)
        rightSwitch.setOn(setting, animated: true)
        
        
    
    }
    
    
    

}

