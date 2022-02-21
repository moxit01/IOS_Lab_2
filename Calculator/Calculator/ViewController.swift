//
//  ViewController.swift
//  Calculator
//
//  Created by Moxit Shah on 15/02/22.
/* App icon used from :https://www.reddit.com/r/Rainbow6/comments/j0eeau/for_anyone_trying_to_make_new_app_icons_i_present/  */
//

import UIKit

class ViewController: UIViewController
{
    var value: Double=0
    var operation:String = ""
    
    //caloperation and cal result for the displaying the calculator operation and result respectively.
    
    @IBOutlet weak var caloperation: UILabel!
    @IBOutlet weak var calresults: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clear()
    }
    
    
    
    //clear  function
    func clear(){
        operation = ""
        caloperation.text = ""
        calresults.text = ""
    }
    
    // all clear function
    @IBAction func AllClear(_ sender: Any)
    {
        clear()
    }
    
    // backspacing keyword.
    @IBAction func back(_ sender: Any)
    {
        if (!operation.isEmpty){
            operation.removeLast()
            caloperation.text = operation
        }
    }
    
    
    //func for add, divide, subtract, multiply
    func addoperations(value: String){
        if (operation != "/" && operation != "*" && operation != "%"){
        operation = operation + value
        caloperation.text = operation
        }
    }
    
    
    // Equal action
    @IBAction func equals(_ sender: Any)
    {
        let expression = NSExpression(format: operation)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calresults.text = resultString
    }
    
    //converting result to double or float
    func formatResult(result: Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String(format: "%.2f", result)
        }
    }
    
    
    // sin trignometry function
    @IBAction func sinval(_ sender: Any)
    {
        let calvalue = caloperation.text
        if (calvalue == "")
        {
            calresults.text = "write num then trig"
        }
        else
        {
            value = Double(caloperation.text!)!
            calresults.text = String(sin(value*Double.pi/180))
        }
    }

    // cos trignometry function
    @IBAction func cosval(_ sender: Any)
    {
        let calvalue = caloperation.text
        if (calvalue == "")
        {
            calresults.text = "write num then trig"
        }
        else
        {
            value = Double(caloperation.text!)!
            calresults.text = String(cos(value*Double.pi/180))
        }
        
    }
    
    // tan trignometry function
    @IBAction func tanval(_ sender: Any)
    {
        let calvalue = caloperation.text
        if (calvalue == "")
        {
            calresults.text = "write num then trig"
        }
        else
        {
            value = Double(caloperation.text!)!
            calresults.text = String(tan(value*Double.pi/180))
        }
        
    }

    //square trignometry function
    @IBAction func squareroot(_ sender: Any)
    {
        value = Double(caloperation.text!)!
        calresults.text = String(sqrt(value))
        
    }
    
    //cuberoot trignometry function
    @IBAction func cuberoot(_ sender: Any)
    {
        value = Double(caloperation.text!)!
        let cube = pow(value, 1/3)
        calresults.text = String(cube)
        
    }
    
   
    // all number and operation functions
    
    
    @IBAction func percent(_ sender: Any)
    {
        addoperations(value: "%")
    }
    @IBAction func addition(_ sender: Any)
    {
        addoperations(value: "+")
    }
    @IBAction func subtract(_ sender: Any)
    {
        addoperations(value: "-")
    }
    
    @IBAction func multiply(_ sender: Any)
    {
        addoperations(value: "*")
    }
    
    @IBAction func divide(_ sender: Any)
    {
        addoperations(value: "/")
    }
    
    @IBAction func nine(_ sender: Any)
    {
        addoperations(value: "9")
    }
    @IBAction func eight(_ sender: Any)
    {
        addoperations(value: "8")
    }
    @IBAction func seven(_ sender: Any)
    {
        addoperations(value: "7")
    }
    @IBAction func six(_ sender: Any)
    {
        addoperations(value: "6")
    }
    @IBAction func five(_ sender: Any)
    {
        addoperations(value: "5")
    }
    @IBAction func four(_ sender: Any)
    {
        addoperations(value: "4")
    }
    @IBAction func three(_ sender: Any)
    {
        addoperations(value: "3")
    }
    @IBAction func two(_ sender: Any)
    {
        addoperations(value: "2")
    }
    @IBAction func one(_ sender: Any)
    {
        addoperations(value: "1")
    }
    
    @IBAction func zero(_ sender: Any)
    {
        addoperations(value: "0")
    }
    
    @IBAction func decimal(_ sender: Any)
    {
        addoperations(value: ".")
    }
    
}

