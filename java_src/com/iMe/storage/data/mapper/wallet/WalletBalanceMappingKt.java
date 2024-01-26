package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.locale.p026db.model.wallet.WalletTokenBalanceDb;
import com.iMe.storage.data.network.model.response.wallet.TokenBalanceResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletBalanceMapping.kt */
/* loaded from: classes3.dex */
public final class WalletBalanceMappingKt {
    public static final TokenBalance mapToDomain(WalletTokenBalanceDb walletTokenBalanceDb) {
        Intrinsics.checkNotNullParameter(walletTokenBalanceDb, "<this>");
        return new TokenBalance(walletTokenBalanceDb.getTotal(), new FiatValue(walletTokenBalanceDb.getTotalInFiatValue(), walletTokenBalanceDb.getTotalInFiatSymbol(), walletTokenBalanceDb.getTotalInFiatTicker()), new FiatValue(walletTokenBalanceDb.getRateToFiatValue(), walletTokenBalanceDb.getRateToFiatSymbol(), walletTokenBalanceDb.getRateToFiatTicker()), walletTokenBalanceDb.getRatePercentageChange24h(), new TokenDetailed(walletTokenBalanceDb.getAddress(), walletTokenBalanceDb.getNetworkId(), walletTokenBalanceDb.getAvatarUrl(), walletTokenBalanceDb.getDecimals(), walletTokenBalanceDb.getTicker(), walletTokenBalanceDb.isCoin(), walletTokenBalanceDb.getName(), walletTokenBalanceDb.getWebsite()));
    }

    public static final WalletTokenBalanceDb mapToDb(TokenBalance tokenBalance, long j) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        return new WalletTokenBalanceDb(j, tokenBalance.getTotal(), tokenBalance.getTotalInFiat().getValue(), tokenBalance.getTotalInFiat().getSymbol(), tokenBalance.getTotalInFiat().getTicker(), tokenBalance.getRateToFiat().getValue(), tokenBalance.getRateToFiat().getSymbol(), tokenBalance.getRateToFiat().getTicker(), tokenBalance.getRatePercentageChange24h(), tokenBalance.getToken().getAddress(), tokenBalance.getToken().getNetworkId(), tokenBalance.getToken().getAvatarUrl(), tokenBalance.getToken().getDecimals(), tokenBalance.getToken().getTicker(), tokenBalance.getToken().isCoin(), tokenBalance.getToken().getName(), tokenBalance.getToken().getWebsite());
    }

    public static final List<TokenBalance> mapToDomain(WalletBalancesResponse walletBalancesResponse) {
        Intrinsics.checkNotNullParameter(walletBalancesResponse, "<this>");
        List<TokenBalanceResponse> balances = walletBalancesResponse.getBalances();
        ArrayList arrayList = new ArrayList();
        for (TokenBalanceResponse tokenBalanceResponse : balances) {
            arrayList.add(new TokenBalance(tokenBalanceResponse.getTotal(), FiatValueMappingKt.mapToDomain(tokenBalanceResponse.getTotalInFiat()), FiatValueMappingKt.mapToDomain(tokenBalanceResponse.getRateToFiat()), NumberExtKt.orZero(tokenBalanceResponse.getRatePercentageChange24h()), TokenMappingKt.mapToDomain(tokenBalanceResponse.getToken())));
        }
        return arrayList;
    }
}
