package com.iMe.storage.data.mapper.binancepay;

import com.iMe.storage.data.locale.prefs.model.binancepay.BinanceAuthTokensMetadata;
import com.iMe.storage.data.locale.prefs.model.binancepay.BinanceUserInfoMetadata;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayCreateCollectionResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayGetAuthTokensResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayGetAvailablePaymentTokensResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayGetTransactionHistoryResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinancePayGetUserInfoResponse;
import com.iMe.storage.data.network.model.response.binance.pay.BinanceTokenBalanceResponse;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.model.binancepay.BinanceAuthTokens;
import com.iMe.storage.domain.model.binancepay.BinanceCollectionOrder;
import com.iMe.storage.domain.model.binancepay.BinancePayAuthType;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.binancepay.BinanceTokenInfo;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionDirection;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionStatus;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionType;
import com.iMe.storage.domain.model.binancepay.BinanceUserInfo;
import com.iMe.storage.domain.model.binancepay.BinanceVerificationStatus;
import com.iMe.storage.domain.model.crypto.NetworkType;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayMapping.kt */
/* loaded from: classes3.dex */
public final class BinancePayMappingKt {

    /* compiled from: BinancePayMapping.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BinanceTransactionType.values().length];
            try {
                iArr[BinanceTransactionType.BINANCE_PAY_TRANSFER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BinanceTransactionType.CONVERT_COINS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BinanceTransactionType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final BinanceAuthTokens mapToDomain(BinancePayGetAuthTokensResponse binancePayGetAuthTokensResponse) {
        Intrinsics.checkNotNullParameter(binancePayGetAuthTokensResponse, "<this>");
        return new BinanceAuthTokens(binancePayGetAuthTokensResponse.getAccessToken(), binancePayGetAuthTokensResponse.getRefreshToken(), binancePayGetAuthTokensResponse.getExpiresIn(), BinancePayAuthType.Companion.map(binancePayGetAuthTokensResponse.getTokenType()));
    }

    public static final BinanceAuthTokensMetadata mapToPrefs(BinanceAuthTokens binanceAuthTokens) {
        Intrinsics.checkNotNullParameter(binanceAuthTokens, "<this>");
        return new BinanceAuthTokensMetadata(binanceAuthTokens, DateExtKt.now());
    }

    public static final BinanceUserInfo mapToDomain(BinancePayGetUserInfoResponse binancePayGetUserInfoResponse) {
        Intrinsics.checkNotNullParameter(binancePayGetUserInfoResponse, "<this>");
        String id = binancePayGetUserInfoResponse.getId();
        String email = binancePayGetUserInfoResponse.getEmail();
        if (email == null) {
            email = "";
        }
        return new BinanceUserInfo(email, id, BinanceVerificationStatus.Companion.map(binancePayGetUserInfoResponse.getVerificationDetails().getCertificateStatus()).isVerified());
    }

    public static final BinanceUserInfoMetadata mapToPrefs(BinanceUserInfo binanceUserInfo) {
        Intrinsics.checkNotNullParameter(binanceUserInfo, "<this>");
        return new BinanceUserInfoMetadata(binanceUserInfo);
    }

    public static final List<BinanceTransaction> mapToDomain(BinancePayGetTransactionHistoryResponse binancePayGetTransactionHistoryResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(binancePayGetTransactionHistoryResponse, "<this>");
        List<BinancePayGetTransactionHistoryResponse.HistoryItem> transactionsData = binancePayGetTransactionHistoryResponse.getTransactionsData();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(transactionsData, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BinancePayGetTransactionHistoryResponse.HistoryItem historyItem : transactionsData) {
            arrayList.add(mapToDomain(historyItem));
        }
        return arrayList;
    }

    public static final BinanceTransaction mapToDomain(BinancePayGetTransactionHistoryResponse.HistoryItem historyItem) {
        Intrinsics.checkNotNullParameter(historyItem, "<this>");
        BinanceTransactionType.Companion companion = BinanceTransactionType.Companion;
        int i = WhenMappings.$EnumSwitchMapping$0[companion.map(historyItem.getType()).ordinal()];
        if (i == 1) {
            return new BinanceTransaction.Pay(historyItem.getOrderId(), historyItem.getTransactionId(), historyItem.getPayerUserId(), historyItem.getInitiatorUserId(), Double.parseDouble(historyItem.getAmount()), historyItem.getAssetCode(), historyItem.getAssetName(), historyItem.getLogoUrl(), BinanceTransactionDirection.Companion.map(historyItem.getDirection()), companion.map(historyItem.getType()), BinanceTransactionStatus.Companion.map(historyItem.getStatus()), historyItem.getCreatedAt(), historyItem.getClientTradeNo());
        } else if (i != 2) {
            if (i == 3) {
                return new BinanceTransaction.Unsupported(historyItem.getOrderId(), historyItem.getTransactionId(), BinanceTransactionDirection.Companion.map(historyItem.getDirection()), companion.map(historyItem.getType()), BinanceTransactionStatus.Companion.map(historyItem.getStatus()), historyItem.getCreatedAt());
            }
            throw new NoWhenBranchMatchedException();
        } else {
            String orderId = historyItem.getOrderId();
            String transactionId = historyItem.getTransactionId();
            String payerUserId = historyItem.getPayerUserId();
            String initiatorUserId = historyItem.getInitiatorUserId();
            double parseDouble = Double.parseDouble(historyItem.getAmount());
            String assetCode = historyItem.getAssetCode();
            String assetName = historyItem.getAssetName();
            String logoUrl = historyItem.getLogoUrl();
            BinanceTransactionStatus map = BinanceTransactionStatus.Companion.map(historyItem.getStatus());
            BinanceTransactionType map2 = companion.map(historyItem.getType());
            BinanceTransactionDirection map3 = BinanceTransactionDirection.Companion.map(historyItem.getDirection());
            String createdAt = historyItem.getCreatedAt();
            String inputAmount = historyItem.getInputAmount();
            double parseDouble2 = inputAmount != null ? Double.parseDouble(inputAmount) : 0.0d;
            String outputAmount = historyItem.getOutputAmount();
            double parseDouble3 = outputAmount != null ? Double.parseDouble(outputAmount) : 0.0d;
            String inputAssetCode = historyItem.getInputAssetCode();
            if (inputAssetCode == null) {
                inputAssetCode = "";
            }
            String outputAssetCode = historyItem.getOutputAssetCode();
            String str = outputAssetCode == null ? "" : outputAssetCode;
            String inputAssetShortName = historyItem.getInputAssetShortName();
            String str2 = inputAssetShortName == null ? "" : inputAssetShortName;
            String outputAssetShortName = historyItem.getOutputAssetShortName();
            return new BinanceTransaction.Convert(orderId, transactionId, payerUserId, initiatorUserId, parseDouble, assetCode, assetName, logoUrl, map3, map2, map, createdAt, parseDouble2, parseDouble3, inputAssetCode, str, str2, outputAssetShortName == null ? "" : outputAssetShortName);
        }
    }

    public static final BinanceTokenBalanceInfo.Balance mapToDomain(BinanceTokenBalanceResponse.Balance balance) {
        Intrinsics.checkNotNullParameter(balance, "<this>");
        return new BinanceTokenBalanceInfo.Balance(Double.parseDouble(balance.getTotal()), Double.parseDouble(balance.getFree()), Double.parseDouble(balance.getLocked()), Double.parseDouble(balance.getFreeze()), Double.parseDouble(balance.getWithdrawing()), Double.parseDouble(balance.getBtcValuation()), Double.parseDouble(balance.getFiatValuation()));
    }

    public static final BinanceCollectionOrder mapToDomain(BinancePayCreateCollectionResponse binancePayCreateCollectionResponse) {
        Intrinsics.checkNotNullParameter(binancePayCreateCollectionResponse, "<this>");
        return new BinanceCollectionOrder(binancePayCreateCollectionResponse.getMessageId());
    }

    public static final List<BinanceTokenInfo> mapToDomain(List<BinancePayGetAvailablePaymentTokensResponse> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BinancePayGetAvailablePaymentTokensResponse binancePayGetAvailablePaymentTokensResponse : list) {
            arrayList.add(new BinanceTokenInfo(binancePayGetAvailablePaymentTokensResponse.getAssetCode(), binancePayGetAvailablePaymentTokensResponse.getAssetName(), binancePayGetAvailablePaymentTokensResponse.getAssetShortName(), binancePayGetAvailablePaymentTokensResponse.getLogoUrl()));
        }
        return arrayList;
    }

    public static final List<BinanceTokenBalanceInfo> mapToDomainBinanceTokenBalanceResponse(List<BinanceTokenBalanceResponse> list) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BinanceTokenBalanceResponse binanceTokenBalanceResponse : list) {
            String assetCode = binanceTokenBalanceResponse.getAssetCode();
            String assetName = binanceTokenBalanceResponse.getAssetName();
            String assetShortName = binanceTokenBalanceResponse.getAssetShortName();
            String logoUrl = binanceTokenBalanceResponse.getLogoUrl();
            BinanceTokenBalanceInfo.Balance mapToDomain = mapToDomain(binanceTokenBalanceResponse.getSpot());
            BinanceTokenBalanceInfo.Balance mapToDomain2 = mapToDomain(binanceTokenBalanceResponse.getMargin());
            BinanceTokenBalanceInfo.Balance mapToDomain3 = mapToDomain(binanceTokenBalanceResponse.getCombined());
            List<String> replenishNetworks = binanceTokenBalanceResponse.getReplenishNetworks();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(replenishNetworks, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (String str : replenishNetworks) {
                arrayList2.add(NetworkType.Companion.map(str));
            }
            arrayList.add(new BinanceTokenBalanceInfo(assetCode, assetName, assetShortName, logoUrl, mapToDomain, mapToDomain2, mapToDomain3, arrayList2, binanceTokenBalanceResponse.getConvertible(), binanceTokenBalanceResponse.getReceivable()));
        }
        return arrayList;
    }
}
