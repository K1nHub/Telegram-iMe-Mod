package com.smedialink.storage.data.mapper.wallet;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.storage.data.locale.p027db.model.wallet.WalletTokenBalanceDb;
import com.smedialink.storage.data.network.model.response.wallet.TokenBalanceResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.PriceRate;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletBalanceMapping.kt */
/* loaded from: classes3.dex */
public final class WalletBalanceMappingKt {
    public static final TokenBalance mapToDomain(WalletTokenBalanceDb walletTokenBalanceDb) {
        Intrinsics.checkNotNullParameter(walletTokenBalanceDb, "<this>");
        return new TokenBalance(TokenCode.Companion.map(walletTokenBalanceDb.getCoinCode()), walletTokenBalanceDb.getTotal(), walletTokenBalanceDb.getTotalInDollars(), TokenInfo.Companion.map(walletTokenBalanceDb.getCoinCode()), new PriceRate(walletTokenBalanceDb.getRateToDollars(), walletTokenBalanceDb.getRatePercentageChange24h()), NetworkType.Companion.map(walletTokenBalanceDb.getNetworkType()));
    }

    public static final WalletTokenBalanceDb mapToDb(TokenBalance tokenBalance, long j) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        return new WalletTokenBalanceDb(j, tokenBalance.getCode().getName(), tokenBalance.getTotal(), tokenBalance.getTotalInDollars(), tokenBalance.getPriceRate().getRateToDollars(), tokenBalance.getPriceRate().getRatePercentageChange24h(), tokenBalance.getNetworkType().name());
    }

    public static final List<TokenBalance> mapToDomain(WalletBalancesResponse walletBalancesResponse) {
        Intrinsics.checkNotNullParameter(walletBalancesResponse, "<this>");
        List<TokenBalanceResponse> balances = walletBalancesResponse.getBalances();
        ArrayList arrayList = new ArrayList();
        for (TokenBalanceResponse tokenBalanceResponse : balances) {
            TokenCode map = TokenCode.Companion.map(tokenBalanceResponse.getCoinCode());
            double total = tokenBalanceResponse.getTotal();
            float totalInDollars = tokenBalanceResponse.getTotalInDollars();
            TokenInfo map2 = TokenInfo.Companion.map(tokenBalanceResponse.getCoinCode());
            double rateToDollars = tokenBalanceResponse.getRateToDollars();
            Float ratePercentageChange24h = tokenBalanceResponse.getRatePercentageChange24h();
            arrayList.add(new TokenBalance(map, total, totalInDollars, map2, new PriceRate(rateToDollars, ratePercentageChange24h == null ? BitmapDescriptorFactory.HUE_RED : ratePercentageChange24h.floatValue()), NetworkType.Companion.map(tokenBalanceResponse.getNetworkType())));
        }
        return arrayList;
    }
}
