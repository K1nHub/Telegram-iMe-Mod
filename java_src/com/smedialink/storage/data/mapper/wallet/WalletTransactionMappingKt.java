package com.smedialink.storage.data.mapper.wallet;

import com.smedialink.storage.data.network.model.response.base.Status;
import com.smedialink.storage.data.network.model.response.wallet.WalletTransactionsResponse;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.swap.TradeType;
import com.smedialink.storage.domain.model.wallet.token.FiatCode;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import com.smedialink.storage.domain.model.wallet.transaction.TransactionDirection;
import com.smedialink.storage.domain.model.wallet.transaction.TransactionProcessingType;
import com.smedialink.storage.domain.model.wallet.transaction.TransactionType;
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
        Intrinsics.checkNotNullParameter(walletTransactionResponse, "<this>");
        TransactionType map = TransactionType.Companion.map(walletTransactionResponse.getType());
        switch (WhenMappings.$EnumSwitchMapping$0[map.ordinal()]) {
            case 1:
                String id = walletTransactionResponse.getId();
                BigDecimal bigDecimal = new BigDecimal(walletTransactionResponse.getAmount());
                TokenCode.Companion companion = TokenCode.Companion;
                TokenCode map2 = companion.map(walletTransactionResponse.getTokenCode());
                return new Transaction.Registration(id, bigDecimal, map, TransactionDirection.Companion.map(walletTransactionResponse.getDirection()), walletTransactionResponse.getCreatedAt(), map2, Status.Companion.map(walletTransactionResponse.getStatus()), TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing()), new BigDecimal(walletTransactionResponse.getFeeAmount()), companion.map(walletTransactionResponse.getFeeTokenCode()));
            case 2:
                String id2 = walletTransactionResponse.getId();
                BigDecimal bigDecimal2 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenCode.Companion companion2 = TokenCode.Companion;
                TokenCode map3 = companion2.map(walletTransactionResponse.getTokenCode());
                String createdAt = walletTransactionResponse.getCreatedAt();
                TransactionDirection map4 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map5 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal3 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenCode map6 = companion2.map(walletTransactionResponse.getFeeTokenCode());
                TransactionProcessingType map7 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                String userAccountId = walletTransactionResponse.getUserAccountId();
                return new Transaction.Referral(id2, bigDecimal2, map, map4, createdAt, map3, map5, map7, bigDecimal3, map6, userAccountId == null ? "" : userAccountId);
            case 3:
                String id3 = walletTransactionResponse.getId();
                BigDecimal bigDecimal4 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenCode.Companion companion3 = TokenCode.Companion;
                TokenCode map8 = companion3.map(walletTransactionResponse.getTokenCode());
                return new Transaction.Purchase(id3, bigDecimal4, map, TransactionDirection.Companion.map(walletTransactionResponse.getDirection()), walletTransactionResponse.getCreatedAt(), map8, Status.Companion.map(walletTransactionResponse.getStatus()), TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing()), new BigDecimal(walletTransactionResponse.getFeeAmount()), companion3.map(walletTransactionResponse.getFeeTokenCode()));
            case 4:
                String id4 = walletTransactionResponse.getId();
                BigDecimal bigDecimal5 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenCode.Companion companion4 = TokenCode.Companion;
                TokenCode map9 = companion4.map(walletTransactionResponse.getTokenCode());
                return new Transaction.Lottery(id4, bigDecimal5, map, TransactionDirection.Companion.map(walletTransactionResponse.getDirection()), walletTransactionResponse.getCreatedAt(), map9, Status.Companion.map(walletTransactionResponse.getStatus()), TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing()), new BigDecimal(walletTransactionResponse.getFeeAmount()), companion4.map(walletTransactionResponse.getFeeTokenCode()));
            case 5:
                String id5 = walletTransactionResponse.getId();
                BigDecimal bigDecimal6 = new BigDecimal(walletTransactionResponse.getAmount());
                TokenCode.Companion companion5 = TokenCode.Companion;
                TokenCode map10 = companion5.map(walletTransactionResponse.getTokenCode());
                String createdAt2 = walletTransactionResponse.getCreatedAt();
                TransactionDirection map11 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map12 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal7 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenCode map13 = companion5.map(walletTransactionResponse.getFeeTokenCode());
                TransactionProcessingType map14 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                String userAccountId2 = walletTransactionResponse.getUserAccountId();
                return new Transaction.Transfer(id5, bigDecimal6, map, map11, createdAt2, map10, map12, map14, bigDecimal7, map13, userAccountId2 == null ? "" : userAccountId2);
            case 6:
            case 7:
                TokenCode parseSupportedTokenCode = parseSupportedTokenCode(walletTransactionResponse.getTokenCode());
                if (parseSupportedTokenCode == null) {
                    return unsupportedTransaction(walletTransactionResponse);
                }
                if (Intrinsics.areEqual(walletTransactionResponse.isDonation(), Boolean.TRUE)) {
                    String id6 = walletTransactionResponse.getId();
                    BigDecimal bigDecimal8 = new BigDecimal(walletTransactionResponse.getAmount());
                    String createdAt3 = walletTransactionResponse.getCreatedAt();
                    TransactionDirection map15 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                    Status map16 = Status.Companion.map(walletTransactionResponse.getStatus());
                    BigDecimal bigDecimal9 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                    TokenCode map17 = TokenCode.Companion.map(walletTransactionResponse.getFeeTokenCode());
                    TransactionProcessingType map18 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                    String txToCryptoAddress = walletTransactionResponse.getTxToCryptoAddress();
                    String str = txToCryptoAddress == null ? "" : txToCryptoAddress;
                    String txFromCryptoAddress = walletTransactionResponse.getTxFromCryptoAddress();
                    String str2 = txFromCryptoAddress == null ? "" : txFromCryptoAddress;
                    String txHash = walletTransactionResponse.getTxHash();
                    String str3 = txHash == null ? "" : txHash;
                    String receiverAccountId = walletTransactionResponse.getReceiverAccountId();
                    if (receiverAccountId == null) {
                        receiverAccountId = "";
                    }
                    String senderAccountId = walletTransactionResponse.getSenderAccountId();
                    String str4 = senderAccountId == null ? "" : senderAccountId;
                    NetworkType.Companion companion6 = NetworkType.Companion;
                    String networkType = walletTransactionResponse.getNetworkType();
                    if (networkType == null) {
                        networkType = "";
                    }
                    return new Transaction.Crypto.Donation(id6, bigDecimal8, map, map15, createdAt3, parseSupportedTokenCode, map16, map18, bigDecimal9, map17, str3, str2, str, companion6.map(networkType), str4, receiverAccountId);
                }
                String id7 = walletTransactionResponse.getId();
                BigDecimal bigDecimal10 = new BigDecimal(walletTransactionResponse.getAmount());
                String createdAt4 = walletTransactionResponse.getCreatedAt();
                TransactionDirection map19 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map20 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal11 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenCode map21 = TokenCode.Companion.map(walletTransactionResponse.getFeeTokenCode());
                TransactionProcessingType map22 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                String txToCryptoAddress2 = walletTransactionResponse.getTxToCryptoAddress();
                String str5 = txToCryptoAddress2 == null ? "" : txToCryptoAddress2;
                String txFromCryptoAddress2 = walletTransactionResponse.getTxFromCryptoAddress();
                String str6 = txFromCryptoAddress2 == null ? "" : txFromCryptoAddress2;
                String txHash2 = walletTransactionResponse.getTxHash();
                String str7 = txHash2 == null ? "" : txHash2;
                NetworkType.Companion companion7 = NetworkType.Companion;
                String networkType2 = walletTransactionResponse.getNetworkType();
                if (networkType2 == null) {
                    networkType2 = walletTransactionResponse.getProcessing();
                }
                return new Transaction.Crypto.Transfer(id7, bigDecimal10, map, map19, createdAt4, parseSupportedTokenCode, map20, map22, bigDecimal11, map21, str7, companion7.map(networkType2), str6, str5, walletTransactionResponse.getPayloadMessage());
            case 8:
                TokenCode parseSupportedTokenCode2 = parseSupportedTokenCode(walletTransactionResponse.getTokenCode());
                if (parseSupportedTokenCode2 == null) {
                    return unsupportedTransaction(walletTransactionResponse);
                }
                String id8 = walletTransactionResponse.getId();
                BigDecimal bigDecimal12 = new BigDecimal(walletTransactionResponse.getAmount());
                String createdAt5 = walletTransactionResponse.getCreatedAt();
                TransactionDirection map23 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map24 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal13 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenCode map25 = TokenCode.Companion.map(walletTransactionResponse.getFeeTokenCode());
                TransactionProcessingType map26 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                String txHash3 = walletTransactionResponse.getTxHash();
                String str8 = txHash3 == null ? "" : txHash3;
                NetworkType.Companion companion8 = NetworkType.Companion;
                String networkType3 = walletTransactionResponse.getNetworkType();
                return new Transaction.Crypto.Approve(id8, bigDecimal12, map, map23, createdAt5, parseSupportedTokenCode2, map24, map26, bigDecimal13, map25, str8, companion8.map(networkType3 == null ? "" : networkType3));
            case 9:
                TokenCode parseSupportedTokenCode3 = parseSupportedTokenCode(walletTransactionResponse.getTokenCode());
                if (parseSupportedTokenCode3 == null) {
                    return unsupportedTransaction(walletTransactionResponse);
                }
                String id9 = walletTransactionResponse.getId();
                BigDecimal bigDecimal14 = new BigDecimal(walletTransactionResponse.getAmount());
                String createdAt6 = walletTransactionResponse.getCreatedAt();
                TransactionDirection map27 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map28 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal15 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenCode map29 = TokenCode.Companion.map(walletTransactionResponse.getFeeTokenCode());
                TransactionProcessingType map30 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                String txToCryptoAddress3 = walletTransactionResponse.getTxToCryptoAddress();
                String str9 = txToCryptoAddress3 == null ? "" : txToCryptoAddress3;
                String txFromCryptoAddress3 = walletTransactionResponse.getTxFromCryptoAddress();
                String str10 = txFromCryptoAddress3 == null ? "" : txFromCryptoAddress3;
                String txHash4 = walletTransactionResponse.getTxHash();
                String str11 = txHash4 == null ? "" : txHash4;
                String simplexOrderId = walletTransactionResponse.getSimplexOrderId();
                String str12 = simplexOrderId == null ? "" : simplexOrderId;
                String amountToSpent = walletTransactionResponse.getAmountToSpent();
                BigDecimal bigDecimal16 = amountToSpent != null ? new BigDecimal(amountToSpent) : BigDecimal.ZERO;
                String spentCurrency = walletTransactionResponse.getSpentCurrency();
                if (spentCurrency == null) {
                    spentCurrency = TokenCode.USD.getName();
                }
                String str13 = str11;
                FiatCode fiatCode = new FiatCode(spentCurrency, 0, 2, null);
                NetworkType.Companion companion9 = NetworkType.Companion;
                String networkType4 = walletTransactionResponse.getNetworkType();
                if (networkType4 == null) {
                    networkType4 = "";
                }
                NetworkType map31 = companion9.map(networkType4);
                Intrinsics.checkNotNullExpressionValue(bigDecimal16, "amountToSpent?.toBigDecimal() ?: BigDecimal.ZERO");
                return new Transaction.Crypto.SimplexPurchase(id9, bigDecimal14, map, map27, createdAt6, parseSupportedTokenCode3, map28, map30, bigDecimal15, map29, str13, map31, str10, str9, str12, bigDecimal16, fiatCode);
            case 10:
                TokenCode parseSupportedTokenCode4 = parseSupportedTokenCode(walletTransactionResponse.getTokenCode());
                if (parseSupportedTokenCode4 == null) {
                    return unsupportedTransaction(walletTransactionResponse);
                }
                return new Transaction.Refund(walletTransactionResponse.getId(), new BigDecimal(walletTransactionResponse.getAmount()), map, TransactionDirection.Companion.map(walletTransactionResponse.getDirection()), walletTransactionResponse.getCreatedAt(), parseSupportedTokenCode4, Status.Companion.map(walletTransactionResponse.getStatus()), TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing()), new BigDecimal(walletTransactionResponse.getFeeAmount()), TokenCode.Companion.map(walletTransactionResponse.getFeeTokenCode()));
            case 11:
                TokenCode parseSupportedTokenCode5 = parseSupportedTokenCode(walletTransactionResponse.getInputCryptoTokenCode());
                if (parseSupportedTokenCode5 == null) {
                    return unsupportedTransaction(walletTransactionResponse);
                }
                TokenCode parseSupportedTokenCode6 = parseSupportedTokenCode(walletTransactionResponse.getOutputCryptoTokenCode());
                if (parseSupportedTokenCode6 == null) {
                    return unsupportedTransaction(walletTransactionResponse);
                }
                String id10 = walletTransactionResponse.getId();
                BigDecimal bigDecimal17 = new BigDecimal(walletTransactionResponse.getAmount());
                String createdAt7 = walletTransactionResponse.getCreatedAt();
                TransactionDirection map32 = TransactionDirection.Companion.map(walletTransactionResponse.getDirection());
                Status map33 = Status.Companion.map(walletTransactionResponse.getStatus());
                BigDecimal bigDecimal18 = new BigDecimal(walletTransactionResponse.getFeeAmount());
                TokenCode map34 = TokenCode.Companion.map(walletTransactionResponse.getFeeTokenCode());
                TransactionProcessingType map35 = TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing());
                TradeType.Companion companion10 = TradeType.Companion;
                String tradeType = walletTransactionResponse.getTradeType();
                if (tradeType == null) {
                    tradeType = "";
                }
                TradeType map36 = companion10.map(tradeType);
                String inputAmount = walletTransactionResponse.getInputAmount();
                BigDecimal bigDecimal19 = inputAmount != null ? new BigDecimal(inputAmount) : BigDecimal.ZERO;
                String outputAmount = walletTransactionResponse.getOutputAmount();
                BigDecimal bigDecimal20 = outputAmount != null ? new BigDecimal(outputAmount) : BigDecimal.ZERO;
                String txHash5 = walletTransactionResponse.getTxHash();
                String str14 = txHash5 == null ? "" : txHash5;
                NetworkType.Companion companion11 = NetworkType.Companion;
                String networkType5 = walletTransactionResponse.getNetworkType();
                NetworkType map37 = companion11.map(networkType5 != null ? networkType5 : "");
                Intrinsics.checkNotNullExpressionValue(bigDecimal19, "inputAmount?.toBigDecimal() ?: BigDecimal.ZERO");
                Intrinsics.checkNotNullExpressionValue(bigDecimal20, "outputAmount?.toBigDecimal() ?: BigDecimal.ZERO");
                return new Transaction.Crypto.Swap(id10, bigDecimal17, map, map32, createdAt7, parseSupportedTokenCode5, map33, map35, bigDecimal18, map34, str14, map37, parseSupportedTokenCode5, parseSupportedTokenCode6, map36, bigDecimal19, bigDecimal20);
            default:
                return unsupportedTransaction(walletTransactionResponse);
        }
    }

    private static final TokenCode parseSupportedTokenCode(String str) {
        TokenCode.Companion companion = TokenCode.Companion;
        if (str == null) {
            str = "";
        }
        TokenCode map = companion.map(str);
        if (map == TokenCode.UNKNOWN) {
            return null;
        }
        return map;
    }

    private static final Transaction unsupportedTransaction(WalletTransactionsResponse.WalletTransactionResponse walletTransactionResponse) {
        String id = walletTransactionResponse.getId();
        TransactionType map = TransactionType.Companion.map(walletTransactionResponse.getType());
        BigDecimal bigDecimal = new BigDecimal(walletTransactionResponse.getAmount());
        TokenCode.Companion companion = TokenCode.Companion;
        TokenCode map2 = companion.map(walletTransactionResponse.getTokenCode());
        String createdAt = walletTransactionResponse.getCreatedAt();
        return new Transaction.Unsupported(id, bigDecimal, map, TransactionDirection.Companion.map(walletTransactionResponse.getDirection()), createdAt, map2, Status.Companion.map(walletTransactionResponse.getStatus()), TransactionProcessingType.Companion.map(walletTransactionResponse.getProcessing()), new BigDecimal(walletTransactionResponse.getFeeAmount()), companion.map(walletTransactionResponse.getFeeTokenCode()));
    }
}
