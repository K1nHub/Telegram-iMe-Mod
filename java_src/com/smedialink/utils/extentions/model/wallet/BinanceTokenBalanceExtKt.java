package com.smedialink.utils.extentions.model.wallet;

import com.smedialink.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceTokenBalanceExt.kt */
/* loaded from: classes3.dex */
public final class BinanceTokenBalanceExtKt {
    public static final String getDollarsBalanceText(BinanceTokenBalanceInfo binanceTokenBalanceInfo, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return BalanceFormatter.formatFiatBalance$default(BalanceFormatter.INSTANCE, Double.valueOf(binanceTokenBalanceInfo.getCombined().getFiatValuation()), resourceManager, null, 4, null);
    }

    public static final String getTotalBalanceText(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return BalanceFormatter.formatBalance(Double.valueOf(binanceTokenBalanceInfo.getCombined().getTotal()), TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getDecimals());
    }

    public static final String getTotalBalanceShortText(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return BalanceFormatter.formatBalance(Double.valueOf(binanceTokenBalanceInfo.getCombined().getTotal()), TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getDecimals()) + ' ' + binanceTokenBalanceInfo.getAssetShortName();
    }

    public static final String getSpotBalanceShortText(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return BalanceFormatter.formatBalance(Double.valueOf(binanceTokenBalanceInfo.getSpot().getTotal()), TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getDecimals()) + ' ' + binanceTokenBalanceInfo.getAssetShortName();
    }

    public static final String getMarginBalanceShortText(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return BalanceFormatter.formatBalance(Double.valueOf(binanceTokenBalanceInfo.getMargin().getTotal()), TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getDecimals()) + ' ' + binanceTokenBalanceInfo.getAssetShortName();
    }
}
