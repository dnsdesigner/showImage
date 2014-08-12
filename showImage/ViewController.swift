//
//  ViewController.swift
//  showImage
//
//  Created by Dennis de Oliveira on 07/08/14.
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomImage: UIImageView!
    
    @IBOutlet weak var botaoExibir: UIButton!
                            
    @IBOutlet weak var nomeImagem: UILabel!
    
    @IBAction func actionExibirImagem(sender: AnyObject) {
        
        if(randomImage.hidden==true){
            randomImage.hidden=false
            nomeImagem.hidden=false
        }
        
        var titleTela = ""
        var msgTela = ""
        var listaImagens = [
            "imagem1.jpg",
            "imagem2.jpg",
            "imagem3.jpg"
        ]
        
        // Gera um número randomico
        let randomIndex = Int(arc4random_uniform(UInt32(listaImagens.count)))
        
        
        // Altera o endereço da imagem no image View
        // Lista imagens é um array de nomes de imagens
        
        randomImage.image = UIImage(named: listaImagens[randomIndex])
        nomeImagem.text = listaImagens[randomIndex]
        
        // Bordas label
        nomeImagem.layer.borderWidth = 0.5
        //Cor baseada em porcentagem
        nomeImagem.layer.borderColor = UIColor(red: 0.03, green: 0.37, blue: 0.5, alpha: 1).CGColor
        
        
        /*if(randomImage.hidden==false){
            
            randomImage.hidden = true
            nomeImagem.hidden = true
            
            botaoExibir.setTitle("Exibir Imagem", forState: .Normal)
            
            msgTela = "Imagem ocultada com sucesso!"
            
        }
        else if(randomImage.hidden==true)
        {
            randomImage.hidden = false
            nomeImagem.hidden = false
            
            botaoExibir.setTitle("Ocultar Imagem", forState: .Normal)
            
            msgTela = "Mensagem exibida com sucesso!"
        }*/
        
        // Tela de Alerta com texto alternado
        /*let telaAlerta = UIAlertController(title: "Exibição de Imagem",
            message: msgTela, preferredStyle: UIAlertControllerStyle.Alert)
        
        telaAlerta.addAction(UIAlertAction(title: "Sair", style: UIAlertActionStyle.Default,
            handler: nil))
        
        self.presentViewController(telaAlerta, animated: true, completion: nil)*/
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

