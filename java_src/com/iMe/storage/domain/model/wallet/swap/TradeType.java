package com.iMe.storage.domain.model.wallet.swap;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TradeType.kt */
/* loaded from: classes3.dex */
public enum TradeType {
    EXACT_INPUT(0),
    EXACT_OUTPUT(1);
    
    public static final Companion Companion = new Companion(null);
    private final int value;

    TradeType(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }

    /* compiled from: TradeType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TradeType map(String code) {
            TradeType tradeType;
            Intrinsics.checkNotNullParameter(code, "code");
            TradeType[] values = TradeType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    tradeType = null;
                    break;
                }
                tradeType = values[i];
                if (Intrinsics.areEqual(tradeType.name(), code)) {
                    break;
                }
                i++;
            }
            return tradeType == null ? TradeType.EXACT_INPUT : tradeType;
        }
    }
}
