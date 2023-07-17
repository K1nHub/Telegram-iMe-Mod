package com.iMe.storage.data.locale.prefs.model;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletInformationMetadata.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInformationMetadata {
    private final long lastUpdateMillis;
    private final CryptoWalletsInfo walletInfo;

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
        int m706m = BotsDbModel$$ExternalSyntheticBackport0.m706m(this.lastUpdateMillis) * 31;
        CryptoWalletsInfo cryptoWalletsInfo = this.walletInfo;
        return m706m + (cryptoWalletsInfo == null ? 0 : cryptoWalletsInfo.hashCode());
    }

    public String toString() {
        return "CryptoWalletInformationMetadata(lastUpdateMillis=" + this.lastUpdateMillis + ", walletInfo=" + this.walletInfo + ')';
    }

    public CryptoWalletInformationMetadata(long j, CryptoWalletsInfo cryptoWalletsInfo) {
        this.lastUpdateMillis = j;
        this.walletInfo = cryptoWalletsInfo;
    }

    public /* synthetic */ CryptoWalletInformationMetadata(long j, CryptoWalletsInfo cryptoWalletsInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? null : cryptoWalletsInfo);
    }

    public final CryptoWalletsInfo getWalletInfo() {
        return this.walletInfo;
    }
}
