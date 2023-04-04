package com.iMe.storage.domain.model.google;

import android.net.Uri;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DynamicLinkData.kt */
/* loaded from: classes3.dex */
public abstract class DynamicLinkData {
    private static final String BINANCE_PAYMENT_ID_QUERY_KEY = "binance_payment_id";
    public static final Companion Companion = new Companion(null);

    public /* synthetic */ DynamicLinkData(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private DynamicLinkData() {
    }

    /* compiled from: DynamicLinkData.kt */
    /* loaded from: classes3.dex */
    public static final class BinancePayment extends DynamicLinkData {
        private final String binancePayId;

        public static /* synthetic */ BinancePayment copy$default(BinancePayment binancePayment, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = binancePayment.binancePayId;
            }
            return binancePayment.copy(str);
        }

        public final String component1() {
            return this.binancePayId;
        }

        public final BinancePayment copy(String binancePayId) {
            Intrinsics.checkNotNullParameter(binancePayId, "binancePayId");
            return new BinancePayment(binancePayId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BinancePayment) && Intrinsics.areEqual(this.binancePayId, ((BinancePayment) obj).binancePayId);
        }

        public int hashCode() {
            return this.binancePayId.hashCode();
        }

        public String toString() {
            return "BinancePayment(binancePayId=" + this.binancePayId + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BinancePayment(String binancePayId) {
            super(null);
            Intrinsics.checkNotNullParameter(binancePayId, "binancePayId");
            this.binancePayId = binancePayId;
        }

        public final String getBinancePayId() {
            return this.binancePayId;
        }
    }

    /* compiled from: DynamicLinkData.kt */
    /* loaded from: classes3.dex */
    public static final class NotSupported extends DynamicLinkData {
        public static final NotSupported INSTANCE = new NotSupported();

        private NotSupported() {
            super(null);
        }
    }

    /* compiled from: DynamicLinkData.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DynamicLinkData parseDynamicLink(Uri uri) {
            if (uri != null) {
                String queryParameter = uri.getQueryParameter(DynamicLinkData.BINANCE_PAYMENT_ID_QUERY_KEY);
                if (queryParameter == null) {
                    queryParameter = "";
                }
                return queryParameter.length() > 0 ? new BinancePayment(queryParameter) : NotSupported.INSTANCE;
            }
            return NotSupported.INSTANCE;
        }
    }
}
