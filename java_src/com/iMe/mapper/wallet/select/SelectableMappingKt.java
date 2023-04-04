package com.iMe.mapper.wallet.select;

import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableTokenBalance;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SelectableMapping.kt */
/* loaded from: classes3.dex */
public final class SelectableMappingKt {
    public static final SelectableToken.WithLogoUrl mapToSelectable(BinanceTokenInfo binanceTokenInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenInfo, "<this>");
        return new SelectableToken.WithLogoUrl.Binance(binanceTokenInfo.getAsset(), binanceTokenInfo.getAssetShortName(), binanceTokenInfo.getAssetName(), binanceTokenInfo.getAssetLogoUrl());
    }

    public static final SelectableToken.WithLogoUrl mapToSelectable(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        return mapToSelectable(new BinanceTokenInfo(binanceTokenBalanceInfo.getAsset(), binanceTokenBalanceInfo.getAssetName(), binanceTokenBalanceInfo.getAssetShortName(), binanceTokenBalanceInfo.getLogoUrl()));
    }

    public static final SelectableToken.WithResLogo mapToSelectable(TokenInfo tokenInfo, ResourceManager resourceManager, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenInfo, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new SelectableToken.WithResLogo(tokenInfo.getCode().getName(), resourceManager.getString(tokenInfo.getShortName()), resourceManager.getString(tokenInfo.getFullName()), TokenInfoExtKt.getLogo(tokenInfo, networkType));
    }

    public static final SelectableTokenBalance mapToSelectable(TokenBalance tokenBalance, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(tokenBalance, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return new SelectableTokenBalance(TokenBalanceExtKt.getTotalBalance(tokenBalance), TokenBalanceExtKt.getDollarsBalanceText(tokenBalance, resourceManager));
    }

    public static final SelectableTokenBalance mapToSelectable(BinanceTokenBalanceInfo binanceTokenBalanceInfo, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(binanceTokenBalanceInfo, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return new SelectableTokenBalance(BinanceTokenBalanceExtKt.getTotalBalanceText(binanceTokenBalanceInfo), BinanceTokenBalanceExtKt.getDollarsBalanceText(binanceTokenBalanceInfo, resourceManager));
    }

    public static final List<SelectableToken.WithLogoUrl> mapToSelectable(List<BinanceTokenInfo> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BinanceTokenInfo binanceTokenInfo : list) {
            arrayList.add(mapToSelectable(binanceTokenInfo));
        }
        return arrayList;
    }

    public static final List<SelectableToken.WithResLogo> mapToSelectable(List<? extends TokenInfo> list, ResourceManager resourceManager, NetworkType networkType) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenInfo tokenInfo : list) {
            arrayList.add(mapToSelectable(tokenInfo, resourceManager, networkType));
        }
        return arrayList;
    }

    public static final List<SelectableToken.WithLogoUrl> mapToSelectableBinanceTokenBalanceInfo(List<BinanceTokenBalanceInfo> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BinanceTokenBalanceInfo binanceTokenBalanceInfo : list) {
            arrayList.add(mapToSelectable(binanceTokenBalanceInfo));
        }
        return arrayList;
    }
}
