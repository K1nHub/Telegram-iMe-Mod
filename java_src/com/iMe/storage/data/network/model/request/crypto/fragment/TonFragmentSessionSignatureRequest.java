package com.iMe.storage.data.network.model.request.crypto.fragment;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentSessionSignatureRequest.kt */
/* loaded from: classes3.dex */
public final class TonFragmentSessionSignatureRequest {
    private final String address;
    @SerializedName("pubkey")
    private final String publicKey;
    private final String signature;
    private final String type;
    @SerializedName("wallet_id")
    private final int walletId;
    @SerializedName("wallet_version")
    private final String walletVersion;

    public static /* synthetic */ TonFragmentSessionSignatureRequest copy$default(TonFragmentSessionSignatureRequest tonFragmentSessionSignatureRequest, String str, String str2, String str3, String str4, int i, String str5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = tonFragmentSessionSignatureRequest.type;
        }
        if ((i2 & 2) != 0) {
            str2 = tonFragmentSessionSignatureRequest.signature;
        }
        String str6 = str2;
        if ((i2 & 4) != 0) {
            str3 = tonFragmentSessionSignatureRequest.address;
        }
        String str7 = str3;
        if ((i2 & 8) != 0) {
            str4 = tonFragmentSessionSignatureRequest.walletVersion;
        }
        String str8 = str4;
        if ((i2 & 16) != 0) {
            i = tonFragmentSessionSignatureRequest.walletId;
        }
        int i3 = i;
        if ((i2 & 32) != 0) {
            str5 = tonFragmentSessionSignatureRequest.publicKey;
        }
        return tonFragmentSessionSignatureRequest.copy(str, str6, str7, str8, i3, str5);
    }

    public final String component1() {
        return this.type;
    }

    public final String component2() {
        return this.signature;
    }

    public final String component3() {
        return this.address;
    }

    public final String component4() {
        return this.walletVersion;
    }

    public final int component5() {
        return this.walletId;
    }

    public final String component6() {
        return this.publicKey;
    }

    public final TonFragmentSessionSignatureRequest copy(String type, String signature, String address, String walletVersion, int i, String publicKey) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(walletVersion, "walletVersion");
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        return new TonFragmentSessionSignatureRequest(type, signature, address, walletVersion, i, publicKey);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentSessionSignatureRequest) {
            TonFragmentSessionSignatureRequest tonFragmentSessionSignatureRequest = (TonFragmentSessionSignatureRequest) obj;
            return Intrinsics.areEqual(this.type, tonFragmentSessionSignatureRequest.type) && Intrinsics.areEqual(this.signature, tonFragmentSessionSignatureRequest.signature) && Intrinsics.areEqual(this.address, tonFragmentSessionSignatureRequest.address) && Intrinsics.areEqual(this.walletVersion, tonFragmentSessionSignatureRequest.walletVersion) && this.walletId == tonFragmentSessionSignatureRequest.walletId && Intrinsics.areEqual(this.publicKey, tonFragmentSessionSignatureRequest.publicKey);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.type.hashCode() * 31) + this.signature.hashCode()) * 31) + this.address.hashCode()) * 31) + this.walletVersion.hashCode()) * 31) + this.walletId) * 31) + this.publicKey.hashCode();
    }

    public String toString() {
        return "TonFragmentSessionSignatureRequest(type=" + this.type + ", signature=" + this.signature + ", address=" + this.address + ", walletVersion=" + this.walletVersion + ", walletId=" + this.walletId + ", publicKey=" + this.publicKey + ')';
    }

    public TonFragmentSessionSignatureRequest(String type, String signature, String address, String walletVersion, int i, String publicKey) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(walletVersion, "walletVersion");
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        this.type = type;
        this.signature = signature;
        this.address = address;
        this.walletVersion = walletVersion;
        this.walletId = i;
        this.publicKey = publicKey;
    }

    public /* synthetic */ TonFragmentSessionSignatureRequest(String str, String str2, String str3, String str4, int i, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "ton-ownership" : str, str2, str3, str4, i, str5);
    }

    public final String getType() {
        return this.type;
    }

    public final String getSignature() {
        return this.signature;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getWalletVersion() {
        return this.walletVersion;
    }

    public final int getWalletId() {
        return this.walletId;
    }

    public final String getPublicKey() {
        return this.publicKey;
    }
}
