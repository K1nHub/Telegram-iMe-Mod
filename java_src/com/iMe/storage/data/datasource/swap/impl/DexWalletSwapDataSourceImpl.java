package com.iMe.storage.data.datasource.swap.impl;

import com.google.protobuf.ByteString;
import com.iMe.storage.data.datasource.swap.WalletSwapDataSource;
import com.iMe.storage.data.network.api.own.SwapApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.network.model.request.crypto.swap.SendCryptoSwapTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import com.iMe.storage.domain.model.wallet.swap.SwapMethod;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.math.BigInteger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: DexWalletSwapDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class DexWalletSwapDataSourceImpl implements WalletSwapDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final SwapApi swapApi;

    /* compiled from: DexWalletSwapDataSourceImpl.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SwapMethod.values().length];
            try {
                iArr[SwapMethod.EXACT_ETH_FOR_TOKENS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DexWalletSwapDataSourceImpl(SwapApi swapApi, CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(swapApi, "swapApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.swapApi = swapApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.iMe.storage.data.datasource.swap.WalletSwapDataSource
    public Observable<Result<String>> swap(final TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args instanceof SwapArgs.Dex) {
            Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.data.datasource.swap.impl.DexWalletSwapDataSourceImpl$swap$$inlined$flatMapSuccess$1
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
                    swapApi = DexWalletSwapDataSourceImpl.this.swapApi;
                    SwapArgs.Dex dex = (SwapArgs.Dex) args;
                    String data = result.getData();
                    if (data == null) {
                        data = "";
                    }
                    Observable<ApiBaseResponse<TransactionResponse>> sendCryptoSwapTransaction = swapApi.sendCryptoSwapTransaction(new SendCryptoSwapTransactionRequest(data, dex.getQuoteId(), dex.getSwapProtocol().name(), dex.getNetworkId(), dex.getOutputNetworkId()));
                    firebaseFunctionsErrorHandler = DexWalletSwapDataSourceImpl.this.firebaseErrorHandler;
                    ObservableSource map = sendCryptoSwapTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<TransactionResponse>, Result<? extends String>>() { // from class: com.iMe.storage.data.datasource.swap.impl.DexWalletSwapDataSourceImpl$swap$lambda$2$$inlined$mapSuccess$1
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
        throw new IllegalStateException("Incorrect swap args passed");
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        BigInteger value;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof SwapArgs.Dex)) {
            throw new IllegalStateException("Incorrect swap args passed");
        }
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        if (eVMWallet == null) {
            Observable<Result<String>> just = Observable.just(Result.Companion.error$default(Result.Companion, new ErrorModel((IErrorStatus) null, (Throwable) null, 3, (DefaultConstructorMarker) null), null, 2, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        byte[] privateKeyBytes = eVMWallet.getPrivateKeyBytes();
        SwapArgs.Dex dex = (SwapArgs.Dex) args;
        ByteString createSmartFunctionParams = dex.getSwapMethod().createSmartFunctionParams(dex, eVMWallet.getAddress());
        Ethereum.Transaction.Builder newBuilder = Ethereum.Transaction.newBuilder();
        Ethereum.Transaction.ContractGeneric.Builder data = Ethereum.Transaction.ContractGeneric.newBuilder().setData(createSmartFunctionParams);
        if (WhenMappings.$EnumSwitchMapping$0[dex.getSwapMethod().ordinal()] == 1) {
            value = dex.getConvertedAmount();
        } else {
            value = dex.getValue();
        }
        Ethereum.Transaction transaction = newBuilder.setContractGeneric(data.setAmount(CryptoExtKt.toByteString(value)).build()).build();
        EthTransactionSigner ethTransactionSigner = EthTransactionSigner.INSTANCE;
        long chainId = dex.getChainId();
        BigInteger gasPrice = dex.getGasPrice();
        BigInteger gasLimit = dex.getGasLimit();
        BigInteger nonce = dex.getNonce();
        String contractAddress = dex.getContractAddress();
        Intrinsics.checkNotNullExpressionValue(transaction, "transaction");
        Observable<Result<String>> just2 = Observable.just(Result.Companion.success(ethTransactionSigner.sign(chainId, gasPrice, gasLimit, nonce, contractAddress, transaction, privateKeyBytes)));
        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
        return just2;
    }
}
