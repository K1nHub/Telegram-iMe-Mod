package com.smedialink.storage.domain.model.wallet.swap;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: SwapSlippage.kt */
/* loaded from: classes3.dex */
public enum SwapSlippage {
    PERCENT_0_5(0.5f),
    PERCENT_1(1.0f),
    PERCENT_5(5.0f),
    PERCENT_10(10.0f);
    
    public static final Companion Companion = new Companion(null);
    private static final SwapSlippage defaultValue;
    private final float percent;

    SwapSlippage(float f) {
        this.percent = f;
    }

    public final float getPercent() {
        return this.percent;
    }

    static {
        SwapSlippage swapSlippage;
        defaultValue = swapSlippage;
    }

    /* compiled from: SwapSlippage.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SwapSlippage getDefaultValue() {
            return SwapSlippage.defaultValue;
        }
    }
}
