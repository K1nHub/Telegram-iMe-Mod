package com.trustwallet.walletconnect.exceptions;
/* compiled from: InvalidHmacException.kt */
/* loaded from: classes6.dex */
public final class InvalidHmacException extends Exception {
    public InvalidHmacException() {
        super("Received and computed HMAC doesn't mach");
    }
}
