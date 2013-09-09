<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://tranglo.anosym.com/afrocoin/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://tranglo.anosym.com/afrocoin/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://tranglo.anosym.com/afrocoin/">
      <s:element name="Request_Reload">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="sourceNo" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="destNo" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="prodCode" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="deno" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="transID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Request_ReloadResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Request_ReloadResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Request_ReloadAmount_New">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="sourceNo" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="destNo" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="prodCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="deno" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="transID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Request_ReloadAmount_NewResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Request_ReloadAmount_NewResult">
              <s:complexType mixed="true">
                <s:sequence>
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Ping">
        <s:complexType />
      </s:element>
      <s:element name="PingResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="PingResult" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Transaction_Inquiry">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="transID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Transaction_InquiryResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Transaction_InquiryResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Transaction_Inquiry_Details">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="transID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Transaction_Inquiry_DetailsResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Transaction_Inquiry_DetailsResult">
              <s:complexType mixed="true">
                <s:sequence>
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="EWallet_Inquiry">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="transID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="EWallet_InquiryResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="EWallet_InquiryResult">
              <s:complexType mixed="true">
                <s:sequence>
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Product_Price_Inquiry">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="transID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="prodCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="deno" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Product_Price_InquiryResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Product_Price_InquiryResult">
              <s:complexType mixed="true">
                <s:sequence>
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Request_Reload_New">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="sourceNo" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="destNo" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="prodCode" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="deno" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="transID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Request_Reload_NewResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Request_Reload_NewResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Request_ReloadAmount">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="sourceNo" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="destNo" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="prodCode" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="deno" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="UserID" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="transID" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Request_ReloadAmountResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Request_ReloadAmountResult">
              <s:complexType mixed="true">
                <s:sequence>
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="string" nillable="true" type="s:string" />
      <s:element name="int" type="s:int" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="Request_ReloadSoapIn">
    <wsdl:part name="parameters" element="tns:Request_Reload" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadSoapOut">
    <wsdl:part name="parameters" element="tns:Request_ReloadResponse" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmount_NewSoapIn">
    <wsdl:part name="parameters" element="tns:Request_ReloadAmount_New" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmount_NewSoapOut">
    <wsdl:part name="parameters" element="tns:Request_ReloadAmount_NewResponse" />
  </wsdl:message>
  <wsdl:message name="PingSoapIn">
    <wsdl:part name="parameters" element="tns:Ping" />
  </wsdl:message>
  <wsdl:message name="PingSoapOut">
    <wsdl:part name="parameters" element="tns:PingResponse" />
  </wsdl:message>
  <wsdl:message name="Transaction_InquirySoapIn">
    <wsdl:part name="parameters" element="tns:Transaction_Inquiry" />
  </wsdl:message>
  <wsdl:message name="Transaction_InquirySoapOut">
    <wsdl:part name="parameters" element="tns:Transaction_InquiryResponse" />
  </wsdl:message>
  <wsdl:message name="Transaction_Inquiry_DetailsSoapIn">
    <wsdl:part name="parameters" element="tns:Transaction_Inquiry_Details" />
  </wsdl:message>
  <wsdl:message name="Transaction_Inquiry_DetailsSoapOut">
    <wsdl:part name="parameters" element="tns:Transaction_Inquiry_DetailsResponse" />
  </wsdl:message>
  <wsdl:message name="EWallet_InquirySoapIn">
    <wsdl:part name="parameters" element="tns:EWallet_Inquiry" />
  </wsdl:message>
  <wsdl:message name="EWallet_InquirySoapOut">
    <wsdl:part name="parameters" element="tns:EWallet_InquiryResponse" />
  </wsdl:message>
  <wsdl:message name="Product_Price_InquirySoapIn">
    <wsdl:part name="parameters" element="tns:Product_Price_Inquiry" />
  </wsdl:message>
  <wsdl:message name="Product_Price_InquirySoapOut">
    <wsdl:part name="parameters" element="tns:Product_Price_InquiryResponse" />
  </wsdl:message>
  <wsdl:message name="Request_Reload_NewSoapIn">
    <wsdl:part name="parameters" element="tns:Request_Reload_New" />
  </wsdl:message>
  <wsdl:message name="Request_Reload_NewSoapOut">
    <wsdl:part name="parameters" element="tns:Request_Reload_NewResponse" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmountSoapIn">
    <wsdl:part name="parameters" element="tns:Request_ReloadAmount" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmountSoapOut">
    <wsdl:part name="parameters" element="tns:Request_ReloadAmountResponse" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadHttpGetIn">
    <wsdl:part name="sourceNo" type="s:string" />
    <wsdl:part name="destNo" type="s:string" />
    <wsdl:part name="prodCode" type="s:string" />
    <wsdl:part name="deno" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="transID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmount_NewHttpGetIn">
    <wsdl:part name="sourceNo" type="s:string" />
    <wsdl:part name="destNo" type="s:string" />
    <wsdl:part name="prodCode" type="s:string" />
    <wsdl:part name="deno" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="transID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmount_NewHttpGetOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="PingHttpGetIn" />
  <wsdl:message name="PingHttpGetOut">
    <wsdl:part name="Body" element="tns:int" />
  </wsdl:message>
  <wsdl:message name="Transaction_InquiryHttpGetIn">
    <wsdl:part name="transID" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Transaction_InquiryHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="Transaction_Inquiry_DetailsHttpGetIn">
    <wsdl:part name="transID" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Transaction_Inquiry_DetailsHttpGetOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="EWallet_InquiryHttpGetIn">
    <wsdl:part name="transID" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="EWallet_InquiryHttpGetOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="Product_Price_InquiryHttpGetIn">
    <wsdl:part name="transID" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="prodCode" type="s:string" />
    <wsdl:part name="deno" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Product_Price_InquiryHttpGetOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="Request_Reload_NewHttpGetIn">
    <wsdl:part name="sourceNo" type="s:string" />
    <wsdl:part name="destNo" type="s:string" />
    <wsdl:part name="prodCode" type="s:string" />
    <wsdl:part name="deno" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="transID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Request_Reload_NewHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmountHttpGetIn">
    <wsdl:part name="sourceNo" type="s:string" />
    <wsdl:part name="destNo" type="s:string" />
    <wsdl:part name="prodCode" type="s:string" />
    <wsdl:part name="deno" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="transID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmountHttpGetOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadHttpPostIn">
    <wsdl:part name="sourceNo" type="s:string" />
    <wsdl:part name="destNo" type="s:string" />
    <wsdl:part name="prodCode" type="s:string" />
    <wsdl:part name="deno" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="transID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmount_NewHttpPostIn">
    <wsdl:part name="sourceNo" type="s:string" />
    <wsdl:part name="destNo" type="s:string" />
    <wsdl:part name="prodCode" type="s:string" />
    <wsdl:part name="deno" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="transID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmount_NewHttpPostOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="PingHttpPostIn" />
  <wsdl:message name="PingHttpPostOut">
    <wsdl:part name="Body" element="tns:int" />
  </wsdl:message>
  <wsdl:message name="Transaction_InquiryHttpPostIn">
    <wsdl:part name="transID" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Transaction_InquiryHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="Transaction_Inquiry_DetailsHttpPostIn">
    <wsdl:part name="transID" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Transaction_Inquiry_DetailsHttpPostOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="EWallet_InquiryHttpPostIn">
    <wsdl:part name="transID" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="EWallet_InquiryHttpPostOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="Product_Price_InquiryHttpPostIn">
    <wsdl:part name="transID" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="prodCode" type="s:string" />
    <wsdl:part name="deno" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Product_Price_InquiryHttpPostOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:message name="Request_Reload_NewHttpPostIn">
    <wsdl:part name="sourceNo" type="s:string" />
    <wsdl:part name="destNo" type="s:string" />
    <wsdl:part name="prodCode" type="s:string" />
    <wsdl:part name="deno" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="transID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Request_Reload_NewHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmountHttpPostIn">
    <wsdl:part name="sourceNo" type="s:string" />
    <wsdl:part name="destNo" type="s:string" />
    <wsdl:part name="prodCode" type="s:string" />
    <wsdl:part name="deno" type="s:string" />
    <wsdl:part name="UserID" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="transID" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Request_ReloadAmountHttpPostOut">
    <wsdl:part name="Body" />
  </wsdl:message>
  <wsdl:portType name="EPin_ReloadSoap">
    <wsdl:operation name="Request_Reload">
      <wsdl:input message="tns:Request_ReloadSoapIn" />
      <wsdl:output message="tns:Request_ReloadSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount_New">
      <wsdl:input message="tns:Request_ReloadAmount_NewSoapIn" />
      <wsdl:output message="tns:Request_ReloadAmount_NewSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Ping">
      <wsdl:input message="tns:PingSoapIn" />
      <wsdl:output message="tns:PingSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry">
      <wsdl:input message="tns:Transaction_InquirySoapIn" />
      <wsdl:output message="tns:Transaction_InquirySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry_Details">
      <wsdl:input message="tns:Transaction_Inquiry_DetailsSoapIn" />
      <wsdl:output message="tns:Transaction_Inquiry_DetailsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="EWallet_Inquiry">
      <wsdl:input message="tns:EWallet_InquirySoapIn" />
      <wsdl:output message="tns:EWallet_InquirySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Product_Price_Inquiry">
      <wsdl:input message="tns:Product_Price_InquirySoapIn" />
      <wsdl:output message="tns:Product_Price_InquirySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Request_Reload_New">
      <wsdl:input message="tns:Request_Reload_NewSoapIn" />
      <wsdl:output message="tns:Request_Reload_NewSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount">
      <wsdl:input message="tns:Request_ReloadAmountSoapIn" />
      <wsdl:output message="tns:Request_ReloadAmountSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="EPin_ReloadHttpGet">
    <wsdl:operation name="Request_Reload">
      <wsdl:input message="tns:Request_ReloadHttpGetIn" />
      <wsdl:output message="tns:Request_ReloadHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount_New">
      <wsdl:input message="tns:Request_ReloadAmount_NewHttpGetIn" />
      <wsdl:output message="tns:Request_ReloadAmount_NewHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Ping">
      <wsdl:input message="tns:PingHttpGetIn" />
      <wsdl:output message="tns:PingHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry">
      <wsdl:input message="tns:Transaction_InquiryHttpGetIn" />
      <wsdl:output message="tns:Transaction_InquiryHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry_Details">
      <wsdl:input message="tns:Transaction_Inquiry_DetailsHttpGetIn" />
      <wsdl:output message="tns:Transaction_Inquiry_DetailsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="EWallet_Inquiry">
      <wsdl:input message="tns:EWallet_InquiryHttpGetIn" />
      <wsdl:output message="tns:EWallet_InquiryHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Product_Price_Inquiry">
      <wsdl:input message="tns:Product_Price_InquiryHttpGetIn" />
      <wsdl:output message="tns:Product_Price_InquiryHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Request_Reload_New">
      <wsdl:input message="tns:Request_Reload_NewHttpGetIn" />
      <wsdl:output message="tns:Request_Reload_NewHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount">
      <wsdl:input message="tns:Request_ReloadAmountHttpGetIn" />
      <wsdl:output message="tns:Request_ReloadAmountHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="EPin_ReloadHttpPost">
    <wsdl:operation name="Request_Reload">
      <wsdl:input message="tns:Request_ReloadHttpPostIn" />
      <wsdl:output message="tns:Request_ReloadHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount_New">
      <wsdl:input message="tns:Request_ReloadAmount_NewHttpPostIn" />
      <wsdl:output message="tns:Request_ReloadAmount_NewHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Ping">
      <wsdl:input message="tns:PingHttpPostIn" />
      <wsdl:output message="tns:PingHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry">
      <wsdl:input message="tns:Transaction_InquiryHttpPostIn" />
      <wsdl:output message="tns:Transaction_InquiryHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry_Details">
      <wsdl:input message="tns:Transaction_Inquiry_DetailsHttpPostIn" />
      <wsdl:output message="tns:Transaction_Inquiry_DetailsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="EWallet_Inquiry">
      <wsdl:input message="tns:EWallet_InquiryHttpPostIn" />
      <wsdl:output message="tns:EWallet_InquiryHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Product_Price_Inquiry">
      <wsdl:input message="tns:Product_Price_InquiryHttpPostIn" />
      <wsdl:output message="tns:Product_Price_InquiryHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Request_Reload_New">
      <wsdl:input message="tns:Request_Reload_NewHttpPostIn" />
      <wsdl:output message="tns:Request_Reload_NewHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount">
      <wsdl:input message="tns:Request_ReloadAmountHttpPostIn" />
      <wsdl:output message="tns:Request_ReloadAmountHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="EPin_ReloadSoap" type="tns:EPin_ReloadSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="Request_Reload">
      <soap:operation soapAction="http://tranglo.anosym.com/afrocoin/Request_Reload" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount_New">
      <soap:operation soapAction="http://tranglo.anosym.com/afrocoin/Request_ReloadAmount_New" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Ping">
      <soap:operation soapAction="http://tranglo.anosym.com/afrocoin/Ping" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry">
      <soap:operation soapAction="http://tranglo.anosym.com/afrocoin/Transaction_Inquiry" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry_Details">
      <soap:operation soapAction="http://tranglo.anosym.com/afrocoin/Transaction_Inquiry_Details" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="EWallet_Inquiry">
      <soap:operation soapAction="http://tranglo.anosym.com/afrocoin/EWallet_Inquiry" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Product_Price_Inquiry">
      <soap:operation soapAction="http://tranglo.anosym.com/afrocoin/Product_Price_Inquiry" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_Reload_New">
      <soap:operation soapAction="http://tranglo.anosym.com/afrocoin/Request_Reload_New" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount">
      <soap:operation soapAction="http://tranglo.anosym.com/afrocoin/Request_ReloadAmount" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="EPin_ReloadSoap12" type="tns:EPin_ReloadSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="Request_Reload">
      <soap12:operation soapAction="http://tranglo.anosym.com/afrocoin/Request_Reload" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount_New">
      <soap12:operation soapAction="http://tranglo.anosym.com/afrocoin/Request_ReloadAmount_New" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Ping">
      <soap12:operation soapAction="http://tranglo.anosym.com/afrocoin/Ping" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry">
      <soap12:operation soapAction="http://tranglo.anosym.com/afrocoin/Transaction_Inquiry" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry_Details">
      <soap12:operation soapAction="http://tranglo.anosym.com/afrocoin/Transaction_Inquiry_Details" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="EWallet_Inquiry">
      <soap12:operation soapAction="http://tranglo.anosym.com/afrocoin/EWallet_Inquiry" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Product_Price_Inquiry">
      <soap12:operation soapAction="http://tranglo.anosym.com/afrocoin/Product_Price_Inquiry" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_Reload_New">
      <soap12:operation soapAction="http://tranglo.anosym.com/afrocoin/Request_Reload_New" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount">
      <soap12:operation soapAction="http://tranglo.anosym.com/afrocoin/Request_ReloadAmount" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="EPin_ReloadHttpGet" type="tns:EPin_ReloadHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="Request_Reload">
      <http:operation location="/Request_Reload" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount_New">
      <http:operation location="/Request_ReloadAmount_New" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Ping">
      <http:operation location="/Ping" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry">
      <http:operation location="/Transaction_Inquiry" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry_Details">
      <http:operation location="/Transaction_Inquiry_Details" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="EWallet_Inquiry">
      <http:operation location="/EWallet_Inquiry" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Product_Price_Inquiry">
      <http:operation location="/Product_Price_Inquiry" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_Reload_New">
      <http:operation location="/Request_Reload_New" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount">
      <http:operation location="/Request_ReloadAmount" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="EPin_ReloadHttpPost" type="tns:EPin_ReloadHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="Request_Reload">
      <http:operation location="/Request_Reload" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount_New">
      <http:operation location="/Request_ReloadAmount_New" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Ping">
      <http:operation location="/Ping" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry">
      <http:operation location="/Transaction_Inquiry" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Transaction_Inquiry_Details">
      <http:operation location="/Transaction_Inquiry_Details" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="EWallet_Inquiry">
      <http:operation location="/EWallet_Inquiry" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Product_Price_Inquiry">
      <http:operation location="/Product_Price_Inquiry" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_Reload_New">
      <http:operation location="/Request_Reload_New" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Request_ReloadAmount">
      <http:operation location="/Request_ReloadAmount" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:content part="Body" type="text/xml" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="EPin_Reload">
    <wsdl:port name="EPin_ReloadSoap" binding="tns:EPin_ReloadSoap">
      <soap:address location="http://api.tranglo.com:8001/eReload/EPin_Reload.asmx" />
    </wsdl:port>
    <wsdl:port name="EPin_ReloadSoap12" binding="tns:EPin_ReloadSoap12">
      <soap12:address location="http://api.tranglo.com:8001/eReload/EPin_Reload.asmx" />
    </wsdl:port>
    <wsdl:port name="EPin_ReloadHttpGet" binding="tns:EPin_ReloadHttpGet">
      <http:address location="http://api.tranglo.com:8001/eReload/EPin_Reload.asmx" />
    </wsdl:port>
    <wsdl:port name="EPin_ReloadHttpPost" binding="tns:EPin_ReloadHttpPost">
      <http:address location="http://api.tranglo.com:8001/eReload/EPin_Reload.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>
