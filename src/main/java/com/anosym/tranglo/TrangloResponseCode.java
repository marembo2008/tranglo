package com.anosym.tranglo;

/**
 *
 * @author marembo
 */
public enum TrangloResponseCode {

    TRANSACTION_SUCCESS("000"),
    TRANSACTION_ACCEPTED_TO_QUEUE("001"),
    INVALID_USERNAME_OR_PASSWORD("900"),
    INVALID_PRODUCT_CODE("901"),
    TP_BALANCE_INSUFFICIENT("902"),
    INVALID_LENGHT_OR_PREFIX_OF_DESTINATION_NUMBER("903"),
    INVALID_DENOMINATION_OF_THE_PRODUCT("904"),
    OPERATOR_SERVER_BUSY("909"),
    INVALID_RELOAD_PACKAGE("920"),
    DESTINATION_NUMBER_REJECTED_BY_TELCO("930"),
    DESTINATION_NUMBER_IS_INVALID("931"),
    DESTINATION_NUMBER_INACTIVE("932"),
    DESTINATION_NUMBER_IS_BARRED_BY_OPERATOR("933"),
    DESTINATION_NUMBER_IS_AN_REGISTERED_NUMBER("934"),
    DESTINATION_NUMBER_IS_BLOCKED_FOR_RELOAD("935"),
    DESTINATION_NUMBER_OR_CIRCLE_NOT_SUPPORTED_FOR_RELOAD("936"),
    DENOMINATION_IS_NOT_SUPPORTED_FOR_FOR_THE_DESTINATION_NUMBER_PREPAID_PLAN("940"),
    TRANSACTION_IS_PENDING("968"),
    TRANSACTION_REJECTED_BY_TELCO("994"),
    TRANSACTION_CAN_ONLY_BE_ATTEMPTED_AFTER_15_MINUTES("995"),
    DESTINATION_NUMBER_REACHED_TOP_UP_LIMIT_FOR_THE_DAY("996"),
    TRANSACTION_NOT_FOUND("998"),
    INTERNAL_SERVER_ERROR("999");
    private final String responseCode;

    private TrangloResponseCode(String responseCode) {
        this.responseCode = responseCode;
    }

    public static TrangloResponseCode value(String responseCode) {
        for (TrangloResponseCode code : values()) {
            if (code.responseCode.equals(responseCode)) {
                return code;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        return capitalize(name().toLowerCase().replaceAll("_", " "));
    }

    private static String doCapitalize(String str) {
        str += " "; //we add this space for 1 letter word.
        return (Character.toUpperCase(str.charAt(0)) + str.substring(1).toLowerCase()).trim();
    }

    public static String capitalize(String str) {
        String[] parts = str.split(" "); //split using spaces
        String result = "";
        for (String s : parts) {
            result += (doCapitalize(s) + " ");
        }
        return result.trim();
    }
}
