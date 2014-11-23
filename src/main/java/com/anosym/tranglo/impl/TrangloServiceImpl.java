package com.anosym.tranglo.impl;

import com.anosym.tranglo.TrangloResponseCode;
import com.anosym.tranglo.TrangloService;
import com.anosym.tranglo.config.TrangloConfigurationService;
import com.anosym.tranglo.wsdl.EPinReload;
import com.anosym.tranglo.wsdl.EPinReloadSoap;
import com.google.common.base.Strings;
import javax.annotation.Nonnull;
import javax.inject.Inject;
import javax.xml.ws.BindingProvider;

import static com.google.common.base.Preconditions.checkNotNull;

/**
 *
 * @author marembo
 */
public class TrangloServiceImpl implements TrangloService {

    private final TrangloConfigurationService configurationService;

    /**
     * @param configurationService
     */
    @Inject
    public TrangloServiceImpl(@Nonnull final TrangloConfigurationService configurationService) {
        this.configurationService = checkNotNull(configurationService, "The configurationService must be specified");
    }

    private EPinReloadSoap getEPinReloadService() {
        final EPinReload serviceDescriptor = new EPinReload();
        final EPinReloadSoap service = serviceDescriptor.getEPinReloadSoap();
        /*
         * Set NEW Endpoint Location
         */
        String endpointURL = configurationService.getServiceEndPoint();
        if (!Strings.isNullOrEmpty(endpointURL) && configurationService.isUseProvidedEndPoint()) {
            final BindingProvider bp = (BindingProvider) service;
            bp.getRequestContext().put(BindingProvider.ENDPOINT_ADDRESS_PROPERTY, endpointURL);
        }
        service.ping();
        return service;
    }

    public TrangloResponseCode topupAirtime(@Nonnull final String phoneNumber, final int amount) {
        checkNotNull(phoneNumber, "The phoneNumber to topup must be specified");

        return sendAirtime(phoneNumber, phoneNumber, amount);
    }

    public TrangloResponseCode sendAirtime(@Nonnull final String from, @Nonnull final String to, final int amount) {
        checkNotNull(from, "The from number must be specified");
        checkNotNull(to, "The to number must be specified");

        final String transID = System.nanoTime() + "";
        return sendAirtime(from, to, amount, transID);
    }

    public TrangloResponseCode sendAirtime(@Nonnull final String from, @Nonnull final String to, final int amount, @Nonnull final String transactionId) {
        checkNotNull(from, "The from number must be specified");
        checkNotNull(to, "The to number must be specified");
        checkNotNull(transactionId, "The transactionId must be specified");

        final String prodCode = "";
        return sendAirtime(from, to, amount, transactionId, prodCode);

    }

    public TrangloResponseCode sendAirtime(@Nonnull final String from,
                                           @Nonnull final String to,
                                           final int amount,
                                           @Nonnull final String transactionId,
                                           @Nonnull final String prodCode) {
        checkNotNull(from, "The from number must be specified");
        checkNotNull(to, "The to number must be specified");
        checkNotNull(transactionId, "The transactionId must be specified");
        checkNotNull(prodCode, "The prodCode must be specified");

        final EPinReloadSoap service = getEPinReloadService();
        final boolean valid = to.trim().startsWith("+");
        final String toNumber = valid ? to.trim().substring(1) : to;
        final String userName = configurationService.getUsername();
        final String password = configurationService.getPassword();
        final String responseCode = service.requestReload(from, toNumber, prodCode, amount, userName, password, transactionId);

        return TrangloResponseCode.value(responseCode);
    }

    public TrangloResponseCode enquireAirtimeTransactionStatus(@Nonnull final String transactionId) {
        checkNotNull(transactionId, "The transactionId must be specified");

        final EPinReloadSoap service = getEPinReloadService();
        final String username = configurationService.getUsername();
        final String password = configurationService.getPassword();
        final String respCode = service.transactionInquiry(transactionId, username, password);

        return TrangloResponseCode.value(respCode);
    }

}
