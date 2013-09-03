
package com.anosym.tranglo.wsdl;


import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.xml.bind.annotation.XmlSeeAlso;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.7-b01 
 * Generated source version: 2.2
 * 
 */
@WebService(name = "EPin_ReloadHttpGet", targetNamespace = "http://tempuri.org/")
@SOAPBinding(style = SOAPBinding.Style.RPC)
@XmlSeeAlso({
    ObjectFactory.class
})
public interface EPinReloadHttpGet {


    /**
     * 
     * @param userID
     * @param transID
     * @param prodCode
     * @param deno
     * @param destNo
     * @param sourceNo
     * @param password
     * @return
     *     returns java.lang.String
     */
    @WebMethod(operationName = "Request_Reload")
    @WebResult(name = "Body", partName = "Body")
    public String requestReload(
        @WebParam(name = "sourceNo", partName = "sourceNo")
        String sourceNo,
        @WebParam(name = "destNo", partName = "destNo")
        String destNo,
        @WebParam(name = "prodCode", partName = "prodCode")
        String prodCode,
        @WebParam(name = "deno", partName = "deno")
        String deno,
        @WebParam(name = "UserID", partName = "UserID")
        String userID,
        @WebParam(name = "Password", partName = "Password")
        String password,
        @WebParam(name = "transID", partName = "transID")
        String transID);

    /**
     * 
     * @param userID
     * @param transID
     * @param prodCode
     * @param deno
     * @param destNo
     * @param sourceNo
     * @param password
     */
    @WebMethod(operationName = "Request_ReloadAmount_New")
    public void requestReloadAmountNew(
        @WebParam(name = "sourceNo", partName = "sourceNo")
        String sourceNo,
        @WebParam(name = "destNo", partName = "destNo")
        String destNo,
        @WebParam(name = "prodCode", partName = "prodCode")
        String prodCode,
        @WebParam(name = "deno", partName = "deno")
        String deno,
        @WebParam(name = "UserID", partName = "UserID")
        String userID,
        @WebParam(name = "Password", partName = "Password")
        String password,
        @WebParam(name = "transID", partName = "transID")
        String transID);

    /**
     * 
     * @return
     *     returns int
     */
    @WebMethod(operationName = "Ping")
    @WebResult(name = "Body", partName = "Body")
    public int ping();

    /**
     * 
     * @param userID
     * @param transID
     * @param password
     * @return
     *     returns java.lang.String
     */
    @WebMethod(operationName = "Transaction_Inquiry")
    @WebResult(name = "Body", partName = "Body")
    public String transactionInquiry(
        @WebParam(name = "transID", partName = "transID")
        String transID,
        @WebParam(name = "UserID", partName = "UserID")
        String userID,
        @WebParam(name = "Password", partName = "Password")
        String password);

    /**
     * 
     * @param userID
     * @param transID
     * @param password
     */
    @WebMethod(operationName = "Transaction_Inquiry_Details")
    public void transactionInquiryDetails(
        @WebParam(name = "transID", partName = "transID")
        String transID,
        @WebParam(name = "UserID", partName = "UserID")
        String userID,
        @WebParam(name = "Password", partName = "Password")
        String password);

    /**
     * 
     * @param userID
     * @param transID
     * @param password
     */
    @WebMethod(operationName = "EWallet_Inquiry")
    public void eWalletInquiry(
        @WebParam(name = "transID", partName = "transID")
        String transID,
        @WebParam(name = "UserID", partName = "UserID")
        String userID,
        @WebParam(name = "Password", partName = "Password")
        String password);

    /**
     * 
     * @param userID
     * @param transID
     * @param prodCode
     * @param deno
     * @param password
     */
    @WebMethod(operationName = "Product_Price_Inquiry")
    public void productPriceInquiry(
        @WebParam(name = "transID", partName = "transID")
        String transID,
        @WebParam(name = "UserID", partName = "UserID")
        String userID,
        @WebParam(name = "Password", partName = "Password")
        String password,
        @WebParam(name = "prodCode", partName = "prodCode")
        String prodCode,
        @WebParam(name = "deno", partName = "deno")
        String deno);

    /**
     * 
     * @param userID
     * @param transID
     * @param prodCode
     * @param deno
     * @param destNo
     * @param sourceNo
     * @param password
     * @return
     *     returns java.lang.String
     */
    @WebMethod(operationName = "Request_Reload_New")
    @WebResult(name = "Body", partName = "Body")
    public String requestReloadNew(
        @WebParam(name = "sourceNo", partName = "sourceNo")
        String sourceNo,
        @WebParam(name = "destNo", partName = "destNo")
        String destNo,
        @WebParam(name = "prodCode", partName = "prodCode")
        String prodCode,
        @WebParam(name = "deno", partName = "deno")
        String deno,
        @WebParam(name = "UserID", partName = "UserID")
        String userID,
        @WebParam(name = "Password", partName = "Password")
        String password,
        @WebParam(name = "transID", partName = "transID")
        String transID);

    /**
     * 
     * @param userID
     * @param transID
     * @param prodCode
     * @param deno
     * @param destNo
     * @param sourceNo
     * @param password
     */
    @WebMethod(operationName = "Request_ReloadAmount")
    public void requestReloadAmount(
        @WebParam(name = "sourceNo", partName = "sourceNo")
        String sourceNo,
        @WebParam(name = "destNo", partName = "destNo")
        String destNo,
        @WebParam(name = "prodCode", partName = "prodCode")
        String prodCode,
        @WebParam(name = "deno", partName = "deno")
        String deno,
        @WebParam(name = "UserID", partName = "UserID")
        String userID,
        @WebParam(name = "Password", partName = "Password")
        String password,
        @WebParam(name = "transID", partName = "transID")
        String transID);

}
