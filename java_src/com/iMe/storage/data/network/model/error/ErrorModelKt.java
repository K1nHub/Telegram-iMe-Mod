package com.iMe.storage.data.network.model.error;

import com.iMe.storage.R$string;
/* compiled from: ErrorModel.kt */
/* loaded from: classes3.dex */
public final class ErrorModelKt {
    private static final int BAD_RESPONSE_ERROR_MESSAGE;
    private static final int EMPTY_RESPONSE_ERROR_MESSAGE;
    private static final int NOT_DEFINED_ERROR_MESSAGE;
    private static final int NO_CONNECTION_ERROR_MESSAGE;
    private static final int TIME_OUT_ERROR_MESSAGE;
    private static final int UNAUTHORIZED_ERROR_MESSAGE;

    static {
        int i = R$string.common_error_no_internet;
        NO_CONNECTION_ERROR_MESSAGE = i;
        int i2 = R$string.common_error_unexpected;
        BAD_RESPONSE_ERROR_MESSAGE = i2;
        TIME_OUT_ERROR_MESSAGE = i;
        EMPTY_RESPONSE_ERROR_MESSAGE = i2;
        NOT_DEFINED_ERROR_MESSAGE = i2;
        UNAUTHORIZED_ERROR_MESSAGE = R$string.common_error_unauthorized;
    }
}
