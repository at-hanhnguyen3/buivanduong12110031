//
//  DSTableViewController.swift
//  DuongBV
//
//  Created by OceanMAC on 12/23/16.
//  Copyright (c) 2016 OceanMAC. All rights reserved.
//

import UIKit

class DSTableViewController: UITableViewController {
    
    
    var mangChuDe:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*mangChuDe = ["con vat duoi nuoc","con vat tren can","do vat","goc hoc tap","phuong tien giao thong","trai cay","chim"]*/
        mangChuDe = Array(count:500, repeatedValue:String())
        var iChuDe:Int! = 0;
        let path = NSBundle.mainBundle().pathForResource("file", ofType: "txt")
        let filemng = NSFileManager.defaultManager()
        if filemng.fileExistsAtPath(path!){
            
            let fulltext = String(contentsOfFile: path!, encoding: NSUTF8StringEncoding,error : nil)
            let nhieuDongData = fulltext!.componentsSeparatedByString("\n") as [String]
            //println(nhieuDongData.count)
            
            /*let trimmed = (string as NSString).stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())*/
            
            //var k = 1
            for i in 1...nhieuDongData.count - 1{
                var dongData:[String]!
                dongData = nhieuDongData[i].componentsSeparatedByString("-")
                //println(String(k))
                //k++    
                if iChuDe < dongData[2].toInt()
                {
                    
                    let tenCD = dongData[3].stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
                    mangChuDe[iChuDe] = tenCD
                    //print(tenCD)
                    //println(dongData[3])
                    iChuDe = iChuDe + 1
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return mangChuDe.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        // Configure the cell...
        cell.textLabel?.text = mangChuDe[indexPath.row]
        
        return cell
    }
    


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var selectRow = self.tableView.indexPathForCell(sender as! UITableViewCell)
        
        var chon:Int! = selectRow?.row
        var destView : ChoiViewController = segue.destinationViewController as! ChoiViewController
        //println(chon)
     
        destView.textChuDe = String(chon)
        destView.idChuDe = chon + 1
        destView.mangChuDe = mangChuDe
     

    }
    

}
