package com.trustwallet.walletconnect.exceptions;
/* compiled from: InvalidJsonRpcParamsException.kt */
/* loaded from: classes4.dex */
public final class InvalidJsonRpcParamsException extends Exception {
    private final long requestId;

    public InvalidJsonRpcParamsException(long j) {
        super("Invalid JSON RPC Request");
        this.requestId = j;
    }

    public final long getRequestId() {
        return this.requestId;
    }
}
