package com.iMe.storage.data.locale.prefs.model;

import com.iMe.storage.domain.model.crypto.airdrop.AirdropDisplayStatus;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStatus;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletAirdropMetadata.kt */
/* loaded from: classes4.dex */
public final class WalletAirdropMetadata {
    public static final Companion Companion = new Companion(null);

    /* renamed from: default  reason: not valid java name */
    private static final WalletAirdropMetadata f1982default = new WalletAirdropMetadata(false, 0, "", AirdropStatus.UNKNOWN, AirdropDisplayStatus.UNKNOWN);
    private final String airdropRequestId;
    private final AirdropStatus airdropStatus;
    private final AirdropDisplayStatus alertStatus;
    private final boolean isRegistered;
    private final int tokenValue;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletAirdropMetadata) {
            WalletAirdropMetadata walletAirdropMetadata = (WalletAirdropMetadata) obj;
            return this.isRegistered == walletAirdropMetadata.isRegistered && this.tokenValue == walletAirdropMetadata.tokenValue && Intrinsics.areEqual(this.airdropRequestId, walletAirdropMetadata.airdropRequestId) && this.airdropStatus == walletAirdropMetadata.airdropStatus && this.alertStatus == walletAirdropMetadata.alertStatus;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    public int hashCode() {
        boolean z = this.isRegistered;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (((((((r0 * 31) + this.tokenValue) * 31) + this.airdropRequestId.hashCode()) * 31) + this.airdropStatus.hashCode()) * 31) + this.alertStatus.hashCode();
    }

    public String toString() {
        return "WalletAirdropMetadata(isRegistered=" + this.isRegistered + ", tokenValue=" + this.tokenValue + ", airdropRequestId=" + this.airdropRequestId + ", airdropStatus=" + this.airdropStatus + ", alertStatus=" + this.alertStatus + ')';
    }

    public WalletAirdropMetadata(boolean z, int i, String airdropRequestId, AirdropStatus airdropStatus, AirdropDisplayStatus alertStatus) {
        Intrinsics.checkNotNullParameter(airdropRequestId, "airdropRequestId");
        Intrinsics.checkNotNullParameter(airdropStatus, "airdropStatus");
        Intrinsics.checkNotNullParameter(alertStatus, "alertStatus");
        this.isRegistered = z;
        this.tokenValue = i;
        this.airdropRequestId = airdropRequestId;
        this.airdropStatus = airdropStatus;
        this.alertStatus = alertStatus;
    }

    public final int getTokenValue() {
        return this.tokenValue;
    }

    /* compiled from: WalletAirdropMetadata.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletAirdropMetadata getDefault() {
            return WalletAirdropMetadata.f1982default;
        }
    }
}
