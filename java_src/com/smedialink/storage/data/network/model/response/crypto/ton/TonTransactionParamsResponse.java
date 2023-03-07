package com.smedialink.storage.data.network.model.response.crypto.ton;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonTransactionParamsResponse.kt */
/* loaded from: classes3.dex */
public final class TonTransactionParamsResponse {
    private final int sendMode;
    private final String toWalletAddressFixed;
    private final int walletSeqno;

    /* renamed from: wc */
    private final int f304wc;

    public static /* synthetic */ TonTransactionParamsResponse copy$default(TonTransactionParamsResponse tonTransactionParamsResponse, int i, String str, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = tonTransactionParamsResponse.sendMode;
        }
        if ((i4 & 2) != 0) {
            str = tonTransactionParamsResponse.toWalletAddressFixed;
        }
        if ((i4 & 4) != 0) {
            i2 = tonTransactionParamsResponse.walletSeqno;
        }
        if ((i4 & 8) != 0) {
            i3 = tonTransactionParamsResponse.f304wc;
        }
        return tonTransactionParamsResponse.copy(i, str, i2, i3);
    }

    public final int component1() {
        return this.sendMode;
    }

    public final String component2() {
        return this.toWalletAddressFixed;
    }

    public final int component3() {
        return this.walletSeqno;
    }

    public final int component4() {
        return this.f304wc;
    }

    public final TonTransactionParamsResponse copy(int i, String toWalletAddressFixed, int i2, int i3) {
        Intrinsics.checkNotNullParameter(toWalletAddressFixed, "toWalletAddressFixed");
        return new TonTransactionParamsResponse(i, toWalletAddressFixed, i2, i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonTransactionParamsResponse) {
            TonTransactionParamsResponse tonTransactionParamsResponse = (TonTransactionParamsResponse) obj;
            return this.sendMode == tonTransactionParamsResponse.sendMode && Intrinsics.areEqual(this.toWalletAddressFixed, tonTransactionParamsResponse.toWalletAddressFixed) && this.walletSeqno == tonTransactionParamsResponse.walletSeqno && this.f304wc == tonTransactionParamsResponse.f304wc;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.sendMode * 31) + this.toWalletAddressFixed.hashCode()) * 31) + this.walletSeqno) * 31) + this.f304wc;
    }

    public String toString() {
        return "TonTransactionParamsResponse(sendMode=" + this.sendMode + ", toWalletAddressFixed=" + this.toWalletAddressFixed + ", walletSeqno=" + this.walletSeqno + ", wc=" + this.f304wc + ')';
    }

    public TonTransactionParamsResponse(int i, String toWalletAddressFixed, int i2, int i3) {
        Intrinsics.checkNotNullParameter(toWalletAddressFixed, "toWalletAddressFixed");
        this.sendMode = i;
        this.toWalletAddressFixed = toWalletAddressFixed;
        this.walletSeqno = i2;
        this.f304wc = i3;
    }

    public final int getSendMode() {
        return this.sendMode;
    }

    public final String getToWalletAddressFixed() {
        return this.toWalletAddressFixed;
    }

    public final int getWalletSeqno() {
        return this.walletSeqno;
    }

    public final int getWc() {
        return this.f304wc;
    }
}
