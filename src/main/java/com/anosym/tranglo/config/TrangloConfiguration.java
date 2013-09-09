/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.anosym.tranglo.config;

/**
 *
 * @author kenn
 */
public class TrangloConfiguration {

  private String testUsername = "";
  private String testPassword = "";
  private String liveUsername = "";
  private String livePassword = "";
  private boolean testMode = true;
  private String serviceEndPoint = "http://api.tranglo.com:8001/eReload/EPin_Reload.asmx";
  private boolean useProvidedEndPoint = false;

  public TrangloConfiguration() {
  }

  public String getTestUsername() {
    return testUsername;
  }

  public void setTestUsername(String testUsername) {
    this.testUsername = testUsername;
  }

  public String getTestPassword() {
    return testPassword;
  }

  public void setTestPassword(String testPassword) {
    this.testPassword = testPassword;
  }

  public String getLiveUsername() {
    return liveUsername;
  }

  public void setLiveUsername(String liveUsername) {
    this.liveUsername = liveUsername;
  }

  public String getLivePassword() {
    return livePassword;
  }

  public void setLivePassword(String livePassword) {
    this.livePassword = livePassword;
  }

  public boolean isTestMode() {
    return testMode;
  }

  public void setTestMode(boolean testMode) {
    this.testMode = testMode;
  }

  public boolean isUseProvidedEndPoint() {
    return useProvidedEndPoint;
  }

  public void setUseProvidedEndPoint(boolean useProvidedEndPoint) {
    this.useProvidedEndPoint = useProvidedEndPoint;
  }

  public void setServiceEndPoint(String serviceEndPoint) {
    this.serviceEndPoint = serviceEndPoint;
  }

  public String getServiceEndPoint() {
    return serviceEndPoint;
  }

  public String getUsername() {
    return testMode ? testUsername : liveUsername;
  }

  public String getPassword() {
    return testMode ? testPassword : livePassword;
  }
}
