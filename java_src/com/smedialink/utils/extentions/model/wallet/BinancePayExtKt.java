package com.smedialink.utils.extentions.model.wallet;

import com.smedialink.storage.domain.model.binancepay.BinanceTransactionDirection;
import com.smedialink.storage.domain.model.binancepay.BinanceTransactionStatus;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: BinancePayExt.kt */
/* loaded from: classes3.dex */
public final class BinancePayExtKt {

    /* compiled from: BinancePayExt.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[BinanceTransactionDirection.values().length];
            iArr[BinanceTransactionDirection.IN.ordinal()] = 1;
            iArr[BinanceTransactionDirection.OUT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[BinanceTransactionStatus.values().length];
            iArr2[BinanceTransactionStatus.INITIAL.ordinal()] = 1;
            iArr2[BinanceTransactionStatus.PENDING.ordinal()] = 2;
            iArr2[BinanceTransactionStatus.PAID.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final int icon(BinanceTransactionDirection binanceTransactionDirection) {
        Intrinsics.checkNotNullParameter(binanceTransactionDirection, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[binanceTransactionDirection.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return C3158R.C3160drawable.fork_ic_binance_pay_outgoing_request;
            }
            throw new NoWhenBranchMatchedException();
        }
        return C3158R.C3160drawable.fork_ic_binance_pay_incoming_request;
    }

    public static final String color(BinanceTransactionStatus binanceTransactionStatus) {
        Intrinsics.checkNotNullParameter(binanceTransactionStatus, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$1[binanceTransactionStatus.ordinal()];
        if (i == 1 || i == 2) {
            return "windowBackgroundWhiteGrayText2";
        }
        if (i == 3) {
            return "statisticChartLine_green";
        }
        throw new NoWhenBranchMatchedException();
    }
}
