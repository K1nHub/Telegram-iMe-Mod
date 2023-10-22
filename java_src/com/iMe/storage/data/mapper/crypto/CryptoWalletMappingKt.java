package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.model.response.crypto.ton.TonFeesResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.AccountInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.AccountWalletAddressResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.BitcoinUnspentOutputResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.GasPriceResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionParamsResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet_connect.ParamsForCryptoTransactionResponse;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.TransactionParams;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletMapping.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletMappingKt {
    public static final AccountInfo mapToDomain(AccountInfoResponse accountInfoResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(accountInfoResponse, "<this>");
        List<AccountWalletAddressResponse> wallets = accountInfoResponse.getWallets();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(wallets, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (AccountWalletAddressResponse accountWalletAddressResponse : wallets) {
            arrayList.add(mapToDomain(accountWalletAddressResponse));
        }
        return new AccountInfo(arrayList, accountInfoResponse.getHasAccess());
    }

    public static final AccountInfo.Address mapToDomain(AccountWalletAddressResponse accountWalletAddressResponse) {
        Intrinsics.checkNotNullParameter(accountWalletAddressResponse, "<this>");
        String value = accountWalletAddressResponse.getValue();
        if (value == null) {
            value = "";
        }
        return new AccountInfo.Address(value, accountWalletAddressResponse.isSet(), BlockchainType.Companion.mapByBackendName(accountWalletAddressResponse.getPlatform()));
    }

    public static final WalletConnectProcessedTransaction mapToDomain(ParamsForCryptoTransactionResponse paramsForCryptoTransactionResponse) {
        Intrinsics.checkNotNullParameter(paramsForCryptoTransactionResponse, "<this>");
        return new WalletConnectProcessedTransaction(paramsForCryptoTransactionResponse.getFrom(), paramsForCryptoTransactionResponse.getTo(), paramsForCryptoTransactionResponse.getValue(), paramsForCryptoTransactionResponse.getData(), mapToDomain(paramsForCryptoTransactionResponse.getTransactionParams()), TokenMappingKt.mapToDomain(paramsForCryptoTransactionResponse.getFeeToken()));
    }

    public static final TransactionParams.Ether mapToDomain(TransactionParamsResponse.EVM evm) {
        Intrinsics.checkNotNullParameter(evm, "<this>");
        BigInteger nonce = evm.getNonce();
        long chainId = evm.getChainId();
        GasPriceResponse safeLow = evm.getSafeLow();
        GasPriceInfo mapToDomain = safeLow != null ? GasPriceInfoMappingKt.mapToDomain(safeLow) : null;
        GasPriceInfo mapToDomain2 = GasPriceInfoMappingKt.mapToDomain(evm.getFast());
        GasPriceResponse fastest = evm.getFastest();
        return new TransactionParams.Ether(mapToDomain2, fastest != null ? GasPriceInfoMappingKt.mapToDomain(fastest) : null, mapToDomain, nonce, chainId);
    }

    public static final TransactionParams.Tron mapToDomain(TransactionParamsResponse.TRON tron, GasPriceResponse estimateFees) {
        Intrinsics.checkNotNullParameter(tron, "<this>");
        Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
        return new TransactionParams.Tron(GasPriceInfo.copy$default(GasPriceInfoMappingKt.mapToDomain(estimateFees), null, tron.getFeeLimit(), 0, 0.0d, null, 29, null), TronBlockHeaderMappingKt.mapToDomain(tron.getBlockHeader()), tron.getContractAddress());
    }

    public static final TransactionParams.Ton mapToDomain(TransactionParamsResponse.TON ton, TonFeesResponse estimateFees) {
        Intrinsics.checkNotNullParameter(ton, "<this>");
        Intrinsics.checkNotNullParameter(estimateFees, "estimateFees");
        BigInteger ZERO = BigInteger.ZERO;
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        return new TransactionParams.Ton(new GasPriceInfo(ZERO, ZERO, (int) estimateFees.getDuration(), estimateFees.getFee(), FiatValue.Companion.createUSDValue(estimateFees.getFeeInDollars())), ton.getWalletSeqno());
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
