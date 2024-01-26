package com.iMe.storage.data.datasource.cancel.impl;

import com.iMe.storage.data.datasource.cancel.WalletCancelDataSource;
import com.iMe.storage.data.network.api.own.CancelApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.cancel.SendCancelOrBoostTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.cancel.CancelArgs;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.utils.extensions.CryptoExtKt;
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: EthWalletCancelDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class EthWalletCancelDataSourceImpl implements WalletCancelDataSource {
    private final CancelApi cancelApi;
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;

    public EthWalletCancelDataSourceImpl(CancelApi cancelApi, CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(cancelApi, "cancelApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.cancelApi = cancelApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.iMe.storage.data.datasource.cancel.WalletCancelDataSource
    public Observable<Result<String>> cancel(final TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args instanceof CancelArgs.Ethereum) {
            Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.data.datasource.cancel.impl.EthWalletCancelDataSourceImpl$cancel$$inlined$flatMapSuccess$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result) {
                    CancelApi cancelApi;
                    final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (result instanceof Result.Success) {
                        cancelApi = EthWalletCancelDataSourceImpl.this.cancelApi;
                        String data = result.getData();
                        if (data == null) {
                            data = "";
                        }
                        Observable<ApiBaseResponse<TransactionResponse>> sendEthereumCancelTransaction = cancelApi.sendEthereumCancelTransaction(new SendCancelOrBoostTransactionRequest(data, ((CancelArgs.Ethereum) args).getOldTxHash()));
                        firebaseFunctionsErrorHandler = EthWalletCancelDataSourceImpl.this.firebaseErrorHandler;
                        ObservableSource map = sendEthereumCancelTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TransactionResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.datasource.cancel.impl.EthWalletCancelDataSourceImpl$cancel$lambda$1$$inlined$mapSuccess$1
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
                    } else if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    } else {
                        return Observable.empty();
                    }
                }
            }));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            return flatMap;
        }
        throw new IllegalStateException("Incorrect cancel args passed");
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof CancelArgs.Ethereum)) {
            throw new IllegalStateException("Incorrect cancel args passed");
        }
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        byte[] orEmpty = CryptoExtKt.orEmpty(eVMWallet != null ? eVMWallet.getPrivateKeyBytes() : null);
        TransferArgs.EVM transferArgs = ((CancelArgs.Ethereum) args).getTransferArgs();
        EthTransactionSigner ethTransactionSigner = EthTransactionSigner.INSTANCE;
        Ethereum.Transaction createTransferTransactionByType = ethTransactionSigner.createTransferTransactionByType(transferArgs.getConvertedAmount(), transferArgs.getRecipientAddress(), transferArgs.getContractAddress());
        String contractAddress = transferArgs.getContractAddress();
        Observable<Result<String>> just = Observable.just(Result.Companion.success(ethTransactionSigner.sign(transferArgs.getChainId(), transferArgs.getGasPrice(), transferArgs.getGasLimit(), transferArgs.getNonce(), contractAddress == null || contractAddress.length() == 0 ? transferArgs.getRecipientAddress() : transferArgs.getContractAddress(), createTransferTransactionByType, orEmpty)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
