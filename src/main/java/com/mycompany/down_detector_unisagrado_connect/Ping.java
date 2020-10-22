/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.down_detector_unisagrado_connect;

import java.io.IOException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

/**
 *
 * @author ianer
 */
public class Ping {
    
    public static boolean ping_get_test(String host) {
    try {
        
    Document   doc = Jsoup.connect(host).get();
        
        return true;
    
    } catch (IOException e) {
        System.out.println(" DEU RUIM\n\n");
        
        
//tornar o button active aqui
    //aq
        return false;
    }
    
}
    
}
    
    
    
    

