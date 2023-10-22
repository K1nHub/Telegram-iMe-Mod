package com.iMe.model.wallet.crypto.simplex;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: PaymentResult.kt */
/* loaded from: classes3.dex */
public abstract class PaymentResult {
    public /* synthetic */ PaymentResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: PaymentResult.kt */
    /* loaded from: classes3.dex */
    public static final class Success extends PaymentResult {
        public static final Success INSTANCE = new Success();

        private Success() {
            super(null);
        }
    }

    private PaymentResult() {
    }

    /* compiled from: PaymentResult.kt */
    /* loaded from: classes3.dex */
    public static final class Failed extends PaymentResult {
        public static final Failed INSTANCE = new Failed();

        private Failed() {
            super(null);
        }
    }
}
