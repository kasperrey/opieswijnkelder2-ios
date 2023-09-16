import UIKit

class TableViewController: UITableViewController, biertjesViewControllerDelegate {
    
    var biertjes_lijst = [biertjes]()
    
    func BiertjesViewController(_ BiertjesViewController: biertjesViewController, ditbiertjetoevoegen biertje: biertjes) {
        biertjes_lijst.append(biertje)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return biertjes_lijst.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "biertjecellinidentifier", for: indexPath)
        let biertje = biertjes_lijst[indexPath.row]
        cell.textLabel?.text = biertje.naam
        cell.detailTextLabel?.text = String(biertje.aantal)
        return cell
    }
}
