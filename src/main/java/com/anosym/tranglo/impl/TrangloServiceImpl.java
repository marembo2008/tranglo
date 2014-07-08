/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.anosym.tranglo.impl;

import com.anosym.tranglo.TrangloResponseCode;
import com.anosym.tranglo.TrangloService;
import com.anosym.tranglo.config.TrangloConfigurationService;
import com.anosym.tranglo.wsdl.EPinReload;
import com.anosym.tranglo.wsdl.EPinReloadSoap;
import javax.inject.Inject;
import javax.xml.ws.BindingProvider;

/**
 *
 * @author marembo
 */
public class TrangloServiceImpl implements TrangloService {

    @Inject
    private TrangloConfigurationService configurationService;

    public TrangloServiceImpl() {
    }

    private EPinReloadSoap getEPinReloadService() {
        EPinReload serviceDescriptor = new EPinReload();
        EPinReloadSoap service = serviceDescriptor.getEPinReloadSoap();
        /* Set NEW Endpoint Location */
        String endpointURL = configurationService.getServiceEndPoint();
        if (endpointURL != null && configurationService.isUseProvidedEndPoint()) {
            BindingProvider bp = (BindingProvider) service;
            bp.getRequestContext().put(BindingProvider.ENDPOINT_ADDRESS_PROPERTY, endpointURL);
        }
        service.ping();
        return service;
    }

    /**
     * JSE
     *
     * @param configurationService
     */
    public TrangloServiceImpl(TrangloConfigurationService configurationService) {
        this.configurationService = configurationService;
    }

    public TrangloResponseCode topupAirtime(String phoneNumber, int amount) {
        return sendAirtime(phoneNumber, phoneNumber, amount);
    }

    public TrangloResponseCode sendAirtime(String from, String to, int amount) {
        String transID = System.nanoTime() + "";
        return sendAirtime(from, to, amount, transID);
    }

    public TrangloResponseCode sendAirtime(String from, String to, int amount, String transactionId) {
        //create this on a need basis
        String prodCode = "";
        EPinReloadSoap service = getEPinReloadService();
        if (to.trim().startsWith("+")) {
            to = to.trim().substring(1);
        }
        String responseCode = service.requestReload(from, to, prodCode, amount,
                                                    configurationService.getUsername(),
                                                    configurationService.getPassword(), transactionId);
        TrangloResponseCode trangloResponseCode = TrangloResponseCode.value(responseCode);
        return trangloResponseCode;
    }

    public TrangloResponseCode sendAirtime(String from, String to, int amount, String transactionId, String prodCode) {
        //create this on a need basis
        EPinReloadSoap service = getEPinReloadService();
        if (to.trim().startsWith("+")) {
            to = to.trim().substring(1);
        }
        String responseCode = service.requestReload(from, to, prodCode, amount,
                                                    configurationService.getUsername(),
                                                    configurationService.getPassword(), transactionId);
        TrangloResponseCode trangloResponseCode = TrangloResponseCode.value(responseCode);
        return trangloResponseCode;
    }

    public TrangloResponseCode enquireAirtimeTransactionStatus(String transactionId) {
        EPinReloadSoap service = getEPinReloadService();
        String respCode = service.transactionInquiry(transactionId,
                                                     configurationService.getUsername(),
                                                     configurationService.getPassword());
        return TrangloResponseCode.value(respCode);
    }

}
