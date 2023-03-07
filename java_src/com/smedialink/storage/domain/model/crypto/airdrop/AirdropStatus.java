package com.smedialink.storage.domain.model.crypto.airdrop;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AirdropStatus.kt */
/* loaded from: classes3.dex */
public enum AirdropStatus {
    UNKNOWN,
    READY,
    NOT_READY,
    FINISHED;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: AirdropStatus.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AirdropStatus map(String value) {
            AirdropStatus airdropStatus;
            Intrinsics.checkNotNullParameter(value, "value");
            AirdropStatus[] values = AirdropStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    airdropStatus = null;
                    break;
                }
                airdropStatus = values[i];
                if (Intrinsics.areEqual(airdropStatus.name(), value)) {
                    break;
                }
                i++;
            }
            return airdropStatus == null ? AirdropStatus.UNKNOWN : airdropStatus;
        }
    }
}
