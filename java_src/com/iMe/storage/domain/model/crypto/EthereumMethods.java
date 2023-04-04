package com.iMe.storage.domain.model.crypto;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EthereumMethods.kt */
/* loaded from: classes3.dex */
public enum EthereumMethods {
    TRANSFER,
    SWAP,
    APPROVE,
    UNKNOWN;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: EthereumMethods.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final EthereumMethods map(String value) {
            EthereumMethods ethereumMethods;
            Intrinsics.checkNotNullParameter(value, "value");
            EthereumMethods[] values = EthereumMethods.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    ethereumMethods = null;
                    break;
                }
                ethereumMethods = values[i];
                if (Intrinsics.areEqual(ethereumMethods.name(), value)) {
                    break;
                }
                i++;
            }
            return ethereumMethods == null ? EthereumMethods.UNKNOWN : ethereumMethods;
        }
    }
}
