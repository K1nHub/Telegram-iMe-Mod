package com.iMe.storage.data.datasource.approve.impl;

import com.iMe.storage.data.datasource.approve.WalletApproveDataSource;
import com.iMe.storage.data.network.api.own.SwapApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.swap.SendCryptoApproveTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.swap.ApproveArgs;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: EthWalletApproveDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class EthWalletApproveDataSourceImpl implements WalletApproveDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final SwapApi swapApi;

    public EthWalletApproveDataSourceImpl(SwapApi swapApi, CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(swapApi, "swapApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.swapApi = swapApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.iMe.storage.data.datasource.approve.WalletApproveDataSource
    public Observable<Result<String>> approve(final TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args instanceof ApproveArgs.Dex) {
            Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.data.datasource.approve.impl.EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result) {
                    SwapApi swapApi;
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
                    swapApi = EthWalletApproveDataSourceImpl.this.swapApi;
                    String data = result.getData();
                    if (data == null) {
                        data = "";
                    }
                    Observable<ApiBaseResponse<TransactionResponse>> sendCryptoApproveTransaction = swapApi.sendCryptoApproveTransaction(new SendCryptoApproveTransactionRequest(data, ((ApproveArgs.Dex) args).getProtocol().name(), ((ApproveArgs.Dex) args).getNetworkId()));
                    firebaseFunctionsErrorHandler = EthWalletApproveDataSourceImpl.this.firebaseErrorHandler;
                    ObservableSource map = sendCryptoApproveTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TransactionResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.datasource.approve.impl.EthWalletApproveDataSourceImpl$approve$lambda$1$$inlined$mapSuccess$1
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
        throw new IllegalStateException("Incorrect approve args passed");
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof ApproveArgs.Dex)) {
            throw new IllegalStateException("Incorrect approve args passed");
        }
        ApproveArgs.Dex dex = (ApproveArgs.Dex) args;
        Ethereum.Transaction createTransaction = createTransaction(dex);
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        if (eVMWallet == null || (bArr = eVMWallet.getPrivateKeyBytes()) == null) {
            bArr = new byte[0];
        }
        Observable<Result<String>> just = Observable.just(Result.Companion.success(EthTransactionSigner.INSTANCE.sign(dex.getChainId(), dex.getGasPrice(), dex.getGasLimit(), dex.getNonce(), dex.getTokenContractAddress(), createTransaction, bArr)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final Ethereum.Transaction createTransaction(ApproveArgs.Dex dex) {
        Ethereum.Transaction build = Ethereum.Transaction.newBuilder().setErc20Approve(Ethereum.Transaction.ERC20Approve.newBuilder().setSpender(dex.getExchangeContractAddress()).setAmount(CryptoExtKt.toByteString(dex.getValue())).build()).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n           …                 .build()");
        return build;
    }
}
