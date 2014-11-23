package com.anosym.tranglo;

import javax.annotation.Nonnull;

/**
 *
 * @author marembo
 */
public interface TrangloService {

    TrangloResponseCode topupAirtime(@Nonnull final String phoneNumber, final int amount);

    TrangloResponseCode sendAirtime(@Nonnull final String from, @Nonnull final String to, final int amount);

    TrangloResponseCode sendAirtime(@Nonnull final String from, @Nonnull final String to, final int amount, @Nonnull final String transactionId);

    TrangloResponseCode sendAirtime(@Nonnull final String from,
                                    @Nonnull final String to,
                                    final int amount,
                                    @Nonnull final String transactionId,
                                    @Nonnull final String prodCode);

    TrangloResponseCode enquireAirtimeTransactionStatus(@Nonnull final String transactionId);
}
