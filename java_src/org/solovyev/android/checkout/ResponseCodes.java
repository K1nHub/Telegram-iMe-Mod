package org.solovyev.android.checkout;

import org.telegram.messenger.XiaomiUtilities;
/* loaded from: classes6.dex */
public final class ResponseCodes {
    public static String toString(int i) {
        switch (i) {
            case 0:
                return "OK";
            case 1:
                return "USER_CANCELED";
            case 2:
                return "ACCOUNT_ERROR";
            case 3:
                return "BILLING_UNAVAILABLE";
            case 4:
                return "ITEM_UNAVAILABLE";
            case 5:
                return "DEVELOPER_ERROR";
            case 6:
                return "ERROR";
            case 7:
                return "ITEM_ALREADY_OWNED";
            case 8:
                return "ITEM_NOT_OWNED";
            default:
                switch (i) {
                    case 10000:
                        return "SERVICE_NOT_CONNECTED";
                    case 10001:
                        return "EXCEPTION";
                    case XiaomiUtilities.OP_BLUETOOTH_CHANGE /* 10002 */:
                        return "WRONG_SIGNATURE";
                    case XiaomiUtilities.OP_DATA_CONNECT_CHANGE /* 10003 */:
                        return "NULL_INTENT";
                    default:
                        return "UNKNOWN";
                }
        }
    }
}
