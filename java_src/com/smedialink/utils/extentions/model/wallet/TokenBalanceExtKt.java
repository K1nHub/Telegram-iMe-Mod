package com.smedialink.utils.extentions.model.wallet;

import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.provider.crypto.SmartContractProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenBalanceExt.kt */
/* loaded from: classes3.dex */
public final class TokenBalanceExtKt {
    public static final String getDollarsBalanceText(TokenBalance tokenBalance, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return BalanceFormatter.formatFiatBalance$default(BalanceFormatter.INSTANCE, Float.valueOf(tokenBalance.getTotalInDollars()), resourceManager, null, 4, null);
    }

    public static final String getDollarsRateText(TokenBalance tokenBalance, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return BalanceFormatter.INSTANCE.formatFiatBalance(Double.valueOf(tokenBalance.getPriceRate().getRateToDollars()), resourceManager, Integer.valueOf(TokenInfo.Fiat.USD.INSTANCE.getDollarsDecimals(tokenBalance.getPriceRate().getRateToDollars())));
    }

    public static final String getTotalBalanceShortText(TokenBalance tokenBalance, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return BalanceFormatter.INSTANCE.formatTokenBalance(Double.valueOf(tokenBalance.getTotal()), tokenBalance.getInfo(), resourceManager);
    }

    public static final String getTotalBalance(TokenBalance tokenBalance) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        return BalanceFormatter.formatBalance(Double.valueOf(tokenBalance.getTotal()), tokenBalance.getInfo().getDecimals());
    }

    public static final boolean isWithWebsite(TokenBalance tokenBalance) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        return tokenBalance.getInfo().getSite() != -1;
    }

    public static final boolean isWithSmartContractAddress(TokenBalance tokenBalance) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        String contract = SmartContractProvider.INSTANCE.getContract(tokenBalance.getCode(), tokenBalance.getNetworkType());
        return !(contract == null || contract.length() == 0);
    }
}
