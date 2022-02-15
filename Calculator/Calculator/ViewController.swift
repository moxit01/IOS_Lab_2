//
//  ViewController.swift
//  Calculator
//
//  Created by Moxit Shah on 15/02/22.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var caloperation: UILabel!
    @IBOutlet weak var calresults: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clear()
    }
    
    var operation:String = ""
    
    func clear(){
        operation = ""
        caloperation.text = ""
        calresults.text = ""
    }
    
    func addoperations(value: String){
        operation = operation + value
        caloperation.text = operation
    }
    

    
    @IBAction func equals(_ sender: Any) {
        let expression = NSExpression(format: operation)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calresults.text = resultString
    }
    
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
    
    @IBAction func AllClear(_ sender: Any)
    {
        clear()
    }
    @IBAction func back(_ sender: Any)
    {
        if (!operation.isEmpty){
            operation.removeLast()
            caloperation.text = operation
        }
    }
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

