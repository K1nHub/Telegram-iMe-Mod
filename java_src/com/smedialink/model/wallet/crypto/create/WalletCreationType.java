package com.smedialink.model.wallet.crypto.create;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: WalletCreationType.kt */
/* loaded from: classes3.dex */
public enum WalletCreationType {
    CREATE,
    IMPORT,
    RESTORE;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: WalletCreationType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletCreationType getByIndex(int i) {
            WalletCreationType walletCreationType;
            WalletCreationType[] values = WalletCreationType.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    walletCreationType = null;
                    break;
                }
                walletCreationType = values[i2];
                if (walletCreationType.ordinal() == i) {
                    break;
                }
                i2++;
            }
            return walletCreationType == null ? WalletCreationType.CREATE : walletCreationType;
        }
    }
}
