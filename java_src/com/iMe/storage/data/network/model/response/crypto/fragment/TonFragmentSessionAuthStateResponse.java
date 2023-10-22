package com.iMe.storage.data.network.model.response.crypto.fragment;

import com.google.gson.annotations.SerializedName;
/* compiled from: TonFragmentSessionAuthStateResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentSessionAuthStateResponse {
    @SerializedName("authorized")
    private final boolean isAuthorized;

    public static /* synthetic */ TonFragmentSessionAuthStateResponse copy$default(TonFragmentSessionAuthStateResponse tonFragmentSessionAuthStateResponse, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = tonFragmentSessionAuthStateResponse.isAuthorized;
        }
        return tonFragmentSessionAuthStateResponse.copy(z);
    }

    public final boolean component1() {
        return this.isAuthorized;
    }

    public final TonFragmentSessionAuthStateResponse copy(boolean z) {
        return new TonFragmentSessionAuthStateResponse(z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TonFragmentSessionAuthStateResponse) && this.isAuthorized == ((TonFragmentSessionAuthStateResponse) obj).isAuthorized;
    }

    public int hashCode() {
        boolean z = this.isAuthorized;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "TonFragmentSessionAuthStateResponse(isAuthorized=" + this.isAuthorized + ')';
    }

    public TonFragmentSessionAuthStateResponse(boolean z) {
        this.isAuthorized = z;
    }

    public final boolean isAuthorized() {
        return this.isAuthorized;
    }
}
