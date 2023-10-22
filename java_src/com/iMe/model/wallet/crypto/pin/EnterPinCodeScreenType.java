package com.iMe.model.wallet.crypto.pin;
/* compiled from: EnterPinCodeScreenType.kt */
/* loaded from: classes3.dex */
public enum EnterPinCodeScreenType {
    TOTAL_LOCK,
    CHECK;

    public final boolean isTotalLock() {
        return this == TOTAL_LOCK;
    }
}
