package com.iMe.storage.data.network.model.request.crypto.fragment;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentPreparePremiumBuyRequest.kt */
/* loaded from: classes3.dex */
public final class TonFragmentPreparePremiumBuyRequest {
    private final String publicKeyBase64;
    private final String recipient;

    public static /* synthetic */ TonFragmentPreparePremiumBuyRequest copy$default(TonFragmentPreparePremiumBuyRequest tonFragmentPreparePremiumBuyRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tonFragmentPreparePremiumBuyRequest.recipient;
        }
        if ((i & 2) != 0) {
            str2 = tonFragmentPreparePremiumBuyRequest.publicKeyBase64;
        }
        return tonFragmentPreparePremiumBuyRequest.copy(str, str2);
    }

    public final String component1() {
        return this.recipient;
    }

    public final String component2() {
        return this.publicKeyBase64;
    }

    public final TonFragmentPreparePremiumBuyRequest copy(String recipient, String publicKeyBase64) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(publicKeyBase64, "publicKeyBase64");
        return new TonFragmentPreparePremiumBuyRequest(recipient, publicKeyBase64);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentPreparePremiumBuyRequest) {
            TonFragmentPreparePremiumBuyRequest tonFragmentPreparePremiumBuyRequest = (TonFragmentPreparePremiumBuyRequest) obj;
            return Intrinsics.areEqual(this.recipient, tonFragmentPreparePremiumBuyRequest.recipient) && Intrinsics.areEqual(this.publicKeyBase64, tonFragmentPreparePremiumBuyRequest.publicKeyBase64);
        }
        return false;
    }

    public int hashCode() {
        return (this.recipient.hashCode() * 31) + this.publicKeyBase64.hashCode();
    }

    public String toString() {
        return "TonFragmentPreparePremiumBuyRequest(recipient=" + this.recipient + ", publicKeyBase64=" + this.publicKeyBase64 + ')';
    }

    public TonFragmentPreparePremiumBuyRequest(String recipient, String publicKeyBase64) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(publicKeyBase64, "publicKeyBase64");
        this.recipient = recipient;
        this.publicKeyBase64 = publicKeyBase64;
    }

    public final String getRecipient() {
        return this.recipient;
    }

    public final String getPublicKeyBase64() {
        return this.publicKeyBase64;
    }
}
