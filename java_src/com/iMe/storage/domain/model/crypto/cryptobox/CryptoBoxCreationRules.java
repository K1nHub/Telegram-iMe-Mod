package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxCreationRules.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxCreationRules {
    private final String factoryContractAddress;
    private final String factoryContractUrl;
    private final double feePerCryptobox;
    private final double feePerUser;
    private final TokenDetailed feeToken;
    private final int minimalCapacity;

    public final TokenDetailed component1() {
        return this.feeToken;
    }

    public final double component2() {
        return this.feePerUser;
    }

    public final double component3() {
        return this.feePerCryptobox;
    }

    public final int component4() {
        return this.minimalCapacity;
    }

    public final String component5() {
        return this.factoryContractAddress;
    }

    public final String component6() {
        return this.factoryContractUrl;
    }

    public final CryptoBoxCreationRules copy(TokenDetailed feeToken, double d, double d2, int i, String factoryContractAddress, String factoryContractUrl) {
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(factoryContractAddress, "factoryContractAddress");
        Intrinsics.checkNotNullParameter(factoryContractUrl, "factoryContractUrl");
        return new CryptoBoxCreationRules(feeToken, d, d2, i, factoryContractAddress, factoryContractUrl);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxCreationRules) {
            CryptoBoxCreationRules cryptoBoxCreationRules = (CryptoBoxCreationRules) obj;
            return Intrinsics.areEqual(this.feeToken, cryptoBoxCreationRules.feeToken) && Double.compare(this.feePerUser, cryptoBoxCreationRules.feePerUser) == 0 && Double.compare(this.feePerCryptobox, cryptoBoxCreationRules.feePerCryptobox) == 0 && this.minimalCapacity == cryptoBoxCreationRules.minimalCapacity && Intrinsics.areEqual(this.factoryContractAddress, cryptoBoxCreationRules.factoryContractAddress) && Intrinsics.areEqual(this.factoryContractUrl, cryptoBoxCreationRules.factoryContractUrl);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.feeToken.hashCode() * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.feePerUser)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m1015m(this.feePerCryptobox)) * 31) + this.minimalCapacity) * 31) + this.factoryContractAddress.hashCode()) * 31) + this.factoryContractUrl.hashCode();
    }

    public String toString() {
        return "CryptoBoxCreationRules(feeToken=" + this.feeToken + ", feePerUser=" + this.feePerUser + ", feePerCryptobox=" + this.feePerCryptobox + ", minimalCapacity=" + this.minimalCapacity + ", factoryContractAddress=" + this.factoryContractAddress + ", factoryContractUrl=" + this.factoryContractUrl + ')';
    }

    public CryptoBoxCreationRules(TokenDetailed feeToken, double d, double d2, int i, String factoryContractAddress, String factoryContractUrl) {
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(factoryContractAddress, "factoryContractAddress");
        Intrinsics.checkNotNullParameter(factoryContractUrl, "factoryContractUrl");
        this.feeToken = feeToken;
        this.feePerUser = d;
        this.feePerCryptobox = d2;
        this.minimalCapacity = i;
        this.factoryContractAddress = factoryContractAddress;
        this.factoryContractUrl = factoryContractUrl;
    }

    public final TokenDetailed getFeeToken() {
        return this.feeToken;
    }

    public final double getFeePerUser() {
        return this.feePerUser;
    }

    public final double getFeePerCryptobox() {
        return this.feePerCryptobox;
    }

    public final int getMinimalCapacity() {
        return this.minimalCapacity;
    }

    public final String getFactoryContractAddress() {
        return this.factoryContractAddress;
    }

    public final String getFactoryContractUrl() {
        return this.factoryContractUrl;
    }
}
