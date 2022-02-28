/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tn.edu.esprit.gui;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.input.SwipeEvent;
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;

/**
 * FXML Controller class
 *
 * @author wassimromdhane
 */
public class FrontController implements Initializable {

    @FXML
    private Button btnHome;
    @FXML
    private Button btnConversation;
    @FXML
    private Button btnProfile;
    @FXML
    private Button btnRestaurant;
    @FXML
    private Button btnRecettes;
    @FXML
    private Button btnEvent;
    @FXML
    private Button btnSettings;
    @FXML
    private Button btnLogout;
    @FXML
    private Pane pnlHome;
    @FXML
    private Pane pnlConversation;
    @FXML
    private Pane pnlProfile;
    @FXML
    private Pane pnlRestaurant;
    @FXML
    private Pane pnlRecettes;
    @FXML
    private VBox pnItems;
    @FXML
    private Pane pnlEvent;
    @FXML
    private Pane pnlSettings;
    @FXML
    private Pane pnlLogout;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        pnlHome.setStyle("-fx-background-color : #e7e5e5");
        pnlHome.toFront();
    }

    @FXML
    public void handleClicks(ActionEvent actionEvent) {
        if (actionEvent.getSource() == btnProfile) {
            pnlProfile.setStyle("-fx-background-color : ##e7e5e5");
            pnlProfile.toFront();
        }
        if (actionEvent.getSource() == btnRestaurant) {
            pnlRestaurant.setStyle("-fx-background-color : #e7e5e5");
            pnlRestaurant.toFront();
        }
        if (actionEvent.getSource() == btnHome) {
            pnlHome.setStyle("-fx-background-color : #e7e5e5");
            pnlHome.toFront();
        }
        if (actionEvent.getSource() == btnConversation) {
            pnlConversation.setStyle("-fx-background-color : #e7e5e5");
            pnlConversation.toFront();
        }
        if (actionEvent.getSource() == btnLogout) {
            pnlLogout.setStyle("-fx-background-color : #e7e5e5");
            pnlLogout.toFront();
        }
        if (actionEvent.getSource() == btnSettings) {
            pnlSettings.setStyle("-fx-background-color : #e7e5e5");
            pnlSettings.toFront();
        }
        if (actionEvent.getSource() == btnEvent) {
            pnlEvent.setStyle("-fx-background-color : #e7e5e5");
            pnlEvent.toFront();
        }
        if (actionEvent.getSource() == btnRecettes) {
            pnlRecettes.setStyle("-fx-background-color : #e7e5e5");
            pnlRecettes.toFront();
        }
    }

    @FXML
    private void swipeRight(SwipeEvent event) {
    }

}