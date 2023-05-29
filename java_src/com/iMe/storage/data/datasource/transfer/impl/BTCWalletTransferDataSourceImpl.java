package com.iMe.storage.data.datasource.transfer.impl;

import com.google.protobuf.ByteString;
import com.iMe.storage.data.datasource.transfer.WalletTransferDataSource;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.network.model.request.crypto.wallet.GetDataForCryptoTransferRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.BitcoinUnspentOutput;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.trustwallet.walletconnect.extensions.ByteArrayKt;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.java.AnySigner;
import wallet.core.jni.BitcoinScript;
import wallet.core.jni.CoinType;
import wallet.core.jni.proto.Bitcoin;
/* compiled from: BTCWalletTransferDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class BTCWalletTransferDataSourceImpl implements WalletTransferDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoWalletApi cryptoWalletApi;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final WalletApi walletApi;

    public BTCWalletTransferDataSourceImpl(FirebaseFunctionsErrorHandler firebaseErrorHandler, CryptoWalletApi cryptoWalletApi, CryptoAccessManager cryptoAccessManager, WalletApi walletApi) {
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(cryptoWalletApi, "cryptoWalletApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(walletApi, "walletApi");
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.cryptoWalletApi = cryptoWalletApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.walletApi = walletApi;
    }

    @Override // com.iMe.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<CryptoTransferMetadata>> getTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable map = this.walletApi.getBTCCryptoTransferData(new GetDataForCryptoTransferRequest(tokenCode.getName(), str, str2, networkType.name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1612xbae10413(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }

    @Override // com.iMe.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<Boolean>> transfer(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1613xe4158fb(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        int collectionSizeOrDefault;
        List<Byte> reversed;
        byte[] byteArray;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof TransferArgs.BTC)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        Wallet.BTC bTCWallet = this.cryptoAccessManager.getBTCWallet();
        if (bTCWallet == null) {
            Observable<Result<String>> just = Observable.just(Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, (Throwable) null, 3, (DefaultConstructorMarker) null), null, 2, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        ByteString byteString = CryptoExtKt.toByteString(bTCWallet.getPrivateKeyBytes());
        String address = bTCWallet.getAddress();
        CoinType coinType = CoinType.BITCOIN;
        byte[] data = BitcoinScript.lockScriptForAddress(address, coinType).data();
        Intrinsics.checkNotNullExpressionValue(data, "lockScriptForAddress(wal… CoinType.BITCOIN).data()");
        ByteString byteString2 = CryptoExtKt.toByteString(data);
        TransferArgs.BTC btc = (TransferArgs.BTC) args;
        Bitcoin.SigningInput.Builder coinType2 = Bitcoin.SigningInput.newBuilder().setAmount(btc.getConvertedAmount().longValue()).setHashType(BitcoinScript.hashTypeForCoin(coinType)).setToAddress(btc.getRecipientAddress()).setChangeAddress(btc.getChangeAddress()).setByteFee(btc.getByteFee().longValue()).setCoinType(coinType.value());
        List<BitcoinUnspentOutput> utxos = btc.getUtxos();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(utxos, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (BitcoinUnspentOutput bitcoinUnspentOutput : utxos) {
            reversed = ArraysKt___ArraysKt.reversed(CryptoExtKt.hexToByteArray$default(bitcoinUnspentOutput.getTxId(), false, 1, null));
            byteArray = CollectionsKt___CollectionsKt.toByteArray(reversed);
            arrayList.add(Bitcoin.UnspentTransaction.newBuilder().setOutPoint(Bitcoin.OutPoint.newBuilder().setHash(CryptoExtKt.toByteString(byteArray)).setIndex(bitcoinUnspentOutput.getIndex()).build()).setAmount(bitcoinUnspentOutput.getAmount().longValue()).setScript(byteString2).build());
        }
        byte[] byteArray2 = ((Bitcoin.SigningOutput) AnySigner.sign(coinType2.addAllUtxo(arrayList).addPrivateKey(byteString).build(), CoinType.BITCOIN, Bitcoin.SigningOutput.parser())).getEncoded().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray2, "signerOutput.encoded.toByteArray()");
        Observable<Result<String>> just2 = Observable.just(Result.Companion.success(ByteArrayKt.toHex(byteArray2)));
        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
        return just2;
    }
}
