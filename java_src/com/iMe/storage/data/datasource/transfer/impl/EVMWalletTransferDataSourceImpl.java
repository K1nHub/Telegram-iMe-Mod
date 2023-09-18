package com.iMe.storage.data.datasource.transfer.impl;

import com.iMe.storage.data.datasource.transfer.WalletTransferDataSource;
import com.iMe.storage.data.mapper.crypto.TransferMappingKt;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.wallet.PrepareTransferRequest;
import com.iMe.storage.data.network.model.request.crypto.wallet.SendTransferTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: EVMWalletTransferDataSourceImpl.kt */
/* loaded from: classes4.dex */
public final class EVMWalletTransferDataSourceImpl implements WalletTransferDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoWalletApi cryptoWalletApi;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public EVMWalletTransferDataSourceImpl(FirebaseFunctionsErrorHandler firebaseErrorHandler, CryptoWalletApi cryptoWalletApi, CryptoAccessManager cryptoAccessManager) {
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
        Observable<ApiBaseResponse<CryptoTransferDataResponse.EVM>> eVMCryptoTransferData = this.cryptoWalletApi.getEVMCryptoTransferData(new PrepareTransferRequest(TokenMappingKt.mapToRequest(token), str, str2));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = eVMCryptoTransferData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoTransferDataResponse.EVM>, Result<? extends CryptoTransferMetadata>>() { // from class: com.iMe.storage.data.datasource.transfer.impl.EVMWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoTransferMetadata> invoke(ApiBaseResponse<CryptoTransferDataResponse.EVM> response) {
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
    public Observable<Result<Boolean>> transfer(TransactionArgs args, final String networkId) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.storage.data.datasource.transfer.impl.EVMWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends String> result) {
                CryptoWalletApi cryptoWalletApi;
                final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                cryptoWalletApi = EVMWalletTransferDataSourceImpl.this.cryptoWalletApi;
                String data = result.getData();
                if (data == null) {
                    data = "";
                }
                Observable<ApiBaseResponse<TransactionResponse>> sendCryptoTransferTransaction = cryptoWalletApi.sendCryptoTransferTransaction(new SendTransferTransactionRequest(data, networkId));
                firebaseFunctionsErrorHandler = EVMWalletTransferDataSourceImpl.this.firebaseErrorHandler;
                ObservableSource map = sendCryptoTransferTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TransactionResponse>, Result<? extends Boolean>>() { // from class: com.iMe.storage.data.datasource.transfer.impl.EVMWalletTransferDataSourceImpl$transfer$lambda$2$$inlined$mapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<Boolean> invoke(ApiBaseResponse<TransactionResponse> response) {
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (!response.isSuccess()) {
                            return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                        }
                        return Result.Companion.success(Boolean.TRUE);
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
        byte[] bArr;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof TransferArgs.EVM)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        boolean z = false;
        if (eVMWallet == null || (bArr = eVMWallet.getPrivateKeyBytes()) == null) {
            bArr = new byte[0];
        }
        byte[] bArr2 = bArr;
        TransferArgs.EVM evm = (TransferArgs.EVM) args;
        EthTransactionSigner ethTransactionSigner = EthTransactionSigner.INSTANCE;
        Ethereum.Transaction createTransferTransactionByType = ethTransactionSigner.createTransferTransactionByType(evm.getConvertedAmount(), evm.getRecipientAddress(), evm.getContractAddress());
        String contractAddress = evm.getContractAddress();
        Observable<Result<String>> just = Observable.just(Result.Companion.success(ethTransactionSigner.sign(evm.getChainId(), evm.getGasPrice(), evm.getGasLimit(), evm.getNonce(), (contractAddress == null || contractAddress.length() == 0) ? true : true ? evm.getRecipientAddress() : evm.getContractAddress(), createTransferTransactionByType, bArr2)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
