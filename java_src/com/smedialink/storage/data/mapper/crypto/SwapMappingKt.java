package com.smedialink.storage.data.mapper.crypto;

import com.smedialink.storage.data.network.model.response.crypto.swap.AvailableSwapTokensResponse;
import com.smedialink.storage.data.network.model.response.crypto.swap.GetApproveTokensInfoResponse;
import com.smedialink.storage.data.network.model.response.crypto.swap.GetQuoteToSwapResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.smedialink.storage.domain.model.crypto.TransactionParams;
import com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.smedialink.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.smedialink.storage.domain.model.wallet.swap.SwapMethod;
import com.smedialink.storage.domain.model.wallet.swap.TokenApproveStatus;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
/* compiled from: SwapMapping.kt */
/* loaded from: classes3.dex */
public final class SwapMappingKt {

    /* compiled from: SwapMapping.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TokenApproveStatus.values().length];
            iArr[TokenApproveStatus.ALLOWED.ordinal()] = 1;
            iArr[TokenApproveStatus.ERROR.ordinal()] = 2;
            iArr[TokenApproveStatus.IN_PROGRESS.ordinal()] = 3;
            iArr[TokenApproveStatus.NOT_ALLOWED.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final List<TokenInfo> mapToDomain(AvailableSwapTokensResponse availableSwapTokensResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(availableSwapTokensResponse, "<this>");
        List<String> cryptoTokenCodes = availableSwapTokensResponse.getCryptoTokenCodes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(cryptoTokenCodes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str : cryptoTokenCodes) {
            arrayList.add(TokenInfo.Companion.map(str));
        }
        return arrayList;
    }

    public static final List<CryptoTokenApproveMetadata> mapToDomain(GetApproveTokensInfoResponse getApproveTokensInfoResponse) {
        int collectionSizeOrDefault;
        CryptoTokenApproveMetadata allowed;
        CryptoTokenApproveMetadata cryptoTokenApproveMetadata;
        Intrinsics.checkNotNullParameter(getApproveTokensInfoResponse, "<this>");
        List<GetApproveTokensInfoResponse.CryptoTokenApprovalQuote> cryptoTokens = getApproveTokensInfoResponse.getCryptoTokens();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(cryptoTokens, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (GetApproveTokensInfoResponse.CryptoTokenApprovalQuote cryptoTokenApprovalQuote : cryptoTokens) {
            TokenApproveStatus map = TokenApproveStatus.Companion.map(cryptoTokenApprovalQuote.getStatus());
            int i = WhenMappings.$EnumSwitchMapping$0[map.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    TokenCode.Companion companion = TokenCode.Companion;
                    TokenCode map2 = companion.map(cryptoTokenApprovalQuote.getCryptoTokenCode());
                    String value = cryptoTokenApprovalQuote.getValue();
                    String contractAddress = cryptoTokenApprovalQuote.getContractAddress();
                    String spenderContractAddress = cryptoTokenApprovalQuote.getSpenderContractAddress();
                    TransactionParamsResponse transactionParams = cryptoTokenApprovalQuote.getTransactionParams();
                    Intrinsics.checkNotNull(transactionParams);
                    TransactionParams mapToDomain = CryptoWalletMappingKt.mapToDomain(transactionParams);
                    String lastErrorMessage = cryptoTokenApprovalQuote.getLastErrorMessage();
                    if (lastErrorMessage == null) {
                        lastErrorMessage = "";
                    }
                    cryptoTokenApproveMetadata = new CryptoTokenApproveMetadata.NeedApprove.Error(map2, map, value, mapToDomain, contractAddress, spenderContractAddress, companion.map(cryptoTokenApprovalQuote.getFeeTokenCode()), lastErrorMessage);
                } else if (i == 3) {
                    allowed = new CryptoTokenApproveMetadata.InProgress(TokenCode.Companion.map(cryptoTokenApprovalQuote.getCryptoTokenCode()), map, cryptoTokenApprovalQuote.getValue());
                } else if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    TokenCode.Companion companion2 = TokenCode.Companion;
                    TokenCode map3 = companion2.map(cryptoTokenApprovalQuote.getCryptoTokenCode());
                    String value2 = cryptoTokenApprovalQuote.getValue();
                    String contractAddress2 = cryptoTokenApprovalQuote.getContractAddress();
                    String spenderContractAddress2 = cryptoTokenApprovalQuote.getSpenderContractAddress();
                    TransactionParamsResponse transactionParams2 = cryptoTokenApprovalQuote.getTransactionParams();
                    Intrinsics.checkNotNull(transactionParams2);
                    cryptoTokenApproveMetadata = new CryptoTokenApproveMetadata.NeedApprove.NotAllowed(map3, map, value2, CryptoWalletMappingKt.mapToDomain(transactionParams2), contractAddress2, spenderContractAddress2, companion2.map(cryptoTokenApprovalQuote.getFeeTokenCode()));
                }
                arrayList.add(cryptoTokenApproveMetadata);
            } else {
                allowed = new CryptoTokenApproveMetadata.Allowed(TokenCode.Companion.map(cryptoTokenApprovalQuote.getCryptoTokenCode()), map, cryptoTokenApprovalQuote.getValue());
            }
            cryptoTokenApproveMetadata = allowed;
            arrayList.add(cryptoTokenApproveMetadata);
        }
        return arrayList;
    }

    public static final CryptoSwapMetadata mapToDomain(GetQuoteToSwapResponse getQuoteToSwapResponse) {
        Intrinsics.checkNotNullParameter(getQuoteToSwapResponse, "<this>");
        String quoteId = getQuoteToSwapResponse.getQuoteId();
        TransactionParams mapToDomain = CryptoWalletMappingKt.mapToDomain(getQuoteToSwapResponse.getTransactionParams());
        String spenderContractAddress = getQuoteToSwapResponse.getSpenderContractAddress();
        String str = spenderContractAddress == null ? "" : spenderContractAddress;
        TokenCode.Companion companion = TokenCode.Companion;
        TokenCode map = companion.map(getQuoteToSwapResponse.getInputCryptoTokenCode());
        TokenCode map2 = companion.map(getQuoteToSwapResponse.getOutputCryptoTokenCode());
        SwapMethod map3 = SwapMethod.Companion.map(getQuoteToSwapResponse.getSwapMethod());
        List<String> path = getQuoteToSwapResponse.getPath();
        BigDecimal bigDecimal = new BigDecimal(getQuoteToSwapResponse.getAmountIn());
        BigDecimal bigDecimal2 = new BigDecimal(getQuoteToSwapResponse.getAmountOut());
        BigInteger bigInteger = new BigInteger(getQuoteToSwapResponse.getAmountBound());
        BigDecimal executionPrice = getQuoteToSwapResponse.getExecutionPrice();
        TokenCode map4 = companion.map(getQuoteToSwapResponse.getFeeTokenCode());
        String value = getQuoteToSwapResponse.getValue();
        BigInteger bigIntegerOrNull = value == null ? null : StringsKt__StringNumberConversionsJVMKt.toBigIntegerOrNull(value);
        if (bigIntegerOrNull == null) {
            bigIntegerOrNull = BigInteger.ZERO;
        }
        BigInteger bigInteger2 = bigIntegerOrNull;
        String callData = getQuoteToSwapResponse.getCallData();
        String str2 = callData == null ? "" : callData;
        Intrinsics.checkNotNullExpressionValue(bigInteger2, "value?.toBigIntegerOrNull() ?: BigInteger.ZERO");
        return new CryptoSwapMetadata(quoteId, mapToDomain, map, map2, str, map3, bigDecimal, bigDecimal2, bigInteger, path, executionPrice, map4, bigInteger2, str2);
    }
}
