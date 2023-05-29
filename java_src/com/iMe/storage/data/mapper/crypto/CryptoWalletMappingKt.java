package com.iMe.storage.data.mapper.crypto;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.storage.data.network.model.response.crypto.wallet.AccountInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.AccountWalletAddressResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.BitcoinUnspentOutputResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.GasPriceResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet_connect.ParamsForCryptoTransactionResponse;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import com.iMe.storage.domain.model.crypto.Chain;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletMapping.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletMappingKt {
    public static final AccountInfo mapToDomain(AccountInfoResponse accountInfoResponse) {
        Intrinsics.checkNotNullParameter(accountInfoResponse, "<this>");
        return new AccountInfo(mapToDomain(accountInfoResponse.getEtherWalletAddress()), mapToDomain(accountInfoResponse.getTonWalletAddress()), mapToDomain(accountInfoResponse.getTronWalletAddress()), mapToDomain(accountInfoResponse.getBitcoinWalletAddress()));
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

    public static final TransactionParams.Bitcoin mapToDomain(TransactionParamsResponse.BTC btc) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(btc, "<this>");
        GasPriceInfo mapToDomain = GasPriceInfoMappingKt.mapToDomain(btc.getSafeLow());
        GasPriceInfo mapToDomain2 = GasPriceInfoMappingKt.mapToDomain(btc.getFast());
        GasPriceInfo mapToDomain3 = GasPriceInfoMappingKt.mapToDomain(btc.getFastest());
        List<BitcoinUnspentOutputResponse> utxos = btc.getUtxos();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(utxos, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BitcoinUnspentOutputResponse bitcoinUnspentOutputResponse : utxos) {
            arrayList.add(BitcoinUnspentOutputMapperKt.mapToDomain(bitcoinUnspentOutputResponse));
        }
        return new TransactionParams.Bitcoin(mapToDomain2, mapToDomain3, mapToDomain, arrayList, btc.getChangeAddress());
    }
}
