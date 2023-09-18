package com.iMe.utils.extentions.model.wallet;

import com.iMe.model.wallet.home.PriceRateDirection;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenBalanceExt.kt */
/* loaded from: classes6.dex */
public final class TokenBalanceExtKt {
    public static final String getDollarsBalanceText(TokenBalance tokenBalance) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        return BalanceFormatter.formatFiatBalance$default(BalanceFormatter.INSTANCE, Double.valueOf(tokenBalance.getTotalInFiat().getValue()), null, 2, null);
    }

    public static final String getDollarsRateText(TokenBalance tokenBalance) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        return BalanceFormatter.formatFiatBalance$default(BalanceFormatter.INSTANCE, Double.valueOf(tokenBalance.getRateToFiat().getValue()), null, 2, null);
    }

    public static final String getTotalBalanceShortText(TokenBalance tokenBalance) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        return BalanceFormatter.INSTANCE.formatTokenBalance(Double.valueOf(tokenBalance.getTotal()), tokenBalance.getToken());
    }

    public static final String getTotalBalance(TokenBalance tokenBalance) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        return BalanceFormatter.format(Double.valueOf(tokenBalance.getTotal()), Integer.valueOf(tokenBalance.getToken().getDecimals()));
    }

    public static final PriceRateDirection getPriceDirection(TokenBalance tokenBalance) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        return tokenBalance.getRatePercentageChange24h() > 0.0d ? PriceRateDirection.UP : tokenBalance.getRatePercentageChange24h() < 0.0d ? PriceRateDirection.DOWN : PriceRateDirection.NOT_CHANGED;
    }
}
