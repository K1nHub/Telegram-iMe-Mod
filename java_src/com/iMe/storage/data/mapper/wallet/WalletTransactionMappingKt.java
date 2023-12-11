package com.iMe.storage.data.mapper.wallet;

import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.data.network.model.response.wallet.WalletTransactionsResponse;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.FiatCode;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.model.wallet.transaction.TransactionProcessingType;
import com.iMe.storage.domain.model.wallet.transaction.TransactionType;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTransactionMapping.kt */
/* loaded from: classes3.dex */
public final class WalletTransactionMappingKt {

    /* compiled from: WalletTransactionMapping.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransactionType.values().length];
            try {
                iArr[TransactionType.REGISTRATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionType.REFERRAL_BONUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransactionType.PURCHASE_COINS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TransactionType.LOTTERY_BONUS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TransactionType.TRANSFER_COINS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TransactionType.TRANSFER_CRYPTO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TransactionType.CANCEL_CRYPTO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[TransactionType.APPROVE_CRYPTO.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[TransactionType.SIMPLEX_PAYMENT_REQUEST.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[TransactionType.TAKE_AWAY_COINS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[TransactionType.SWAP_CRYPTO.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Transaction mapToDomain(WalletTransactionsResponse.WalletTransactionResponse walletTransactionResponse) {
        Transaction transfer;
        Intrinsics.checkNotNullParameter(walletTransactionResponse, "<this>");
        TransactionType map = TransactionType.Companion.map(walletTransactionResponse.getType());
        switch (WhenMappings.$EnumSwitchMapping$0[map.ordinal()]) {
            case 1:
                String id = walletTransactionResponse.getId();
                BigDecimal bigDecimal = new BigDecimal(walletTransactionResponse.getAmount());
                TokenDetailed mapToDomain = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
                return new Transaction.Registration(id, bigDecimal, map, TransactionDirection.Companion.map(walletTransactionResponse.getDirection()), walletTransactionResponse.getCreatedAt(), mapToDomain, Status.Companion.map(walletTransactionResponse.getStatus()), TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing()), walletTransactionResponse.getProcessingName(), new BigDecimal(walletTransactionResponse.getFeeAmount()), TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken()));
            case 2:
                String id2 = walletTransactionResponse.getId();
                BigDecimal bigDecimal2 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenDetailed mapToDomain2 = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
                String createdAt = walletTransactionResponse.getCreatedAt();
                TransactionDirection map2 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map3 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal3 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenDetailed mapToDomain3 = TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken());
                TransactionProcessingType map4 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                String processingName = walletTransactionResponse.getProcessingName();
                String userAccountId = walletTransactionResponse.getUserAccountId();
                return new Transaction.Referral(id2, bigDecimal2, map, map2, createdAt, mapToDomain2, map3, map4, processingName, bigDecimal3, mapToDomain3, userAccountId == null ? "" : userAccountId);
            case 3:
                String id3 = walletTransactionResponse.getId();
                BigDecimal bigDecimal4 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenDetailed mapToDomain4 = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
                return new Transaction.Purchase(id3, bigDecimal4, map, TransactionDirection.Companion.map(walletTransactionResponse.getDirection()), walletTransactionResponse.getCreatedAt(), mapToDomain4, Status.Companion.map(walletTransactionResponse.getStatus()), TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing()), walletTransactionResponse.getProcessingName(), new BigDecimal(walletTransactionResponse.getFeeAmount()), TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken()));
            case 4:
                String id4 = walletTransactionResponse.getId();
                BigDecimal bigDecimal5 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenDetailed mapToDomain5 = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
                return new Transaction.Lottery(id4, bigDecimal5, map, TransactionDirection.Companion.map(walletTransactionResponse.getDirection()), walletTransactionResponse.getCreatedAt(), mapToDomain5, Status.Companion.map(walletTransactionResponse.getStatus()), TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing()), walletTransactionResponse.getProcessingName(), new BigDecimal(walletTransactionResponse.getFeeAmount()), TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken()));
            case 5:
                String id5 = walletTransactionResponse.getId();
                BigDecimal bigDecimal6 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenDetailed mapToDomain6 = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
                String createdAt2 = walletTransactionResponse.getCreatedAt();
                TransactionDirection map5 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map6 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal7 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenDetailed mapToDomain7 = TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken());
                TransactionProcessingType map7 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                String processingName2 = walletTransactionResponse.getProcessingName();
                String userAccountId2 = walletTransactionResponse.getUserAccountId();
                return new Transaction.Transfer(id5, bigDecimal6, map, map5, createdAt2, mapToDomain6, map6, map7, processingName2, bigDecimal7, mapToDomain7, userAccountId2 == null ? "" : userAccountId2);
            case 6:
            case 7:
                if (Intrinsics.areEqual(walletTransactionResponse.isDonation(), Boolean.TRUE)) {
                    String id6 = walletTransactionResponse.getId();
                    BigDecimal bigDecimal8 = new BigDecimal(walletTransactionResponse.getAmount());
                    TokenDetailed mapToDomain8 = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
                    String createdAt3 = walletTransactionResponse.getCreatedAt();
                    TransactionDirection map8 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                    Status map9 = Status.Companion.map(walletTransactionResponse.getStatus());
                    BigDecimal bigDecimal9 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                    TokenDetailed mapToDomain9 = TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken());
                    TransactionProcessingType map10 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                    String txToCryptoAddress = walletTransactionResponse.getTxToCryptoAddress();
                    String str = txToCryptoAddress == null ? "" : txToCryptoAddress;
                    String txFromCryptoAddress = walletTransactionResponse.getTxFromCryptoAddress();
                    String str2 = txFromCryptoAddress == null ? "" : txFromCryptoAddress;
                    String txHash = walletTransactionResponse.getTxHash();
                    String str3 = txHash == null ? "" : txHash;
                    String receiverAccountId = walletTransactionResponse.getReceiverAccountId();
                    String str4 = receiverAccountId == null ? "" : receiverAccountId;
                    String processingName3 = walletTransactionResponse.getProcessingName();
                    String senderAccountId = walletTransactionResponse.getSenderAccountId();
                    transfer = new Transaction.Crypto.Donation(id6, bigDecimal8, map, map8, createdAt3, mapToDomain8, map9, map10, processingName3, bigDecimal9, mapToDomain9, str3, str2, str, senderAccountId == null ? "" : senderAccountId, str4);
                } else {
                    String id7 = walletTransactionResponse.getId();
                    BigDecimal bigDecimal10 = new BigDecimal(walletTransactionResponse.getAmount());
                    TokenDetailed mapToDomain10 = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
                    String createdAt4 = walletTransactionResponse.getCreatedAt();
                    TransactionDirection map11 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                    Status map12 = Status.Companion.map(walletTransactionResponse.getStatus());
                    BigDecimal bigDecimal11 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                    TokenDetailed mapToDomain11 = TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken());
                    TransactionProcessingType map13 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                    String processingName4 = walletTransactionResponse.getProcessingName();
                    String txToCryptoAddress2 = walletTransactionResponse.getTxToCryptoAddress();
                    String str5 = txToCryptoAddress2 == null ? "" : txToCryptoAddress2;
                    String txFromCryptoAddress2 = walletTransactionResponse.getTxFromCryptoAddress();
                    String str6 = txFromCryptoAddress2 == null ? "" : txFromCryptoAddress2;
                    String txHash2 = walletTransactionResponse.getTxHash();
                    transfer = new Transaction.Crypto.Transfer(id7, bigDecimal10, map, map11, createdAt4, mapToDomain10, map12, map13, processingName4, bigDecimal11, mapToDomain11, txHash2 == null ? "" : txHash2, str6, str5, walletTransactionResponse.getPayloadMessage());
                }
                return transfer;
            case 8:
                String id8 = walletTransactionResponse.getId();
                BigDecimal bigDecimal12 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenDetailed mapToDomain12 = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
                String createdAt5 = walletTransactionResponse.getCreatedAt();
                TransactionDirection map14 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map15 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal13 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenDetailed mapToDomain13 = TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken());
                TransactionProcessingType map16 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                String processingName5 = walletTransactionResponse.getProcessingName();
                String txHash3 = walletTransactionResponse.getTxHash();
                return new Transaction.Crypto.Approve(id8, bigDecimal12, map, map14, createdAt5, mapToDomain12, map15, map16, processingName5, bigDecimal13, mapToDomain13, txHash3 == null ? "" : txHash3);
            case 9:
                String id9 = walletTransactionResponse.getId();
                BigDecimal bigDecimal14 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenDetailed mapToDomain14 = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
                String createdAt6 = walletTransactionResponse.getCreatedAt();
                TransactionDirection map17 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map18 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal15 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenDetailed mapToDomain15 = TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken());
                TransactionProcessingType map19 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                String processingName6 = walletTransactionResponse.getProcessingName();
                String txToCryptoAddress3 = walletTransactionResponse.getTxToCryptoAddress();
                String str7 = txToCryptoAddress3 == null ? "" : txToCryptoAddress3;
                String txFromCryptoAddress3 = walletTransactionResponse.getTxFromCryptoAddress();
                String str8 = txFromCryptoAddress3 == null ? "" : txFromCryptoAddress3;
                String txHash4 = walletTransactionResponse.getTxHash();
                String str9 = txHash4 == null ? "" : txHash4;
                String simplexOrderId = walletTransactionResponse.getSimplexOrderId();
                String str10 = simplexOrderId == null ? "" : simplexOrderId;
                String amountToSpent = walletTransactionResponse.getAmountToSpent();
                BigDecimal bigDecimal16 = amountToSpent != null ? new BigDecimal(amountToSpent) : BigDecimal.ZERO;
                String spentCurrency = walletTransactionResponse.getSpentCurrency();
                if (spentCurrency == null) {
                    spentCurrency = TokenDetailed.Companion.getUSD().getName();
                }
                FiatCode fiatCode = new FiatCode(spentCurrency, 0, 2, null);
                Intrinsics.checkNotNullExpressionValue(bigDecimal16, "amountToSpent?.toBigDecimal() ?: BigDecimal.ZERO");
                return new Transaction.Crypto.SimplexPurchase(id9, bigDecimal14, map, map17, createdAt6, mapToDomain14, map18, map19, processingName6, bigDecimal15, mapToDomain15, str9, str8, str7, str10, bigDecimal16, fiatCode);
            case 10:
                String id10 = walletTransactionResponse.getId();
                BigDecimal bigDecimal17 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenDetailed mapToDomain16 = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
                return new Transaction.Refund(id10, bigDecimal17, map, TransactionDirection.Companion.map(walletTransactionResponse.getDirection()), walletTransactionResponse.getCreatedAt(), mapToDomain16, Status.Companion.map(walletTransactionResponse.getStatus()), TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing()), walletTransactionResponse.getProcessingName(), new BigDecimal(walletTransactionResponse.getFeeAmount()), TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken()));
            case 11:
                if (walletTransactionResponse.getInputToken() == null || walletTransactionResponse.getOutputToken() == null) {
                    return unsupportedTransaction(walletTransactionResponse);
                }
                String id11 = walletTransactionResponse.getId();
                BigDecimal bigDecimal18 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenDetailed mapToDomain17 = TokenMappingKt.mapToDomain(walletTransactionResponse.getInputToken());
                String createdAt7 = walletTransactionResponse.getCreatedAt();
                TransactionDirection map20 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map21 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal19 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenDetailed mapToDomain18 = TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken());
                TransactionProcessingType map22 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                String processingName7 = walletTransactionResponse.getProcessingName();
                TradeType.Companion companion = TradeType.Companion;
                String tradeType = walletTransactionResponse.getTradeType();
                if (tradeType == null) {
                    tradeType = "";
                }
                TradeType map23 = companion.map(tradeType);
                TokenDetailed mapToDomain19 = TokenMappingKt.mapToDomain(walletTransactionResponse.getOutputToken());
                TokenDetailed mapToDomain20 = TokenMappingKt.mapToDomain(walletTransactionResponse.getInputToken());
                String inputAmount = walletTransactionResponse.getInputAmount();
                BigDecimal bigDecimal20 = inputAmount != null ? new BigDecimal(inputAmount) : BigDecimal.ZERO;
                String outputAmount = walletTransactionResponse.getOutputAmount();
                BigDecimal bigDecimal21 = outputAmount != null ? new BigDecimal(outputAmount) : BigDecimal.ZERO;
                String txHash5 = walletTransactionResponse.getTxHash();
                if (txHash5 == null) {
                    txHash5 = "";
                }
                Intrinsics.checkNotNullExpressionValue(bigDecimal20, "inputAmount?.toBigDecimal() ?: BigDecimal.ZERO");
                Intrinsics.checkNotNullExpressionValue(bigDecimal21, "outputAmount?.toBigDecimal() ?: BigDecimal.ZERO");
                return new Transaction.Crypto.Swap(id11, bigDecimal18, map, map20, createdAt7, mapToDomain17, map21, map22, processingName7, bigDecimal19, mapToDomain18, txHash5, mapToDomain20, mapToDomain19, map23, bigDecimal20, bigDecimal21);
            default:
                return unsupportedTransaction(walletTransactionResponse);
        }
    }

    private static final Transaction unsupportedTransaction(WalletTransactionsResponse.WalletTransactionResponse walletTransactionResponse) {
        String id = walletTransactionResponse.getId();
        TransactionType map = TransactionType.Companion.map(walletTransactionResponse.getType());
        BigDecimal bigDecimal = new BigDecimal(walletTransactionResponse.getAmount());
        TokenDetailed mapToDomain = TokenMappingKt.mapToDomain(walletTransactionResponse.getToken());
        String createdAt = walletTransactionResponse.getCreatedAt();
        return new Transaction.Unsupported(id, bigDecimal, map, TransactionDirection.Companion.map(walletTransactionResponse.getDirection()), createdAt, mapToDomain, Status.Companion.map(walletTransactionResponse.getStatus()), TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing()), walletTransactionResponse.getProcessingName(), new BigDecimal(walletTransactionResponse.getFeeAmount()), TokenMappingKt.mapToDomain(walletTransactionResponse.getFeeToken()));
    }
}
