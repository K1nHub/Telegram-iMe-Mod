package com.iMe.mapper.wallet.select;

import com.iMe.model.wallet.select.SelectableTokenBalance;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SelectableMapping.kt */
/* loaded from: classes4.dex */
public final class SelectableMappingKt {
    public static final TokenDetailed mapToDetailedToken(BinanceTokenInfo binanceTokenInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenInfo, "<this>");
        return new TokenDetailed("", NetworkType.BSC, binanceTokenInfo.getAssetLogoUrl(), TokenDetailed.Companion.getBNB().getDecimals(), binanceTokenInfo.getAssetShortName(), false, binanceTokenInfo.getAssetName(), "");
    }

    public static final TokenDetailed mapToDetailedToken(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return mapToDetailedToken(new BinanceTokenInfo(binanceTokenBalanceInfo.getAsset(), binanceTokenBalanceInfo.getAssetName(), binanceTokenBalanceInfo.getAssetShortName(), binanceTokenBalanceInfo.getLogoUrl()));
    }

    public static final SelectableTokenBalance mapToSelectableBalance(TokenBalance tokenBalance) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        return new SelectableTokenBalance(TokenBalanceExtKt.getTotalBalance(tokenBalance), TokenBalanceExtKt.getDollarsBalanceText(tokenBalance));
    }

    public static final SelectableTokenBalance mapToSelectableBalance(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return new SelectableTokenBalance(BinanceTokenBalanceExtKt.getTotalBalanceText(binanceTokenBalanceInfo), BinanceTokenBalanceExtKt.getDollarsBalanceText(binanceTokenBalanceInfo));
    }

    public static final List<TokenDetailed> mapToDetailedToken(List<BinanceTokenInfo> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BinanceTokenInfo binanceTokenInfo : list) {
            arrayList.add(mapToDetailedToken(binanceTokenInfo));
        }
        return arrayList;
    }

    public static final List<TokenDetailed> mapToDetailedTokensList(List<BinanceTokenBalanceInfo> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BinanceTokenBalanceInfo binanceTokenBalanceInfo : list) {
            arrayList.add(mapToDetailedToken(binanceTokenBalanceInfo));
        }
        return arrayList;
    }
}
