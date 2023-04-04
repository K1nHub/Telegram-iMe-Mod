package com.iMe.storage.data.locale.prefs.model;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.CryptoWalletInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletInformationMetadata.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInformationMetadata {
    private final long lastUpdateMillis;
    private final CryptoWalletInfo walletInfo;

    public CryptoWalletInformationMetadata() {
        this(0L, null, 3, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoWalletInformationMetadata) {
            CryptoWalletInformationMetadata cryptoWalletInformationMetadata = (CryptoWalletInformationMetadata) obj;
            return this.lastUpdateMillis == cryptoWalletInformationMetadata.lastUpdateMillis && Intrinsics.areEqual(this.walletInfo, cryptoWalletInformationMetadata.walletInfo);
        }
        return false;
    }

    public int hashCode() {
        int m716m = BotsDbModel$$ExternalSyntheticBackport0.m716m(this.lastUpdateMillis) * 31;
        CryptoWalletInfo cryptoWalletInfo = this.walletInfo;
        return m716m + (cryptoWalletInfo == null ? 0 : cryptoWalletInfo.hashCode());
    }

    public String toString() {
        return "CryptoWalletInformationMetadata(lastUpdateMillis=" + this.lastUpdateMillis + ", walletInfo=" + this.walletInfo + ')';
    }

    public CryptoWalletInformationMetadata(long j, CryptoWalletInfo cryptoWalletInfo) {
        this.lastUpdateMillis = j;
        this.walletInfo = cryptoWalletInfo;
    }

    public /* synthetic */ CryptoWalletInformationMetadata(long j, CryptoWalletInfo cryptoWalletInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? null : cryptoWalletInfo);
    }

    public final CryptoWalletInfo getWalletInfo() {
        return this.walletInfo;
    }
}
