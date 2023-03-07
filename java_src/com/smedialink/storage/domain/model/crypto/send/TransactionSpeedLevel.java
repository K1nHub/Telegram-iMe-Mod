package com.smedialink.storage.domain.model.crypto.send;

import com.smedialink.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: TransactionSpeedLevel.kt */
/* loaded from: classes3.dex */
public enum TransactionSpeedLevel {
    LOW(R$string.transaction_speed_low),
    MEDIUM(R$string.transaction_speed_medium),
    FASTEST(R$string.transaction_speed_fastest);
    
    public static final Companion Companion = new Companion(null);
    private static final TransactionSpeedLevel defaultValue;
    private final int title;

    TransactionSpeedLevel(int i) {
        this.title = i;
    }

    public final int getTitle() {
        return this.title;
    }

    static {
        defaultValue = r0;
    }

    /* compiled from: TransactionSpeedLevel.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TransactionSpeedLevel getDefaultValue() {
            return TransactionSpeedLevel.defaultValue;
        }
    }
}
