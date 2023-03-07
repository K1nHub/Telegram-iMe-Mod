package com.smedialink.storage.data.mapper.crypto;

import com.smedialink.storage.data.network.model.response.crypto.wallet.AccountInfoResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.GasPriceOneItem;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet_connect.ParamsForCryptoTransactionResponse;
import com.smedialink.storage.domain.model.crypto.AccountInfo;
import com.smedialink.storage.domain.model.crypto.Chain;
import com.smedialink.storage.domain.model.crypto.TransactionParams;
import com.smedialink.storage.domain.model.crypto.send.GasPriceInfo;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletMapping.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletMappingKt {
    public static final AccountInfo mapToDomain(AccountInfoResponse accountInfoResponse) {
        Intrinsics.checkNotNullParameter(accountInfoResponse, "<this>");
        String value = accountInfoResponse.getEtherWalletAddress().getValue();
        if (value == null) {
            value = "";
        }
        AccountInfo.Address address = new AccountInfo.Address(value, accountInfoResponse.getEtherWalletAddress().isSet(), accountInfoResponse.getEtherWalletAddress().getHasAccess());
        String value2 = accountInfoResponse.getTonWalletAddress().getValue();
        return new AccountInfo(address, new AccountInfo.Address(value2 != null ? value2 : "", accountInfoResponse.getTonWalletAddress().isSet(), accountInfoResponse.getTonWalletAddress().getHasAccess()));
    }

    public static final WalletConnectProcessedTransaction mapToDomain(ParamsForCryptoTransactionResponse paramsForCryptoTransactionResponse) {
        Intrinsics.checkNotNullParameter(paramsForCryptoTransactionResponse, "<this>");
        return new WalletConnectProcessedTransaction(paramsForCryptoTransactionResponse.getFrom(), paramsForCryptoTransactionResponse.getTo(), paramsForCryptoTransactionResponse.getValue(), paramsForCryptoTransactionResponse.getData(), mapToDomain(paramsForCryptoTransactionResponse.getTransactionParams()), paramsForCryptoTransactionResponse.getNetworkType(), paramsForCryptoTransactionResponse.getFeeTokenCode());
    }

    public static final TransactionParams mapToDomain(TransactionParamsResponse transactionParamsResponse) {
        Intrinsics.checkNotNullParameter(transactionParamsResponse, "<this>");
        BigInteger nonce = transactionParamsResponse.getNonce();
        Chain chainById = Chain.Companion.getChainById(transactionParamsResponse.getChainId());
        GasPriceOneItem safeLow = transactionParamsResponse.getSafeLow();
        GasPriceInfo gasPriceInfo = safeLow == null ? null : new GasPriceInfo(safeLow.getPrice(), safeLow.getLimit(), (int) safeLow.getDuration(), safeLow.getFee(), safeLow.getFeeInDollars());
        GasPriceInfo gasPriceInfo2 = new GasPriceInfo(transactionParamsResponse.getFast().getPrice(), transactionParamsResponse.getFast().getLimit(), (int) transactionParamsResponse.getFast().getDuration(), transactionParamsResponse.getFast().getFee(), transactionParamsResponse.getFast().getFeeInDollars());
        GasPriceOneItem fastest = transactionParamsResponse.getFastest();
        return new TransactionParams(fastest == null ? null : new GasPriceInfo(fastest.getPrice(), fastest.getLimit(), (int) fastest.getDuration(), fastest.getFee(), fastest.getFeeInDollars()), gasPriceInfo2, gasPriceInfo, nonce, chainById);
    }
}
