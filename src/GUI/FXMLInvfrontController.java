/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI;

import entities.invitation;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ListView;
import services.ServiceInvitation;

/**
 * FXML Controller class
 *
 * @author Asus
 */
public class FXMLInvfrontController implements Initializable {

    /**
     * Initializes the controller class.
     */
    
    
      @FXML
    private ListView<invitation> listvI;
    
    
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
         
        ServiceInvitation i = new ServiceInvitation();
    listvI.getItems().addAll(i.afficher());
      
        
        
        // TODO
    }    
    
}