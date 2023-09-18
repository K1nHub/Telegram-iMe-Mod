package com.iMe.storage.domain.model.binancepay;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceVerificationStatus.kt */
/* loaded from: classes4.dex */
public enum BinanceVerificationStatus {
    PASS,
    REJECT,
    NONE,
    IN_PROGRESS;
    
    public static final Companion Companion = new Companion(null);

    public final boolean isVerified() {
        return this == PASS;
    }

    /* compiled from: BinanceVerificationStatus.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BinanceVerificationStatus map(String value) {
            BinanceVerificationStatus binanceVerificationStatus;
            Intrinsics.checkNotNullParameter(value, "value");
            BinanceVerificationStatus[] values = BinanceVerificationStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    binanceVerificationStatus = null;
                    break;
                }
                binanceVerificationStatus = values[i];
                if (Intrinsics.areEqual(binanceVerificationStatus.name(), value)) {
                    break;
                }
                i++;
            }
            return binanceVerificationStatus == null ? BinanceVerificationStatus.NONE : binanceVerificationStatus;
        }
    }
}
