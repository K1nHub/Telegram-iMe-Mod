package com.trustwallet.walletconnect.models;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCEncryptionPayload.kt */
/* loaded from: classes4.dex */
public final class WCEncryptionPayload {
    private final String data;
    private final String hmac;

    /* renamed from: iv */
    private final String f415iv;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCEncryptionPayload) {
            WCEncryptionPayload wCEncryptionPayload = (WCEncryptionPayload) obj;
            return Intrinsics.areEqual(this.data, wCEncryptionPayload.data) && Intrinsics.areEqual(this.hmac, wCEncryptionPayload.hmac) && Intrinsics.areEqual(this.f415iv, wCEncryptionPayload.f415iv);
        }
        return false;
    }

    public int hashCode() {
        return (((this.data.hashCode() * 31) + this.hmac.hashCode()) * 31) + this.f415iv.hashCode();
    }

    public String toString() {
        return "WCEncryptionPayload(data=" + this.data + ", hmac=" + this.hmac + ", iv=" + this.f415iv + ')';
    }

    public WCEncryptionPayload(String data, String hmac, String iv) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(hmac, "hmac");
        Intrinsics.checkNotNullParameter(iv, "iv");
        this.data = data;
        this.hmac = hmac;
        this.f415iv = iv;
    }

    public final String getData() {
        return this.data;
    }

    public final String getHmac() {
        return this.hmac;
    }

    public final String getIv() {
        return this.f415iv;
    }
}
