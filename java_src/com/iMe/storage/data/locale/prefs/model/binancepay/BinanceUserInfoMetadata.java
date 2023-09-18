package com.iMe.storage.data.locale.prefs.model.binancepay;

import com.iMe.storage.domain.model.binancepay.BinanceUserInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceUserInfoMetadata.kt */
/* loaded from: classes4.dex */
public final class BinanceUserInfoMetadata {
    private final BinanceUserInfo info;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinanceUserInfoMetadata) && Intrinsics.areEqual(this.info, ((BinanceUserInfoMetadata) obj).info);
    }

    public int hashCode() {
        BinanceUserInfo binanceUserInfo = this.info;
        if (binanceUserInfo == null) {
            return 0;
        }
        return binanceUserInfo.hashCode();
    }

    public String toString() {
        return "BinanceUserInfoMetadata(info=" + this.info + ')';
    }

    public BinanceUserInfoMetadata(BinanceUserInfo binanceUserInfo) {
        this.info = binanceUserInfo;
    }

    public final BinanceUserInfo getInfo() {
        return this.info;
    }
}
