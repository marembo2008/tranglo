/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.anosym.tranglo;

import com.anosym.tranglo.config.TrangloConfigUtil;
import com.anosym.tranglo.config.TrangloConfiguration;
import com.anosym.tranglo.wsdl.EPinReload;
import com.anosym.tranglo.wsdl.EPinReloadSoap;
import javax.xml.ws.BindingProvider;

/**
 *
 * @author kenn
 */
public class TrangloClient {

  public static final String TRANGLO_CONFIG_PROPERTY = TrangloConfigUtil.TRANGLO_CONFIG_PROPERTY;
  private TrangloConfiguration trangloConfig;
  private static TrangloClient sender;
  private String username = null;
  private String password = null;
  private String transID = null;
  private String prodCode = "";

  public TrangloClient(TrangloConfiguration trangloConfig) {
    this.trangloConfig = trangloConfig;
    init();
  }

  private TrangloClient() {
    this.trangloConfig = TrangloConfigUtil.getTrangloConfigurations();
    if (trangloConfig == null) {
      String err = "tranglo config has not been specified: "
              + "Tranglo config path=" + System.getProperty(TRANGLO_CONFIG_PROPERTY, System.getProperty("user.home"));
      throw new RuntimeException(err);
    }
    init();
  }

  private void init() {
    username = trangloConfig.getUsername();
    password = trangloConfig.getPassword();
  }

  private EPinReloadSoap getEPinReloadService() {
    EPinReload serviceDescriptor = new EPinReload();
    EPinReloadSoap service = serviceDescriptor.getEPinReloadSoap();
    /* Set NEW Endpoint Location */
    String endpointURL = trangloConfig.getServiceEndPoint();
    if (endpointURL != null && trangloConfig.isUseProvidedEndPoint()) {
      BindingProvider bp = (BindingProvider) service;
      bp.getRequestContext().put(BindingProvider.ENDPOINT_ADDRESS_PROPERTY, endpointURL);
    }
    service.ping();
    return service;
  }

  public static TrangloClient getInstance() throws IllegalStateException {
    if (sender == null) {
      sender = new TrangloClient();
    }
    return sender;
  }

  public static TrangloClient getInstance(TrangloConfiguration config) throws IllegalStateException {
    if (sender == null) {
      sender = new TrangloClient(config);
    }
    return sender;
  }

  public TrangloResponseCode topupAirtime(String phoneNumber, int amount) {
    return sendAirtime(phoneNumber, phoneNumber, amount);
  }

  public TrangloResponseCode sendAirtime(String from, String to, int amount) {
    transID = System.nanoTime() + "";
    return sendAirtime(from, to, amount, transID);
  }

  public TrangloResponseCode sendAirtime(String from, String to, int amount, String transactionId) {
    //create this on a need basis
    EPinReloadSoap service = getEPinReloadService();
    if (to.trim().startsWith("+")) {
      to = to.trim().substring(1);
    }
    String responseCode = service.requestReload(from, to, prodCode, amount, username, password, transactionId);
    return TrangloResponseCode.value(responseCode);
  }

  public TrangloResponseCode enquireAirtimeTransactionStatus(String transactionId) {
    EPinReloadSoap service = getEPinReloadService();
    String respCode = service.transactionInquiry(transactionId, username, password);
    return TrangloResponseCode.value(respCode);
  }

  public static void main(String[] args) {
    TrangloClient tc = TrangloClient.getInstance();
    String saNumber = "263719456123";
    String from = saNumber;
    String to = from;
    int amount = 5;
    String transId = System.nanoTime() + "";
    TrangloResponseCode res = tc.sendAirtime("+" + from, to, amount, transId);
    System.out.println(res);
    TrangloResponseCode status = tc.enquireAirtimeTransactionStatus(transId);
    System.out.println(status);
  }
}
