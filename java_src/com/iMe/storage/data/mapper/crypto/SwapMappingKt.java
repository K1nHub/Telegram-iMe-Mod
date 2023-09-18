package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.model.response.crypto.swap.AvailableSwapTokensResponse;
import com.iMe.storage.data.network.model.response.crypto.swap.TokensApprovalInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedWithRateResponse;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.swap.TokenApproveData;
import com.iMe.storage.domain.model.wallet.swap.TokenApproveStatus;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.token.TokenDetailedWithRate;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapMapping.kt */
/* loaded from: classes4.dex */
public final class SwapMappingKt {

    /* compiled from: SwapMapping.kt */
    /* loaded from: classes4.dex */
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

    public static final CursoredData<TokenDetailedWithRate> mapToDomain(AvailableSwapTokensResponse availableSwapTokensResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(availableSwapTokensResponse, "<this>");
        List<TokenDetailedWithRateResponse> tokens = availableSwapTokensResponse.getTokens();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokens, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenDetailedWithRateResponse tokenDetailedWithRateResponse : tokens) {
            arrayList.add(TokenMappingKt.mapToDomain(tokenDetailedWithRateResponse));
        }
        return new CursoredData<>(arrayList, availableSwapTokensResponse.getCursor());
    }

    public static final List<TokenApproveData> mapToDomain(TokensApprovalInfoResponse tokensApprovalInfoResponse) {
        int collectionSizeOrDefault;
        TokenApproveData allowed;
        TokenApproveData tokenApproveData;
        Intrinsics.checkNotNullParameter(tokensApprovalInfoResponse, "<this>");
        List<TokensApprovalInfoResponse.ApprovalInfoResponse> approvalInfo = tokensApprovalInfoResponse.getApprovalInfo();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(approvalInfo, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokensApprovalInfoResponse.ApprovalInfoResponse approvalInfoResponse : approvalInfo) {
            int i = WhenMappings.$EnumSwitchMapping$0[TokenApproveStatus.Companion.map(approvalInfoResponse.getStatus()).ordinal()];
            if (i == 1) {
                allowed = new TokenApproveData.Allowed(TokenMappingKt.mapToDomain(approvalInfoResponse.getToken()), approvalInfoResponse.getValue());
            } else {
                if (i == 2) {
                    TokenDetailed mapToDomain = TokenMappingKt.mapToDomain(approvalInfoResponse.getToken());
                    String value = approvalInfoResponse.getValue();
                    String spenderContractAddress = tokensApprovalInfoResponse.getSpenderContractAddress();
                    TransactionParamsResponse.EVM transactionParams = approvalInfoResponse.getTransactionParams();
                    Intrinsics.checkNotNull(transactionParams);
                    TransactionParams.Ether mapToDomain2 = CryptoWalletMappingKt.mapToDomain(transactionParams);
                    String lastErrorMessage = approvalInfoResponse.getLastErrorMessage();
                    if (lastErrorMessage == null) {
                        lastErrorMessage = "";
                    }
                    tokenApproveData = new TokenApproveData.NeedApprove.Error(mapToDomain, value, mapToDomain2, spenderContractAddress, TokenMappingKt.mapToDomain(tokensApprovalInfoResponse.getFeeToken()), lastErrorMessage);
                } else if (i == 3) {
                    allowed = new TokenApproveData.InProgress(TokenMappingKt.mapToDomain(approvalInfoResponse.getToken()), approvalInfoResponse.getValue());
                } else if (i != 4) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    TokenDetailed mapToDomain3 = TokenMappingKt.mapToDomain(approvalInfoResponse.getToken());
                    String value2 = approvalInfoResponse.getValue();
                    String spenderContractAddress2 = tokensApprovalInfoResponse.getSpenderContractAddress();
                    TransactionParamsResponse.EVM transactionParams2 = approvalInfoResponse.getTransactionParams();
                    Intrinsics.checkNotNull(transactionParams2);
                    tokenApproveData = new TokenApproveData.NeedApprove.NotAllowed(mapToDomain3, value2, CryptoWalletMappingKt.mapToDomain(transactionParams2), spenderContractAddress2, TokenMappingKt.mapToDomain(tokensApprovalInfoResponse.getFeeToken()));
                }
                arrayList.add(tokenApproveData);
            }
            tokenApproveData = allowed;
            arrayList.add(tokenApproveData);
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0073, code lost:
        r0 = kotlin.text.StringsKt__StringNumberConversionsJVMKt.toBigIntegerOrNull(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata mapToDomain(com.iMe.storage.data.network.model.response.crypto.swap.GetQuoteToSwapResponse r18) {
        /*
            java.lang.String r0 = "<this>"
            r1 = r18
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse$EVM r0 = r18.getTransactionParams()
            com.iMe.storage.domain.model.crypto.TransactionParams$Ether r2 = com.iMe.storage.data.mapper.crypto.CryptoWalletMappingKt.mapToDomain(r0)
            java.lang.String r3 = r18.getQuoteId()
            java.lang.String r6 = r18.getSpenderContractAddress()
            com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse r0 = r18.getInputToken()
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r4 = com.iMe.storage.data.mapper.wallet.TokenMappingKt.mapToDomain(r0)
            com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse r0 = r18.getOutputToken()
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r5 = com.iMe.storage.data.mapper.wallet.TokenMappingKt.mapToDomain(r0)
            com.iMe.storage.domain.model.wallet.swap.SwapMethod$Companion r0 = com.iMe.storage.domain.model.wallet.swap.SwapMethod.Companion
            java.lang.String r7 = r18.getSwapMethod()
            com.iMe.storage.domain.model.wallet.swap.SwapMethod r7 = r0.map(r7)
            java.util.List r0 = r18.getPath()
            if (r0 != 0) goto L3b
            java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
        L3b:
            r11 = r0
            java.math.BigDecimal r8 = new java.math.BigDecimal
            java.lang.String r0 = r18.getAmountIn()
            r8.<init>(r0)
            java.math.BigDecimal r9 = new java.math.BigDecimal
            java.lang.String r0 = r18.getAmountOut()
            r9.<init>(r0)
            java.math.BigInteger r10 = new java.math.BigInteger
            java.lang.String r0 = r18.getAmountBound()
            r10.<init>(r0)
            java.math.BigDecimal r12 = r18.getExecutionPrice()
            com.iMe.storage.domain.model.wallet.swap.SwapProtocol$Companion r0 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.Companion
            java.lang.String r13 = r18.getDefiProtocol()
            com.iMe.storage.domain.model.wallet.swap.SwapProtocol r13 = r0.map(r13)
            com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse r0 = r18.getFeeToken()
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r14 = com.iMe.storage.data.mapper.wallet.TokenMappingKt.mapToDomain(r0)
            java.lang.String r0 = r18.getValue()
            if (r0 == 0) goto L79
            java.math.BigInteger r0 = kotlin.text.StringsKt.toBigIntegerOrNull(r0)
            if (r0 != 0) goto L7b
        L79:
            java.math.BigInteger r0 = java.math.BigInteger.ZERO
        L7b:
            java.lang.String r1 = r18.getCallData()
            if (r1 != 0) goto L83
            java.lang.String r1 = ""
        L83:
            r15 = r1
            com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata r17 = new com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata
            java.lang.String r1 = "value?.toBigIntegerOrNull() ?: BigInteger.ZERO"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = r17
            r16 = r0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16)
            return r17
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.mapper.crypto.SwapMappingKt.mapToDomain(com.iMe.storage.data.network.model.response.crypto.swap.GetQuoteToSwapResponse):com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata");
    }
}
