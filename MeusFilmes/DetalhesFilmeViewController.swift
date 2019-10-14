
import UIKit
import Foundation

class DetalhesFilmeViewController: UIViewController{
    
    @IBOutlet weak var filmeImageView: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var descricaoLabel: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        filmeImageView.image = filme.image
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
    }
}
