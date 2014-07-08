/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.anosym.tranglo;

/**
 *
 * @author marembo
 */
public interface TrangloService {

    TrangloResponseCode topupAirtime(String phoneNumber, int amount);

    TrangloResponseCode sendAirtime(String from, String to, int amount);

    TrangloResponseCode sendAirtime(String from, String to, int amount, String transactionId);

    TrangloResponseCode sendAirtime(String from, String to, int amount, String transactionId, String prodCode);

    TrangloResponseCode enquireAirtimeTransactionStatus(String transactionId);
}
