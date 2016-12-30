//
//  ChoiViewController.swift
//  DuongBV
//
//  Created by OceanMAC on 12/12/16.
//  Copyright (c) 2016 OceanMAC. All rights reserved.
//

import UIKit
class ChoiViewController: UIViewController {
    var tongCauDaLam = 0;
    var tongCauCanLam = 7
    var ketQua = 0
    var idChuDe = Int();

    var mangChuDe:[String]!/* = ["con vat duoi nuoc","con vat tren can","do vat"]*/
    
    var mangCau:[String]!// = //["cuttle","octopus","shark","dolphin","whale","crocodile","catfish","turtle","frog","shrimp"]
    var cau = 0
    var randomABC:Int! = 1
    

    

 
    @IBOutlet weak var hinhAnh: UIImageView!
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var lbl3: UILabel!
    
    @IBOutlet weak var btnA: UIButton!
    
    @IBOutlet weak var btnB: UIButton!
    
    @IBOutlet weak var btnC: UIButton!
    @IBAction func btn1(sender: AnyObject) {
        tongCauDaLam = tongCauDaLam + 1
        if tongCauDaLam > tongCauCanLam - 1{
            ketQua = ketQua + 1
        }
        if tongCauDaLam > tongCauCanLam - 1 {
       
            var storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            /*var vc:UINavigationController = storyboard.instantiateViewControllerWithIdentifier("idstory") as! UINavigationController*/
            var vc:KetQuaViewController = storyboard.instantiateViewControllerWithIdentifier("idKQ") as! KetQuaViewController
            vc.textKQ = String(ketQua)
            self.presentViewController(vc, animated: true, completion: nil)
                   
        }
        else
        {
            if lbl1.text == mangCau[cau]
            {
                ketQua = ketQua + 1
                
                //doi cau khac
                cau = random()%15
                var randcau =  cau   + idChuDe * 15
                
                var anhChuoi:String!
                anhChuoi = String(randcau + 1) + ".png"
                
                println(anhChuoi)
                self.hinhAnh.image = UIImage(named: anhChuoi)
                
                //dao ngau nhien cau tra loi dung la A B hay C
                var rand = random()%3
                var randSai1 = random()%15
                var randSai2 = random()%15
                while randSai1 == cau{
                    randSai1 = random()%15
                }
                while randSai2 == cau{
                    randSai2 = random()%15
                }
                while randSai2 == randSai1{
                    randSai2 = random()%15
                }
                
                
                if rand == 0
                {
                    lbl1.text = mangCau[cau]
                    lbl2.text = mangCau[randSai1]
                    lbl3.text = mangCau[randSai2]
                }
                if rand == 1
                {
                    lbl2.text = mangCau[cau]
                    lbl1.text = mangCau[randSai1]
                    lbl3.text = mangCau[randSai2]
                }
                if rand == 2
                {
                    lbl3.text = mangCau[cau]
                    lbl1.text = mangCau[randSai1]
                    lbl2.text = mangCau[randSai2]
                }

               
            }
            
        }

    }
    
