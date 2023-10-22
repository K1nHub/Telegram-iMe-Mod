package com.iMe.utils.extentions.model.wallet;

import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceTokenBalanceExt.kt */
/* loaded from: classes4.dex */
public final class BinanceTokenBalanceExtKt {
    public static final String getDollarsBalanceText(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return BalanceFormatter.formatFiatBalance$default(BalanceFormatter.INSTANCE, Double.valueOf(binanceTokenBalanceInfo.getCombined().getFiatValuation()), null, 2, null);
    }

    public static final String getTotalBalanceText(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return BalanceFormatter.format(Double.valueOf(binanceTokenBalanceInfo.getCombined().getTotal()), Integer.valueOf(TokenDetailed.Companion.getBNB().getDecimals()));
    }

    public static final String getTotalBalanceShortText(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return BalanceFormatter.format(Double.valueOf(binanceTokenBalanceInfo.getCombined().getTotal()), Integer.valueOf(TokenDetailed.Companion.getBNB().getDecimals())) + ' ' + binanceTokenBalanceInfo.getAssetShortName();
    }

    public static final String getSpotBalanceShortText(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return BalanceFormatter.format(Double.valueOf(binanceTokenBalanceInfo.getSpot().getTotal()), Integer.valueOf(TokenDetailed.Companion.getBNB().getDecimals())) + ' ' + binanceTokenBalanceInfo.getAssetShortName();
    }

    public static final String getMarginBalanceShortText(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return BalanceFormatter.format(Double.valueOf(binanceTokenBalanceInfo.getMargin().getTotal()), Integer.valueOf(TokenDetailed.Companion.getBNB().getDecimals())) + ' ' + binanceTokenBalanceInfo.getAssetShortName();
    }
}
