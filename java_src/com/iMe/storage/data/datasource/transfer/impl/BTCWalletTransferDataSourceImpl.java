package com.iMe.storage.data.datasource.transfer.impl;

import com.google.protobuf.ByteString;
import com.iMe.storage.data.datasource.transfer.WalletTransferDataSource;
import com.iMe.storage.data.mapper.crypto.TransferMappingKt;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.network.model.request.crypto.wallet.PrepareTransferRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.SendTransferTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.BitcoinUnspentOutput;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.utils.extensions.CryptoExtKt;
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.trustwallet.walletconnect.extensions.ByteArrayKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
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

    public BTCWalletTransferDataSourceImpl(FirebaseFunctionsErrorHandler firebaseErrorHandler, CryptoWalletApi cryptoWalletApi, CryptoAccessManager cryptoAccessManager) {
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(cryptoWalletApi, "cryptoWalletApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.cryptoWalletApi = cryptoWalletApi;
        this.cryptoAccessManager = cryptoAccessManager;
    }

    @Override // com.iMe.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<CryptoTransferMetadata>> getTransferMetadata(Token token, String str, String str2) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<ApiBaseResponse<CryptoTransferDataResponse.BTC>> bTCCryptoTransferData = this.cryptoWalletApi.getBTCCryptoTransferData(new PrepareTransferRequest(TokenMappingKt.mapToRequest(token), str, str2));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = bTCCryptoTransferData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoTransferDataResponse.BTC>, Result<? extends CryptoTransferMetadata>>() { // from class: com.iMe.storage.data.datasource.transfer.impl.BTCWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoTransferMetadata> invoke(ApiBaseResponse<CryptoTransferDataResponse.BTC> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(TransferMappingKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }

    @Override // com.iMe.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<String>> transfer(TransactionArgs args, final String networkId) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.data.datasource.transfer.impl.BTCWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result) {
                CryptoWalletApi cryptoWalletApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                cryptoWalletApi = BTCWalletTransferDataSourceImpl.this.cryptoWalletApi;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<TransactionResponse>> sendCryptoTransferTransaction = cryptoWalletApi.sendCryptoTransferTransaction(new SendTransferTransactionRequest(data, networkId));
                firebaseFunctionsErrorHandler = BTCWalletTransferDataSourceImpl.this.firebaseErrorHandler;
                ObservableSource map = sendCryptoTransferTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TransactionResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.datasource.transfer.impl.BTCWalletTransferDataSourceImpl$transfer$lambda$2$$inlined$mapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<String> invoke(ApiBaseResponse<TransactionResponse> response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(response.getPayload().getTransactionHash());
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                return map;
            }
        }));
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
        Intrinsics.checkNotNullExpressionValue(data, "lockScriptForAddress(wal…COIN)\n            .data()");
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
