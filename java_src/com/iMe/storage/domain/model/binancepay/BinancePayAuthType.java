package com.iMe.storage.domain.model.binancepay;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayAuthType.kt */
/* loaded from: classes3.dex */
public enum BinancePayAuthType {
    CODE,
    REFRESH_TOKEN;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: BinancePayAuthType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BinancePayAuthType map(String value) {
            BinancePayAuthType binancePayAuthType;
            Intrinsics.checkNotNullParameter(value, "value");
            BinancePayAuthType[] values = BinancePayAuthType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    binancePayAuthType = null;
                    break;
                }
                binancePayAuthType = values[i];
                if (Intrinsics.areEqual(binancePayAuthType.name(), value)) {
                    break;
                }
                i++;
            }
            return binancePayAuthType == null ? BinancePayAuthType.CODE : binancePayAuthType;
        }
    }
}
