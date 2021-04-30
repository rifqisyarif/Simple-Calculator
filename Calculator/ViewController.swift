//
//  ViewController.swift
//  Calculator
//
//  Created by Reefkey on 11/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var labelHasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnTambah(_ sender: UIButton) {
        Hitung(aritmatik: "+")
    }
    @IBAction func btnKurang(_ sender: UIButton) {
        Hitung(aritmatik: "-")
    }
    @IBAction func btnKali(_ sender: UIButton) {
        Hitung(aritmatik: "X")
    }
    @IBAction func btnBagi(_ sender: UIButton) {
        Hitung(aritmatik: "/")
    }
    
    
    func Hitung(aritmatik : String){
        if textField1.text == "" || textField2.text == ""{
            labelHasil.text = "Tidak Boleh Kosong"
        } else {
            let input1 = Double(textField1.text!)
            let input2 = Double(textField2.text!)
            var Hasil : Double
            
        switch aritmatik {
            case "+": Hasil=input1! + input2!
            case "-": Hasil=input1! - input2!
            case "*": Hasil=input1! * input2!
            case "/": Hasil=input1! / input2!
            default:
                break
            }
            labelHasil.text = String (Hasil)
            }
    }

}

