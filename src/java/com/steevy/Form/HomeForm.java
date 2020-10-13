/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.steevy.Form;

import com.steevy.Metier.CalculAge;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Sanon
 */
public class HomeForm {

    public String traitement(HttpServletRequest request) {
        String reponse = "";
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String s_age = request.getParameter("annee");

        if (nom.isEmpty() || prenom.isEmpty() || s_age.isEmpty()) {
            reponse = "Aucun Champs null!!!!!!";
        } else {
            int age = Integer.parseInt(s_age);
            if (age >= 2020) {
                reponse = "L'annee doit etre inferieur a l'annee Actuel";
            } else {
                CalculAge a = new CalculAge();
                int rep = a.calculAge(age);
                if (rep > 18) {
                    reponse = nom + " " + prenom + " vous avez " + rep + " Ans vous etes Majeure";
                } else {
                    reponse = nom + " " + prenom + " vous avez " + rep + " Ans vous etes Mineure";
                }
            }
        }
        return reponse;
    }
}
