package com.trustwallet.walletconnect.models.binance;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCBinanceOrder.kt */
/* loaded from: classes4.dex */
public final class WCBinanceTxConfirmParam {
    private final String errorMsg;

    /* renamed from: ok */
    private final boolean f418ok;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCBinanceTxConfirmParam) {
            WCBinanceTxConfirmParam wCBinanceTxConfirmParam = (WCBinanceTxConfirmParam) obj;
            return this.f418ok == wCBinanceTxConfirmParam.f418ok && Intrinsics.areEqual(this.errorMsg, wCBinanceTxConfirmParam.errorMsg);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.f418ok;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        String str = this.errorMsg;
        return i + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "WCBinanceTxConfirmParam(ok=" + this.f418ok + ", errorMsg=" + this.errorMsg + ')';
    }
}
