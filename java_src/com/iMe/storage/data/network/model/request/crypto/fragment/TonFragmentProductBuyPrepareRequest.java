package com.iMe.storage.data.network.model.request.crypto.fragment;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentProductBuyPrepareRequest.kt */
/* loaded from: classes3.dex */
public final class TonFragmentProductBuyPrepareRequest {
    private final String price;
    private final String publicKeyBase64;
    private final String username;

    public static /* synthetic */ TonFragmentProductBuyPrepareRequest copy$default(TonFragmentProductBuyPrepareRequest tonFragmentProductBuyPrepareRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tonFragmentProductBuyPrepareRequest.username;
        }
        if ((i & 2) != 0) {
            str2 = tonFragmentProductBuyPrepareRequest.price;
        }
        if ((i & 4) != 0) {
            str3 = tonFragmentProductBuyPrepareRequest.publicKeyBase64;
        }
        return tonFragmentProductBuyPrepareRequest.copy(str, str2, str3);
    }

    public final String component1() {
        return this.username;
    }

    public final String component2() {
        return this.price;
    }

    public final String component3() {
        return this.publicKeyBase64;
    }

    public final TonFragmentProductBuyPrepareRequest copy(String username, String price, String publicKeyBase64) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(publicKeyBase64, "publicKeyBase64");
        return new TonFragmentProductBuyPrepareRequest(username, price, publicKeyBase64);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentProductBuyPrepareRequest) {
            TonFragmentProductBuyPrepareRequest tonFragmentProductBuyPrepareRequest = (TonFragmentProductBuyPrepareRequest) obj;
            return Intrinsics.areEqual(this.username, tonFragmentProductBuyPrepareRequest.username) && Intrinsics.areEqual(this.price, tonFragmentProductBuyPrepareRequest.price) && Intrinsics.areEqual(this.publicKeyBase64, tonFragmentProductBuyPrepareRequest.publicKeyBase64);
        }
        return false;
    }

    public int hashCode() {
        return (((this.username.hashCode() * 31) + this.price.hashCode()) * 31) + this.publicKeyBase64.hashCode();
    }

    public String toString() {
        return "TonFragmentProductBuyPrepareRequest(username=" + this.username + ", price=" + this.price + ", publicKeyBase64=" + this.publicKeyBase64 + ')';
    }

    public TonFragmentProductBuyPrepareRequest(String username, String price, String publicKeyBase64) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(publicKeyBase64, "publicKeyBase64");
        this.username = username;
        this.price = price;
        this.publicKeyBase64 = publicKeyBase64;
    }

    public final String getUsername() {
        return this.username;
    }

    public final String getPrice() {
        return this.price;
    }

    public final String getPublicKeyBase64() {
        return this.publicKeyBase64;
    }
}
