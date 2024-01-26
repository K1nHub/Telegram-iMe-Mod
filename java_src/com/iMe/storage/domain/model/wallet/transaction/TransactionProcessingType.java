package com.iMe.storage.domain.model.wallet.transaction;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransactionProcessingType.kt */
/* loaded from: classes3.dex */
public enum TransactionProcessingType {
    UNISWAP_V2,
    UNISWAP_V3,
    ONEINCH,
    ONEINCH_FUSION,
    SYMBIOSIS,
    PANCAKESWAP_V2,
    UNKNOWN;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: TransactionProcessingType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TransactionProcessingType map(String value) {
            TransactionProcessingType transactionProcessingType;
            Intrinsics.checkNotNullParameter(value, "value");
            TransactionProcessingType[] values = TransactionProcessingType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    transactionProcessingType = null;
                    break;
                }
                transactionProcessingType = values[i];
                if (Intrinsics.areEqual(transactionProcessingType.name(), value)) {
                    break;
                }
                i++;
            }
            return transactionProcessingType == null ? TransactionProcessingType.UNKNOWN : transactionProcessingType;
        }
    }
}
