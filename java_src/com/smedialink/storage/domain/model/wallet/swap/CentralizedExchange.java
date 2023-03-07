package com.smedialink.storage.domain.model.wallet.swap;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CentralizedExchange.kt */
/* loaded from: classes3.dex */
public enum CentralizedExchange {
    BINANCE,
    GATE,
    ASCENDEEX,
    UNKNOWN;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: CentralizedExchange.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CentralizedExchange map(String code) {
            CentralizedExchange centralizedExchange;
            Intrinsics.checkNotNullParameter(code, "code");
            CentralizedExchange[] values = CentralizedExchange.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    centralizedExchange = null;
                    break;
                }
                centralizedExchange = values[i];
                if (Intrinsics.areEqual(centralizedExchange.name(), code)) {
                    break;
                }
                i++;
            }
            return centralizedExchange == null ? CentralizedExchange.UNKNOWN : centralizedExchange;
        }
    }
}
