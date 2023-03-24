package com.smedialink.storage.data.mapper.crypto;

import com.smedialink.storage.data.network.model.response.crypto.swap.AvailableSwapTokensResponse;
import com.smedialink.storage.data.network.model.response.crypto.swap.GetApproveTokensInfoResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.smedialink.storage.domain.model.crypto.TransactionParams;
import com.smedialink.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.smedialink.storage.domain.model.wallet.swap.TokenApproveStatus;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapMapping.kt */
/* loaded from: classes3.dex */
public final class SwapMappingKt {

    /* compiled from: SwapMapping.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TokenApproveStatus.values().length];
            try {
                iArr[TokenApproveStatus.ALLOWED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TokenApproveStatus.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TokenApproveStatus.IN_PROGRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TokenApproveStatus.NOT_ALLOWED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
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
            if (i == 1) {
                allowed = new CryptoTokenApproveMetadata.Allowed(TokenCode.Companion.map(cryptoTokenApprovalQuote.getCryptoTokenCode()), map, cryptoTokenApprovalQuote.getValue());
            } else {
                if (i == 2) {
                    TokenCode.Companion companion = TokenCode.Companion;
                    TokenCode map2 = companion.map(cryptoTokenApprovalQuote.getCryptoTokenCode());
                    String value = cryptoTokenApprovalQuote.getValue();
                    String contractAddress = cryptoTokenApprovalQuote.getContractAddress();
                    String spenderContractAddress = cryptoTokenApprovalQuote.getSpenderContractAddress();
                    TransactionParamsResponse.EVM transactionParams = cryptoTokenApprovalQuote.getTransactionParams();
                    Intrinsics.checkNotNull(transactionParams);
                    TransactionParams.Ether mapToDomain = CryptoWalletMappingKt.mapToDomain(transactionParams);
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
                    TransactionParamsResponse.EVM transactionParams2 = cryptoTokenApprovalQuote.getTransactionParams();
                    Intrinsics.checkNotNull(transactionParams2);
                    cryptoTokenApproveMetadata = new CryptoTokenApproveMetadata.NeedApprove.NotAllowed(map3, map, value2, CryptoWalletMappingKt.mapToDomain(transactionParams2), contractAddress2, spenderContractAddress2, companion2.map(cryptoTokenApprovalQuote.getFeeTokenCode()));
                }
                arrayList.add(cryptoTokenApproveMetadata);
            }
            cryptoTokenApproveMetadata = allowed;
            arrayList.add(cryptoTokenApproveMetadata);
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x006b, code lost:
        r14 = kotlin.text.StringsKt__StringNumberConversionsJVMKt.toBigIntegerOrNull(r14);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata mapToDomain(com.smedialink.storage.data.network.model.response.crypto.swap.GetQuoteToSwapResponse r17) {
        /*
            java.lang.String r0 = "<this>"
            r1 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            java.lang.String r2 = r17.getQuoteId()
            com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse$EVM r0 = r17.getTransactionParams()
            com.smedialink.storage.domain.model.crypto.TransactionParams$Ether r3 = com.smedialink.storage.data.mapper.crypto.CryptoWalletMappingKt.mapToDomain(r0)
            java.lang.String r0 = r17.getSpenderContractAddress()
            java.lang.String r4 = ""
            if (r0 != 0) goto L1d
            r6 = r4
            goto L1e
        L1d:
            r6 = r0
        L1e:
            com.smedialink.storage.domain.model.wallet.token.TokenCode$Companion r0 = com.smedialink.storage.domain.model.wallet.token.TokenCode.Companion
            java.lang.String r5 = r17.getInputCryptoTokenCode()
            com.smedialink.storage.domain.model.wallet.token.TokenCode r5 = r0.map(r5)
            java.lang.String r7 = r17.getOutputCryptoTokenCode()
            com.smedialink.storage.domain.model.wallet.token.TokenCode r7 = r0.map(r7)
            com.smedialink.storage.domain.model.wallet.swap.SwapMethod$Companion r8 = com.smedialink.storage.domain.model.wallet.swap.SwapMethod.Companion
            java.lang.String r9 = r17.getSwapMethod()
            com.smedialink.storage.domain.model.wallet.swap.SwapMethod r8 = r8.map(r9)
            java.util.List r11 = r17.getPath()
            java.math.BigDecimal r9 = new java.math.BigDecimal
            java.lang.String r10 = r17.getAmountIn()
            r9.<init>(r10)
            java.math.BigDecimal r10 = new java.math.BigDecimal
            java.lang.String r12 = r17.getAmountOut()
            r10.<init>(r12)
            java.math.BigInteger r12 = new java.math.BigInteger
            java.lang.String r13 = r17.getAmountBound()
            r12.<init>(r13)
            java.math.BigDecimal r13 = r17.getExecutionPrice()
            java.lang.String r14 = r17.getFeeTokenCode()
            com.smedialink.storage.domain.model.wallet.token.TokenCode r0 = r0.map(r14)
            java.lang.String r14 = r17.getValue()
            if (r14 == 0) goto L71
            java.math.BigInteger r14 = kotlin.text.StringsKt.toBigIntegerOrNull(r14)
            if (r14 != 0) goto L73
        L71:
            java.math.BigInteger r14 = java.math.BigInteger.ZERO
        L73:
            java.lang.String r1 = r17.getCallData()
            if (r1 != 0) goto L7b
            r15 = r4
            goto L7c
        L7b:
            r15 = r1
        L7c:
            com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata r16 = new com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata
            java.lang.String r1 = "value?.toBigIntegerOrNull() ?: BigInteger.ZERO"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r14, r1)
            r1 = r16
            r4 = r5
            r5 = r7
            r7 = r8
            r8 = r9
            r9 = r10
            r10 = r12
            r12 = r13
            r13 = r0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.storage.data.mapper.crypto.SwapMappingKt.mapToDomain(com.smedialink.storage.data.network.model.response.crypto.swap.GetQuoteToSwapResponse):com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata");
    }
}
