package com.smedialink.storage.domain.model.wallet.transaction;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransactionType.kt */
/* loaded from: classes3.dex */
public enum TransactionType {
    REGISTRATION,
    REFERRAL_BONUS,
    PURCHASE_COINS,
    LOTTERY_BONUS,
    TRANSFER_COINS,
    TRANSFER_CRYPTO,
    SIMPLEX_PAYMENT_REQUEST,
    TAKE_AWAY_COINS,
    SWAP_CRYPTO,
    CANCEL_CRYPTO,
    APPROVE_CRYPTO,
    UNKNOWN;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: TransactionType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TransactionType map(String type) {
            TransactionType transactionType;
            Intrinsics.checkNotNullParameter(type, "type");
            TransactionType[] values = TransactionType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    transactionType = null;
                    break;
                }
                transactionType = values[i];
                if (Intrinsics.areEqual(transactionType.name(), type)) {
                    break;
                }
                i++;
            }
            return transactionType == null ? TransactionType.UNKNOWN : transactionType;
        }
    }
}
