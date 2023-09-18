package com.iMe.storage.domain.model.google;

import android.net.Uri;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DynamicLinkData.kt */
/* loaded from: classes4.dex */
public abstract class DynamicLinkData {
    private static final String BINANCE_PAYMENT_ID_QUERY_KEY = "binance_payment_id";
    private static final String CRYPTOBOX_ID_QUERY_KEY = "cryptobox_id";
    public static final Companion Companion = new Companion(null);

    public /* synthetic */ DynamicLinkData(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private DynamicLinkData() {
    }

    /* compiled from: DynamicLinkData.kt */
    /* loaded from: classes4.dex */
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
    /* loaded from: classes4.dex */
    public static final class CryptoBox extends DynamicLinkData {
        private final String cryptoBoxId;

        public static /* synthetic */ CryptoBox copy$default(CryptoBox cryptoBox, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cryptoBox.cryptoBoxId;
            }
            return cryptoBox.copy(str);
        }

        public final String component1() {
            return this.cryptoBoxId;
        }

        public final CryptoBox copy(String cryptoBoxId) {
            Intrinsics.checkNotNullParameter(cryptoBoxId, "cryptoBoxId");
            return new CryptoBox(cryptoBoxId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CryptoBox) && Intrinsics.areEqual(this.cryptoBoxId, ((CryptoBox) obj).cryptoBoxId);
        }

        public int hashCode() {
            return this.cryptoBoxId.hashCode();
        }

        public String toString() {
            return "CryptoBox(cryptoBoxId=" + this.cryptoBoxId + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CryptoBox(String cryptoBoxId) {
            super(null);
            Intrinsics.checkNotNullParameter(cryptoBoxId, "cryptoBoxId");
            this.cryptoBoxId = cryptoBoxId;
        }

        public final String getCryptoBoxId() {
            return this.cryptoBoxId;
        }
    }

    /* compiled from: DynamicLinkData.kt */
    /* loaded from: classes4.dex */
    public static final class NotSupported extends DynamicLinkData {
        public static final NotSupported INSTANCE = new NotSupported();

        private NotSupported() {
            super(null);
        }
    }

    /* compiled from: DynamicLinkData.kt */
    /* loaded from: classes4.dex */
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
                String queryParameter2 = uri.getQueryParameter(DynamicLinkData.CRYPTOBOX_ID_QUERY_KEY);
                String str = queryParameter2 != null ? queryParameter2 : "";
                if (queryParameter.length() > 0) {
                    return new BinancePayment(queryParameter);
                }
                return str.length() > 0 ? new CryptoBox(str) : NotSupported.INSTANCE;
            }
            return NotSupported.INSTANCE;
        }
    }
}
