//
//  TableViewController.swift
//  Home Work 2
//
//  Created by Olzhas Sagidolda on 1/10/24.
//

import UIKit

class TableViewController: UITableViewController {
    
    //var arrayNames = [ "Jonh", "Theon", "Ramsy", "Stanis", "Tirion"]
   // var arraySurnames = [ "Snow", "Greyjoy", "Bolton", "Baratheon", "Lannister"]
   // var arrayImage = [ "jonh", "theon", "ramsy", "stanis", "tirion"]
    //let array = [ 1, 2, 3, 4, 5]
    
    var arrayPerson = [ Person(name: "Jonh", surename: "Snow", imagename: "jonh", place: "Winterfell",
                            inform: "Jon Snow, born Aegon Targaryen, is the son of Lyanna Stark and Rhaegar Targaryen, the late Prince of Dragonstone. From infancy, Jon is presented as the bastard son of Lord Eddard Stark, Lyanna's brother, and raised alongside Eddard's lawful children at Winterfell."),
                        Person(name: "Theon", surename: "Greyjoy", imagename: "theon", place: "Pyke", inform: "Theon was the youngest son of Lord Balon and Lady Alannys Greyjoy. Balon is the head of House Greyjoy and Lord of the Iron Islands. The Iron Islands are one of the constituent regions of the Seven Kingdoms and House Greyjoy is one of the Great Houses of the realm. House Greyjoy rule the region from their seat at Pyke and Balon also holds the title Lord Reaper of Pyke."),
                        Person(name: "Ramsay", surename: "Bolton", imagename: "ramsy", place: "Dreadfort", inform: "Ramsay is Roose's only child, as well as the only possible heir to House Bolton until the birth of a child by Roose's new wife, Fat Walda Frey. He stays behind as castellan of the Dreadfort when his father left for the south to fight in the War of the Five Kings"),
                        Person(name: "Stannis", surename: "Baratheon", imagename: "stanis", place: "Stormcastle", inform: "Stannis is the second-born son of Lord Steffon Baratheon and Lady Cassana Estermont, the younger brother of the late King Robert Baratheon and older brother of Renly Baratheon. Steffon was the head of House Baratheon and Lord Paramount of the Stormlands. The Stormlands are one of the constituent regions of the Seven Kingdoms and House Baratheon is one of the Great Houses of the realm. Steffon died when the boys were young and Robert inherited his titles. Stannis is a serious and severe man."),
                        Person(name: "Tyrion", surename: "Lannister", imagename: "tirion", place: "Lannisport", inform: "Lord Tyrion Lannister is the youngest child of Lord Tywin Lannister and younger brother of Cersei and Jaime Lannister. A dwarf, he uses his wit and intellect to overcome the prejudice he faces. He is the current Lord of Casterly Rock and Hand of the King to Brandon Stark.")]
                       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func addPerson(_ sender: Any) {
       /* arrayNames.append("new name")
        arraySurnames.append("new surname")
        arrayImage.append("avatar")*/
        
        arrayPerson.append(Person(name: "new name", surename: "new surname", imagename: "avatar", place: "anywhere", inform: "nothing"))
        tableView.reloadData()
    }
    // MARK: - Table view data source

    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPerson.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayPerson[indexPath.row].name

        let label1 = cell.viewWithTag(1001) as! UILabel
        label1.text = arrayPerson[indexPath.row].surename
        
        let imageView = cell.viewWithTag(1002) as! UIImageView
        imageView.image = UIImage(named: arrayPerson[indexPath.row].imagename)
        
        let label2 = cell.viewWithTag(1003) as! UILabel
        label2.text = arrayPerson[indexPath.row].place
        
        let label3 = cell.viewWithTag(1004) as! UILabel
        label3.text = arrayPerson[indexPath.row].inform
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
       /* detailVC.name = arrayPerson[indexPath.row].name
        detailVC.surname = arrayPerson[indexPath.row].surename
        detailVC.imagename = arrayPerson[indexPath.row].imagename */
        
        detailVC.person = arrayPerson[indexPath.row]
        
    navigationController?.show(detailVC, sender: self)
        
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
         /*   arrayNames.remove(at: indexPath.row)
            arraySurnames.remove(at: indexPath.row)
            arrayImage.remove(at: indexPath.row) */
            arrayPerson.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
