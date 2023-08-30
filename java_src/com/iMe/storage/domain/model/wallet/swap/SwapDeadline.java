package com.iMe.storage.domain.model.wallet.swap;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: SwapDeadline.kt */
/* loaded from: classes3.dex */
public enum SwapDeadline {
    MINUTES_5(5),
    MINUTES_10(10),
    MINUTES_20(20),
    MINUTES_30(30);
    
    public static final Companion Companion = new Companion(null);
    private static final SwapDeadline defaultValue;
    private final int minutes;

    SwapDeadline(int i) {
        this.minutes = i;
    }

    public final int getMinutes() {
        return this.minutes;
    }

    static {
        SwapDeadline swapDeadline;
        defaultValue = swapDeadline;
    }

    /* compiled from: SwapDeadline.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SwapDeadline getDefaultValue() {
            return SwapDeadline.defaultValue;
        }
    }
}
