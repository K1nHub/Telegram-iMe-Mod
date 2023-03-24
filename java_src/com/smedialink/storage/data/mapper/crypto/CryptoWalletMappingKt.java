package com.smedialink.storage.data.mapper.crypto;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.storage.data.network.model.response.crypto.wallet.AccountInfoResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.AccountWalletAddressResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.GasPriceResponse;
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
        return new AccountInfo(mapToDomain(accountInfoResponse.getEtherWalletAddress()), mapToDomain(accountInfoResponse.getTonWalletAddress()), mapToDomain(accountInfoResponse.getTronWalletAddress()));
    }

    public static final AccountInfo.Address mapToDomain(AccountWalletAddressResponse accountWalletAddressResponse) {
        Intrinsics.checkNotNullParameter(accountWalletAddressResponse, "<this>");
        String value = accountWalletAddressResponse.getValue();
        if (value == null) {
            value = "";
        }
        return new AccountInfo.Address(value, accountWalletAddressResponse.isSet(), accountWalletAddressResponse.getHasAccess());
    }

    public static final WalletConnectProcessedTransaction mapToDomain(ParamsForCryptoTransactionResponse paramsForCryptoTransactionResponse) {
        Intrinsics.checkNotNullParameter(paramsForCryptoTransactionResponse, "<this>");
        return new WalletConnectProcessedTransaction(paramsForCryptoTransactionResponse.getFrom(), paramsForCryptoTransactionResponse.getTo(), paramsForCryptoTransactionResponse.getValue(), paramsForCryptoTransactionResponse.getData(), mapToDomain(paramsForCryptoTransactionResponse.getTransactionParams()), paramsForCryptoTransactionResponse.getNetworkType(), paramsForCryptoTransactionResponse.getFeeTokenCode());
    }

    public static final TransactionParams.Ether mapToDomain(TransactionParamsResponse.EVM evm) {
        Intrinsics.checkNotNullParameter(evm, "<this>");
        BigInteger nonce = evm.getNonce();
        Chain chainById = Chain.Companion.getChainById(evm.getChainId());
        GasPriceResponse safeLow = evm.getSafeLow();
        GasPriceInfo mapToDomain = safeLow != null ? GasPriceInfoMappingKt.mapToDomain(safeLow) : null;
        GasPriceInfo mapToDomain2 = GasPriceInfoMappingKt.mapToDomain(evm.getFast());
        GasPriceResponse fastest = evm.getFastest();
        return new TransactionParams.Ether(mapToDomain2, fastest != null ? GasPriceInfoMappingKt.mapToDomain(fastest) : null, mapToDomain, nonce, chainById);
    }

    public static final TransactionParams.Tron mapToDomain(TransactionParamsResponse.TRON tron, GasPriceResponse estimateFees) {
        Intrinsics.checkNotNullParameter(tron, "<this>");
        Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
        return new TransactionParams.Tron(GasPriceInfo.copy$default(GasPriceInfoMappingKt.mapToDomain(estimateFees), null, tron.getFeeLimit(), 0, 0.0d, BitmapDescriptorFactory.HUE_RED, 29, null), TronBlockHeaderMappingKt.mapToDomain(tron.getBlockHeader()));
    }
}
