package com.iMe.storage.data.datasource.transfer.impl;

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
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.utils.extensions.CryptoExtKt;
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.trustwallet.walletconnect.extensions.ByteArrayKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import wallet.core.java.AnySigner;
import wallet.core.jni.CoinType;
import wallet.core.jni.proto.Tron;
/* compiled from: TRONWalletTransferDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class TRONWalletTransferDataSourceImpl implements WalletTransferDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoWalletApi cryptoWalletApi;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public TRONWalletTransferDataSourceImpl(FirebaseFunctionsErrorHandler firebaseErrorHandler, CryptoWalletApi cryptoWalletApi, CryptoAccessManager cryptoAccessManager) {
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
        Observable<ApiBaseResponse<CryptoTransferDataResponse.TRON>> tRONCryptoTransferData = this.cryptoWalletApi.getTRONCryptoTransferData(new PrepareTransferRequest(TokenMappingKt.mapToRequest(token), str, str2));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = tRONCryptoTransferData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoTransferDataResponse.TRON>, Result<? extends CryptoTransferMetadata>>() { // from class: com.iMe.storage.data.datasource.transfer.impl.TRONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoTransferMetadata> invoke(ApiBaseResponse<CryptoTransferDataResponse.TRON> response) {
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
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.data.datasource.transfer.impl.TRONWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1
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
                cryptoWalletApi = TRONWalletTransferDataSourceImpl.this.cryptoWalletApi;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<TransactionResponse>> sendCryptoTransferTransaction = cryptoWalletApi.sendCryptoTransferTransaction(new SendTransferTransactionRequest(data, networkId));
                firebaseFunctionsErrorHandler = TRONWalletTransferDataSourceImpl.this.firebaseErrorHandler;
                ObservableSource map = sendCryptoTransferTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TransactionResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.datasource.transfer.impl.TRONWalletTransferDataSourceImpl$transfer$lambda$2$$inlined$mapSuccess$1
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
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof TransferArgs.TRON)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        Wallet.TRON tRONWallet = this.cryptoAccessManager.getTRONWallet();
        if (tRONWallet == null) {
            Observable<Result<String>> just = Observable.just(Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, (Throwable) null, 3, (DefaultConstructorMarker) null), null, 2, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        String json = ((Tron.SigningOutput) AnySigner.sign(Tron.SigningInput.newBuilder().setTransaction(createTransactionByType((TransferArgs.TRON) args, tRONWallet.getAddress())).setPrivateKey(CryptoExtKt.toByteString(tRONWallet.getPrivateKeyBytes())).build(), CoinType.TRON, Tron.SigningOutput.parser())).getJson();
        Intrinsics.checkNotNullExpressionValue(json, "signerOutput.json");
        byte[] bytes = json.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        Observable<Result<String>> just2 = Observable.just(Result.Companion.success(ByteArrayKt.toHex(bytes)));
        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
        return just2;
    }

    private final Tron.Transaction createTransactionByType(TransferArgs.TRON tron, String str) {
        Tron.Transaction.Builder newBuilder = Tron.Transaction.newBuilder();
        String contractAddress = tron.getContractAddress();
        if (contractAddress == null || contractAddress.length() == 0) {
            newBuilder.setTransfer(Tron.TransferContract.newBuilder().setAmount(tron.getConvertedAmount().longValue()).setToAddress(tron.getRecipientAddress()).setOwnerAddress(str).build());
        } else {
            newBuilder.setTransferTrc20Contract(Tron.TransferTRC20Contract.newBuilder().setAmount(CryptoExtKt.toByteString(tron.getConvertedAmount())).setToAddress(tron.getRecipientAddress()).setContractAddress(tron.getContractAddress()).setOwnerAddress(str).build());
        }
        Tron.Transaction build = newBuilder.setBlockHeader(Tron.BlockHeader.newBuilder().setNumber(tron.getBlockHeader().getNumber()).setTxTrieRoot(CryptoExtKt.hexToByteString(tron.getBlockHeader().getTxTrieRoot())).setWitnessAddress(CryptoExtKt.hexToByteString(tron.getBlockHeader().getWitnessAddress())).setParentHash(CryptoExtKt.hexToByteString(tron.getBlockHeader().getParentHash())).setVersion(tron.getBlockHeader().getVersion()).setTimestamp(tron.getBlockHeader().getTimestamp()).build()).setFeeLimit(tron.getFeeLimit().longValue()).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n           …g())\n            .build()");
        return build;
    }
}
