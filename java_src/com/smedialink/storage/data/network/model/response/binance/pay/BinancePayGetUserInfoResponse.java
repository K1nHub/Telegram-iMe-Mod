package com.smedialink.storage.data.network.model.response.binance.pay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayGetUserInfoResponse.kt */
/* loaded from: classes3.dex */
public final class BinancePayGetUserInfoResponse {
    private final String email;

    /* renamed from: id */
    private final String f296id;
    private final VerificationDetails verificationDetails;

    public static /* synthetic */ BinancePayGetUserInfoResponse copy$default(BinancePayGetUserInfoResponse binancePayGetUserInfoResponse, String str, String str2, VerificationDetails verificationDetails, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binancePayGetUserInfoResponse.email;
        }
        if ((i & 2) != 0) {
            str2 = binancePayGetUserInfoResponse.f296id;
        }
        if ((i & 4) != 0) {
            verificationDetails = binancePayGetUserInfoResponse.verificationDetails;
        }
        return binancePayGetUserInfoResponse.copy(str, str2, verificationDetails);
    }

    public final String component1() {
        return this.email;
    }

    public final String component2() {
        return this.f296id;
    }

    public final VerificationDetails component3() {
        return this.verificationDetails;
    }

    public final BinancePayGetUserInfoResponse copy(String str, String id, VerificationDetails verificationDetails) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(verificationDetails, "verificationDetails");
        return new BinancePayGetUserInfoResponse(str, id, verificationDetails);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinancePayGetUserInfoResponse) {
            BinancePayGetUserInfoResponse binancePayGetUserInfoResponse = (BinancePayGetUserInfoResponse) obj;
            return Intrinsics.areEqual(this.email, binancePayGetUserInfoResponse.email) && Intrinsics.areEqual(this.f296id, binancePayGetUserInfoResponse.f296id) && Intrinsics.areEqual(this.verificationDetails, binancePayGetUserInfoResponse.verificationDetails);
        }
        return false;
    }

    public int hashCode() {
        String str = this.email;
        return ((((str == null ? 0 : str.hashCode()) * 31) + this.f296id.hashCode()) * 31) + this.verificationDetails.hashCode();
    }

    public String toString() {
        return "BinancePayGetUserInfoResponse(email=" + this.email + ", id=" + this.f296id + ", verificationDetails=" + this.verificationDetails + ')';
    }

    public BinancePayGetUserInfoResponse(String str, String id, VerificationDetails verificationDetails) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(verificationDetails, "verificationDetails");
        this.email = str;
        this.f296id = id;
        this.verificationDetails = verificationDetails;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getId() {
        return this.f296id;
    }

    public final VerificationDetails getVerificationDetails() {
        return this.verificationDetails;
    }

    /* compiled from: BinancePayGetUserInfoResponse.kt */
    /* loaded from: classes3.dex */
    public static final class VerificationDetails {
        private final String certificateStatus;
        private final boolean disabled;

        public static /* synthetic */ VerificationDetails copy$default(VerificationDetails verificationDetails, boolean z, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                z = verificationDetails.disabled;
            }
            if ((i & 2) != 0) {
                str = verificationDetails.certificateStatus;
            }
            return verificationDetails.copy(z, str);
        }

        public final boolean component1() {
            return this.disabled;
        }

        public final String component2() {
            return this.certificateStatus;
        }

        public final VerificationDetails copy(boolean z, String certificateStatus) {
            Intrinsics.checkNotNullParameter(certificateStatus, "certificateStatus");
            return new VerificationDetails(z, certificateStatus);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof VerificationDetails) {
                VerificationDetails verificationDetails = (VerificationDetails) obj;
                return this.disabled == verificationDetails.disabled && Intrinsics.areEqual(this.certificateStatus, verificationDetails.certificateStatus);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        public int hashCode() {
            boolean z = this.disabled;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            return (r0 * 31) + this.certificateStatus.hashCode();
        }

        public String toString() {
            return "VerificationDetails(disabled=" + this.disabled + ", certificateStatus=" + this.certificateStatus + ')';
        }

        public VerificationDetails(boolean z, String certificateStatus) {
            Intrinsics.checkNotNullParameter(certificateStatus, "certificateStatus");
            this.disabled = z;
            this.certificateStatus = certificateStatus;
        }

        public final boolean getDisabled() {
            return this.disabled;
        }

        public final String getCertificateStatus() {
            return this.certificateStatus;
        }
    }
}
