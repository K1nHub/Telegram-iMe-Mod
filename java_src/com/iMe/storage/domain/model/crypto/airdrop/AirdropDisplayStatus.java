package com.iMe.storage.domain.model.crypto.airdrop;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AirdropDisplayStatus.kt */
/* loaded from: classes4.dex */
public enum AirdropDisplayStatus {
    ACCEPTED,
    REJECTED,
    UNKNOWN;
    
    public static final Companion Companion = new Companion(null);

    public final boolean isRejected() {
        return this == REJECTED;
    }

    public final boolean isAccepted() {
        return this == ACCEPTED;
    }

    public final boolean isUnknown() {
        return this == UNKNOWN;
    }

    /* compiled from: AirdropDisplayStatus.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AirdropDisplayStatus map(String value) {
            AirdropDisplayStatus airdropDisplayStatus;
            Intrinsics.checkNotNullParameter(value, "value");
            AirdropDisplayStatus[] values = AirdropDisplayStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    airdropDisplayStatus = null;
                    break;
                }
                airdropDisplayStatus = values[i];
                if (Intrinsics.areEqual(airdropDisplayStatus.name(), value)) {
                    break;
                }
                i++;
            }
            return airdropDisplayStatus == null ? AirdropDisplayStatus.UNKNOWN : airdropDisplayStatus;
        }
    }
}
