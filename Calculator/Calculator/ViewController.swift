

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subButton: UIButton!
    @IBOutlet weak var multiButton: UIButton!
    @IBOutlet weak var divButton: UIButton!
    @IBOutlet weak var lblResult: UILabel!
    var no1:Double?
    var no2:Double?
    var pheptinh:String?
    var count1:Int?
    var count2:Int?
    var equal:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text = "0"
        count1 = 0
        count2 = 0
    }
    
    func clearcustomPheptinhButton(button1:UIButton, button2:UIButton,button3:UIButton,button4:UIButton){
        button1.layer.borderColor = UIColor.orange.cgColor
        button2.layer.borderColor = UIColor.orange.cgColor
        button3.layer.borderColor = UIColor.orange.cgColor
        button4.layer.borderColor = UIColor.orange.cgColor
    }
    func customPheptinhButton(button:UIButton){
        button.backgroundColor = .clear
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
    }
    
    func relace0(){
        let rePlace0 = lblResult.text!.replacingOccurrences(of: ".0", with: "")
        lblResult.text = rePlace0
    }
    
    func pheptinh(phepTinh:String){
        pheptinh = phepTinh
        no1 = Double(lblResult.text!)
        
        
    }
    
    
    @IBAction func equalButton(_ sender: Any) {
        equal = 0
        count1 = 0
        count2 = 0
        var result:Double = 0
        no2 = Double(lblResult.text!)
        clearcustomPheptinhButton(button1: divButton, button2: addButton, button3: multiButton, button4: subButton)
        if(pheptinh == "+"){
            result = no1! + no2!
            lblResult.text = String(Double(result))
            relace0()
        }
        if(pheptinh == "-"){
            result = no1! - no2!
            lblResult.text = String(Double(result))
            relace0()
        }

        if(pheptinh == "*"){
            result = no1! * no2!
            lblResult.text = String(Double(result))
            relace0()
        }

        if(pheptinh == "/"){
            result = no1! / no2!
            lblResult.text = String(Double(result))
            relace0()
        }
    }
    
    
    @IBAction func multiButton(_ sender: Any) {
        count1 = 0
        count2 = 0
        clearcustomPheptinhButton(button1: multiButton, button2: addButton, button3: subButton, button4: divButton)
        customPheptinhButton(button: multiButton)
        pheptinh(phepTinh: "*")
        
    }
    
    
    @IBAction func divButton(_ sender: Any) {
        count1 = 0
        count2 = 0
        clearcustomPheptinhButton(button1: multiButton, button2: addButton, button3: subButton, button4: divButton)
        customPheptinhButton(button: divButton)
        pheptinh(phepTinh: "/")
    }
    
    @IBAction func subButton(_ sender: Any) {
        count1 = 0
        count2 = 0
        clearcustomPheptinhButton(button1: multiButton, button2: addButton, button3: subButton, button4: divButton)
        customPheptinhButton(button: subButton)
        pheptinh(phepTinh: "-")
    }
    
    @IBAction func addButton(_ sender: Any) {
        count1 = 0
        count2 = 0
        clearcustomPheptinhButton(button1: multiButton, button2: addButton, button3: subButton, button4: divButton)
        customPheptinhButton(button: addButton)
        pheptinh(phepTinh: "+")
    }
    
    
    func clickNumber(no:String){
        var value = lblResult.text
        
        if(lblResult.text == "0" || Double(lblResult.text!)! < 0 || lblResult.text! == "" || lblResult.text == nil){
            value = ""
            lblResult.text = value
        }
        if(count1 == 0 && pheptinh == "+" || count1 == 0 && pheptinh == "-" || count1 == 0 && pheptinh == "*" || count1 == 0 && pheptinh == "/"){
            value = ""
            lblResult.text = value
            count1 = 1
        }
        value = value! + no
        lblResult.text = value
        
    }
    
    @IBAction func percentage(_ sender: Any) {
        var value = Float(lblResult.text!)
        value = value! / 100
        lblResult.text = String(Float(value!))
        
    }
    
    
    @IBAction func opositeNumber(_ sender: Any) {
        count2 = 0
        var value = Float(lblResult.text!)
        value = value! * -1
        lblResult.text = String(Float(value!))
        relace0()
        
    }
    
    
    @IBAction func acBtn(_ sender: Any) {
        count1 = 0
        count2 = 0
        no1 = 0
        no2 = 0
        clearcustomPheptinhButton(button1: multiButton, button2: addButton, button3: subButton, button4: divButton)
        lblResult.text = "0"
        relace0()
    }
    
    @IBAction func zeroBtn(_ sender: Any) {
        clickNumber(no: "0")
    }
    
    @IBAction func oneBtn(_ sender: Any) {
        clickNumber(no: "1")
    }
    
    @IBAction func twoBtn(_ sender: Any) {
        clickNumber(no: "2")
    }
    
    @IBAction func threeBtn(_ sender: Any) {
        clickNumber(no: "3")
    }
    
    @IBAction func fourBtn(_ sender: Any) {
        clickNumber(no: "4")
    }
    
    @IBAction func fiveBtn(_ sender: Any) {
        clickNumber(no: "5")
    }
    
    @IBAction func sixBtn(_ sender: Any) {
        clickNumber(no: "6")
    }
    
    @IBAction func sevenBtn(_ sender: Any) {
        clickNumber(no: "7")
    }
    
    @IBAction func eightBtn(_ sender: Any) {
        clickNumber(no: "8")
    }
    
    @IBAction func nineBtn(_ sender: Any) {
        clickNumber(no: "9")
    }
    
    @IBAction func phayBtn(_ sender: Any) {
        var value = lblResult.text
        
        if(count2 == 0 && Double(lblResult.text!)! >= 0 && equal == nil){
            value = value! + "."
            count2 = 1
            lblResult.text = value
        }
        

        if(Double(lblResult.text!)! < 0 && count2 == 0){
            value = "0."
            count2 = 1
            lblResult.text = value
        }
        if(equal == 0 && count2 == 0){
            value = "0"
            equal = nil
            count2 = 0
            lblResult.text = value

        }
            
    }
}
