package com.binance.android.binancepay.api;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class BinancePayFactory {
    public static final Companion Companion = new Companion(null);
    public static BinancePay instance;

    /* loaded from: classes.dex */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
            if (r2 == null) goto L7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
            if (r2 == null) goto L7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
            kotlin.jvm.internal.Intrinsics.throwNpe();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.binance.android.binancepay.api.BinancePay getBinancePay(android.content.Context r2) {
            /*
                r1 = this;
                java.lang.String r0 = "context"
                kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r2, r0)
                com.binance.android.binancepay.api.BinancePay r0 = r1.getInstance()
                if (r0 != 0) goto L1a
                a.a.a.a.b.b r0 = new a.a.a.a.b.b
                r0.<init>(r2)
                r1.setInstance(r0)
                com.binance.android.binancepay.api.BinancePay r2 = r1.getInstance()
                if (r2 != 0) goto L23
                goto L20
            L1a:
                com.binance.android.binancepay.api.BinancePay r2 = r1.getInstance()
                if (r2 != 0) goto L23
            L20:
                kotlin.jvm.internal.Intrinsics.throwNpe()
            L23:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.binance.android.binancepay.api.BinancePayFactory.Companion.getBinancePay(android.content.Context):com.binance.android.binancepay.api.BinancePay");
        }

        public final BinancePay getInstance() {
            return BinancePayFactory.instance;
        }

        public final void setInstance(BinancePay binancePay) {
            BinancePayFactory.instance = binancePay;
        }
    }
}
