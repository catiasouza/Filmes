

import UIKit

class ViewController: UITableViewController{
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        filme = Filme(titulo: "Filme 1", descricao: "Descricao")
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 2", descricao: "Descricao 2")
        filmes.append(filme)
           
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var filme = filmes[indexPath.row]
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = filme.titulo
        
        return celula
        
    }


}