    @IBAction func btn2(sender: AnyObject) {
        tongCauDaLam = tongCauDaLam + 1
        if tongCauDaLam > tongCauCanLam - 1{
            ketQua = ketQua + 1
        }
        if tongCauDaLam > tongCauCanLam - 1{
            
            var storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            /*var vc:UINavigationController = storyboard.instantiateViewControllerWithIdentifier("idstory") as! UINavigationController*/
            var vc:KetQuaViewController = storyboard.instantiateViewControllerWithIdentifier("idKQ") as! KetQuaViewController
            vc.textKQ = String(ketQua)
            self.presentViewController(vc, animated: true, completion: nil)
            
        }
        else
        {
            if lbl2.text == mangCau[cau]
            {
                ketQua = ketQua + 1
                //doi cau khac
                cau = random()%15
                var randcau =  cau   + idChuDe * 15
                
                var anhChuoi:String!
                anhChuoi = String(randcau + 1) + ".png"
                
                println(anhChuoi)
                self.hinhAnh.image = UIImage(named: anhChuoi)
                
                //dao ngau nhien cau tra loi dung la A B hay C
                var rand = random()%3
                var randSai1 = random()%15
                var randSai2 = random()%15
                while randSai1 == cau{
                    randSai1 = random()%15
                }
                while randSai2 == cau{
                    randSai2 = random()%15
                }
                while randSai2 == randSai1{
                    randSai2 = random()%15
                }
                if rand == 0
                {
                    lbl1.text = mangCau[cau]
                    lbl2.text = mangCau[randSai1]
                    lbl3.text = mangCau[randSai2]
                }
                if rand == 1
                {
                    lbl2.text = mangCau[cau]
                    lbl1.text = mangCau[randSai1]
                    lbl3.text = mangCau[randSai2]
                }
                if rand == 2
                {
                    lbl3.text = mangCau[cau]
                    lbl1.text = mangCau[randSai1]
                    lbl2.text = mangCau[randSai2]
                }

                //
            }
            
        }


    }
    @IBAction func btn3(sender: AnyObject) {
        tongCauDaLam = tongCauDaLam + 1
        if tongCauDaLam > tongCauCanLam - 1{
            ketQua = ketQua + 1
        }
        if tongCauDaLam > tongCauCanLam - 1{
            
            var storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            /*var vc:UINavigationController = storyboard.instantiateViewControllerWithIdentifier("idstory") as! UINavigationController*/
            var vc:KetQuaViewController = storyboard.instantiateViewControllerWithIdentifier("idKQ") as! KetQuaViewController
            vc.textKQ = String(ketQua)
            self.presentViewController(vc, animated: true, completion: nil)
            
        }
        else
        {
            if lbl3.text == mangCau[cau]
            {
                ketQua = ketQua + 1
                //doi cau khac
                cau = random()%15
                var randcau =  cau   + idChuDe * 15
                
                var anhChuoi:String!
                anhChuoi = String(randcau + 1) + ".png"
                
                println(anhChuoi)
                self.hinhAnh.image = UIImage(named: anhChuoi)
                
                //dao ngau nhien cau tra loi dung la A B hay C
                var rand = random()%3
                var randSai1 = random()%15
                var randSai2 = random()%15
                while randSai1 == cau{
                    randSai1 = random()%15
                }
                while randSai2 == cau{
                    randSai2 = random()%15
                }
                while randSai2 == randSai1{
                    randSai2 = random()%15
                }
                
                if rand == 0
                {
                    lbl1.text = mangCau[cau]
                    lbl2.text = mangCau[randSai1]
                    lbl3.text = mangCau[randSai2]
                }
                if rand == 1
                {
                    lbl2.text = mangCau[cau]
                    lbl1.text = mangCau[randSai1]
                    lbl3.text = mangCau[randSai2]
                }
                if rand == 2
                {
                    lbl3.text = mangCau[cau]
                    lbl1.text = mangCau[randSai1]
                    lbl2.text = mangCau[randSai2]
                }

                //
            }
           
        }


    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(String(idChuDe))
        ///
        mangCau = Array(count:500, repeatedValue:String())
       
        var iCau:Int! = 0;
        let path = NSBundle.mainBundle().pathForResource("file", ofType: "txt")
        let filemng = NSFileManager.defaultManager()
        if filemng.fileExistsAtPath(path!){
            
            let fulltext = String(contentsOfFile: path!, encoding: NSUTF8StringEncoding,error : nil)
            let nhieuDongData = fulltext!.componentsSeparatedByString("\n") as [String]
            //println(nhieuDongData.count)
         
            //var k = 1
            for i in 1...nhieuDongData.count - 1{
                var dongData:[String]!
                dongData = nhieuDongData[i].componentsSeparatedByString("-")
                /*print(dongData[0])
                print(dongData[1])
                print(dongData[2])
                println(dongData[3])*/
                //println(String(k))
                //k++
                if idChuDe + 1 == dongData[2].toInt(){
                    mangCau[iCau] = dongData[1]
                    //println(iCau)
                    //println(mangCau[iCau])
                    
                    iCau = iCau + 1
                }
            }
        }

        
        cau = random()%15
        var randcau =  cau   + idChuDe * 15
        
        var anhChuoi:String!
        anhChuoi = String(randcau + 1) + ".png"
 
        //println(anhChuoi)
        self.hinhAnh.image = UIImage(named: anhChuoi)
        
        //dao ngau nhien cau tra loi dung la A B hay C
        var rand = random()%3
        var randSai1 = random()%15
        var randSai2 = random()%15
        while randSai1 == cau{
            randSai1 = random()%15
        }
        while randSai2 == cau{
            randSai2 = random()%15
        }
        while randSai2 == randSai1{
            randSai2 = random()%15
        }
        if rand == 0
        {
            lbl1.text = mangCau[cau]
            lbl2.text = mangCau[randSai1]
            lbl3.text = mangCau[randSai2]
        }
        if rand == 1
        {
            lbl2.text = mangCau[cau]
            lbl1.text = mangCau[randSai1]
            lbl3.text = mangCau[randSai2]
        }
        if rand == 2
        {
            lbl3.text = mangCau[cau]
            lbl1.text = mangCau[randSai1]
            lbl2.text = mangCau[randSai2]
        }
        

    }
        
        // Do any additional setup after loading the view.
    //}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
