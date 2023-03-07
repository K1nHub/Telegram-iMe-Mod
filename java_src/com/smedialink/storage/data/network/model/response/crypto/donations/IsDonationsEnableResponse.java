package com.smedialink.storage.data.network.model.response.crypto.donations;
/* compiled from: IsDonationsEnableResponse.kt */
/* loaded from: classes3.dex */
public final class IsDonationsEnableResponse {
    private final boolean isDonationEnabled;

    public static /* synthetic */ IsDonationsEnableResponse copy$default(IsDonationsEnableResponse isDonationsEnableResponse, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = isDonationsEnableResponse.isDonationEnabled;
        }
        return isDonationsEnableResponse.copy(z);
    }

    public final boolean component1() {
        return this.isDonationEnabled;
    }

    public final IsDonationsEnableResponse copy(boolean z) {
        return new IsDonationsEnableResponse(z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof IsDonationsEnableResponse) && this.isDonationEnabled == ((IsDonationsEnableResponse) obj).isDonationEnabled;
    }

    public int hashCode() {
        boolean z = this.isDonationEnabled;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "IsDonationsEnableResponse(isDonationEnabled=" + this.isDonationEnabled + ')';
    }

    public IsDonationsEnableResponse(boolean z) {
        this.isDonationEnabled = z;
    }

    public final boolean isDonationEnabled() {
        return this.isDonationEnabled;
    }
}
