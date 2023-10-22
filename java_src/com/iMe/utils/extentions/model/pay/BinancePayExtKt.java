package com.iMe.utils.extentions.model.pay;

import com.iMe.storage.domain.model.binancepay.BinanceTransactionDirection;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionStatus;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: BinancePayExt.kt */
/* loaded from: classes4.dex */
public final class BinancePayExtKt {

    /* compiled from: BinancePayExt.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[BinanceTransactionDirection.values().length];
            try {
                iArr[BinanceTransactionDirection.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BinanceTransactionDirection.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BinanceTransactionStatus.values().length];
            try {
                iArr2[BinanceTransactionStatus.INITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[BinanceTransactionStatus.PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[BinanceTransactionStatus.PAID.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final int icon(BinanceTransactionDirection binanceTransactionDirection) {
        Intrinsics.checkNotNullParameter(binanceTransactionDirection, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[binanceTransactionDirection.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return C3630R.C3632drawable.fork_ic_binance_pay_outgoing_request;
            }
            throw new NoWhenBranchMatchedException();
        }
        return C3630R.C3632drawable.fork_ic_binance_pay_incoming_request;
    }

    public static final int colorKey(BinanceTransactionStatus binanceTransactionStatus) {
        Intrinsics.checkNotNullParameter(binanceTransactionStatus, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$1[binanceTransactionStatus.ordinal()];
        if (i == 1 || i == 2) {
            return Theme.key_windowBackgroundWhiteGrayText2;
        }
        if (i == 3) {
            return Theme.key_statisticChartLine_green;
        }
        throw new NoWhenBranchMatchedException();
    }
}
