package com.iMe.storage.domain.model.notification;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NotificationType.kt */
/* loaded from: classes4.dex */
public enum NotificationType {
    CANCEL_TRANSACTION,
    INCOMING_CRYPTO_TRANSFER,
    OUTGOING_CRYPTO_TRANSFER,
    INCOMING_DONATION,
    OUTGOING_DONATION,
    SIMPLEX_PAYMENT_REQUEST_EVENT,
    REQUEST_BINANCE_PAY_TRANSACTION,
    INCOMING_BINANCE_PAY_TRANSACTION,
    APPROVE_CRYPTO,
    STAKING_SAFE_WITHDRAWAL_STARTED,
    STAKING_SAFE_WITHDRAWAL_FINISHED,
    STAKING_STARTED,
    STAKING_FINISHED,
    UNSUPPORTED;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: NotificationType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final NotificationType map(String value) {
            NotificationType notificationType;
            Intrinsics.checkNotNullParameter(value, "value");
            NotificationType[] values = NotificationType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    notificationType = null;
                    break;
                }
                notificationType = values[i];
                if (Intrinsics.areEqual(notificationType.name(), value)) {
                    break;
                }
                i++;
            }
            return notificationType == null ? NotificationType.UNSUPPORTED : notificationType;
        }
    }
}
