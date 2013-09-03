/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.anosym.tranglo;

import java.io.Serializable;

/**
 *
 * @author marembo
 */
public class TrangloTransactionStatus implements Serializable {

  private TrangloResponseCode status;
  private String transactionId;
  private String telcoSerialNumber;
  private String trangloReferenceId;
  private String destinationNumber;
  private String productCode;

  public TrangloTransactionStatus() {
  }

  public TrangloTransactionStatus(
          TrangloResponseCode status,
          String transactionId,
          String telcoSerialNumber,
          String trangloReferenceId,
          String destinationNumber,
          String productCode) {
    this.status = status;
    this.transactionId = transactionId;
    this.telcoSerialNumber = telcoSerialNumber;
    this.trangloReferenceId = trangloReferenceId;
    this.destinationNumber = destinationNumber;
    this.productCode = productCode;
  }

  public TrangloResponseCode getStatus() {
    return status;
  }

  public void setStatus(TrangloResponseCode status) {
    this.status = status;
  }

  public String getTransactionId() {
    return transactionId;
  }

  public void setTransactionId(String transactionId) {
    this.transactionId = transactionId;
  }

  public String getTelcoSerialNumber() {
    return telcoSerialNumber;
  }

  public void setTelcoSerialNumber(String telcoSerialNumber) {
    this.telcoSerialNumber = telcoSerialNumber;
  }

  public String getTrangloReferenceId() {
    return trangloReferenceId;
  }

  public void setTrangloReferenceId(String trangloReferenceId) {
    this.trangloReferenceId = trangloReferenceId;
  }

  public String getDestinationNumber() {
    return destinationNumber;
  }

  public void setDestinationNumber(String destinationNumber) {
    this.destinationNumber = destinationNumber;
  }

  public String getProductCode() {
    return productCode;
  }

  public void setProductCode(String productCode) {
    this.productCode = productCode;
  }

  @Override
  public int hashCode() {
    int hash = 7;
    hash = 97 * hash + (this.status != null ? this.status.hashCode() : 0);
    hash = 97 * hash + (this.transactionId != null ? this.transactionId.hashCode() : 0);
    hash = 97 * hash + (this.telcoSerialNumber != null ? this.telcoSerialNumber.hashCode() : 0);
    hash = 97 * hash + (this.trangloReferenceId != null ? this.trangloReferenceId.hashCode() : 0);
    hash = 97 * hash + (this.destinationNumber != null ? this.destinationNumber.hashCode() : 0);
    hash = 97 * hash + (this.productCode != null ? this.productCode.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object obj) {
    if (obj == null) {
      return false;
    }
    if (getClass() != obj.getClass()) {
      return false;
    }
    final TrangloTransactionStatus other = (TrangloTransactionStatus) obj;
    if (this.status != other.status) {
      return false;
    }
    if ((this.transactionId == null) ? (other.transactionId != null) : !this.transactionId.equals(other.transactionId)) {
      return false;
    }
    if ((this.telcoSerialNumber == null) ? (other.telcoSerialNumber != null) : !this.telcoSerialNumber.equals(other.telcoSerialNumber)) {
      return false;
    }
    if ((this.trangloReferenceId == null) ? (other.trangloReferenceId != null) : !this.trangloReferenceId.equals(other.trangloReferenceId)) {
      return false;
    }
    if ((this.destinationNumber == null) ? (other.destinationNumber != null) : !this.destinationNumber.equals(other.destinationNumber)) {
      return false;
    }
    if ((this.productCode == null) ? (other.productCode != null) : !this.productCode.equals(other.productCode)) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "TrangloTransactionStatus{" + "status=" + status + ", transactionId=" + transactionId + ", telcoSerialNumber=" + telcoSerialNumber + ", trangloReferenceId=" + trangloReferenceId + ", destinationNumber=" + destinationNumber + ", productCode=" + productCode + '}';
  }
}
