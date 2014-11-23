package com.anosym.tranglo.config;

/**
 *
 * @author kenn
 */
public interface TrangloConfigurationService {

    boolean isUseProvidedEndPoint();

    String getServiceEndPoint();

    String getUsername();

    String getPassword();
}
