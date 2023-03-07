package com.stripe.android.util;

import com.stripe.android.model.Card;
import com.stripe.android.model.Token;
/* loaded from: classes3.dex */
public class StripeTextUtils {
    public static boolean hasAnyPrefix(String str, String... strArr) {
        if (str == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isWholePositiveNumber(String str) {
        if (str == null) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String nullIfBlank(String str) {
        if (isBlank(str)) {
            return null;
        }
        return str;
    }

    public static boolean isBlank(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static String asCardBrand(String str) {
        if (isBlank(str)) {
            return null;
        }
        return Card.AMERICAN_EXPRESS.equalsIgnoreCase(str) ? Card.AMERICAN_EXPRESS : Card.MASTERCARD.equalsIgnoreCase(str) ? Card.MASTERCARD : Card.DINERS_CLUB.equalsIgnoreCase(str) ? Card.DINERS_CLUB : Card.DISCOVER.equalsIgnoreCase(str) ? Card.DISCOVER : Card.JCB.equalsIgnoreCase(str) ? Card.JCB : Card.VISA.equalsIgnoreCase(str) ? Card.VISA : Card.UNKNOWN;
    }

    public static String asFundingType(String str) {
        if (isBlank(str)) {
            return null;
        }
        return Card.FUNDING_CREDIT.equalsIgnoreCase(str) ? Card.FUNDING_CREDIT : Card.FUNDING_DEBIT.equalsIgnoreCase(str) ? Card.FUNDING_DEBIT : Card.FUNDING_PREPAID.equalsIgnoreCase(str) ? Card.FUNDING_PREPAID : Card.FUNDING_UNKNOWN;
    }

    public static String asTokenType(String str) {
        if (Token.TYPE_CARD.equals(str)) {
            return Token.TYPE_CARD;
        }
        return null;
    }
}
