//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Shawon Ashraf on 12/24/17.
//  Copyright © 2017 Shawon Ashraf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inpField: UITextField!
    @IBOutlet weak var getFibButton: UIButton!
    @IBOutlet weak var textField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func fibonacci(n:Int) -> Int {
        if n < 2 {
            return n
        } else {
            return fibonacci(n: n - 1) + fibonacci(n: n - 2)
        }
    }
    
    func fibonacciTill(_ n:Int) -> [Int] {
        var fibs: [Int] = []
        for i in 0...n {
            let fib = fibonacci(n: i)
            fibs.append(fib)
        }
        
        return fibs
    }
    
    @IBAction func writeFibToTextField(_ sender: Any) {
        var n = 0
        if let text = inpField.text {
            n = Int(text)!
        }
        
        var fibTill = fibonacciTill(n)
        textField.text = "\(fibTill)"
    }
    

}

