package com.smedialink.storage.data.mapper.binancepay;

import com.smedialink.storage.data.network.model.response.binance.BinanceGetConvertOppositeSupportTokensResponse;
import com.smedialink.storage.data.network.model.response.binance.BinanceGetConvertQuoteResponse;
import com.smedialink.storage.data.network.model.response.binance.BinanceGetConvertSupportTokensResponse;
import com.smedialink.storage.domain.model.binancepay.BinanceConvertQuote;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenInfo;
import com.smedialink.storage.domain.model.binancepay.OutputConvertToken;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceMapping.kt */
/* loaded from: classes3.dex */
public final class BinanceMappingKt {
    public static final BinanceConvertQuote mapToDomain(BinanceGetConvertQuoteResponse binanceGetConvertQuoteResponse) {
        Intrinsics.checkNotNullParameter(binanceGetConvertQuoteResponse, "<this>");
        return new BinanceConvertQuote(binanceGetConvertQuoteResponse.getQuoteId(), Double.parseDouble(binanceGetConvertQuoteResponse.getInputAmount()), binanceGetConvertQuoteResponse.getInputAssetCode(), Double.parseDouble(binanceGetConvertQuoteResponse.getOutputAmount()), binanceGetConvertQuoteResponse.getOutputAssetCode(), binanceGetConvertQuoteResponse.getInputAssetShortName(), binanceGetConvertQuoteResponse.getOutputAssetShortName());
    }

    public static final List<BinanceTokenInfo> mapToDomain(List<BinanceGetConvertSupportTokensResponse> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BinanceGetConvertSupportTokensResponse binanceGetConvertSupportTokensResponse : list) {
            arrayList.add(new BinanceTokenInfo(binanceGetConvertSupportTokensResponse.getAssetCode(), binanceGetConvertSupportTokensResponse.getAssetName(), binanceGetConvertSupportTokensResponse.getAssetShortName(), binanceGetConvertSupportTokensResponse.getLogoUrl()));
        }
        return arrayList;
    }

    public static final List<OutputConvertToken> mapToDomainBinanceGetConvertOppositeSupportTokensResponse(List<BinanceGetConvertOppositeSupportTokensResponse> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BinanceGetConvertOppositeSupportTokensResponse binanceGetConvertOppositeSupportTokensResponse : list) {
            arrayList.add(new OutputConvertToken(new BinanceTokenInfo(binanceGetConvertOppositeSupportTokensResponse.getAssetCode(), binanceGetConvertOppositeSupportTokensResponse.getAssetName(), binanceGetConvertOppositeSupportTokensResponse.getAssetShortName(), binanceGetConvertOppositeSupportTokensResponse.getLogoUrl()), Double.parseDouble(binanceGetConvertOppositeSupportTokensResponse.getMinimumLimit()), Double.parseDouble(binanceGetConvertOppositeSupportTokensResponse.getMaximumLimit())));
        }
        return arrayList;
    }
}
