/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.anosym.tranglo.config;

/**
 *
 * @author kenn
 */
public interface TrangloConfigurationService {

    boolean isTestMode();

    boolean isUseProvidedEndPoint();

    String getServiceEndPoint();

    String getUsername();

    String getPassword();
}
