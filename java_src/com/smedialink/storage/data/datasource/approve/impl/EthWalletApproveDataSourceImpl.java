package com.smedialink.storage.data.datasource.approve.impl;

import com.smedialink.storage.data.datasource.approve.WalletApproveDataSource;
import com.smedialink.storage.data.network.api.own.SwapApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.swap.SendCryptoApproveTransactionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.smedialink.storage.data.utils.extentions.Web3jExtKt;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.crypto.swap.ApproveArgs;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.math.BigInteger;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.abi.datatypes.Address;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.datatypes.generated.Uint256;
import org.web3j.crypto.RawTransaction;
import org.web3j.crypto.TransactionEncoder;
import org.web3j.utils.Numeric;
/* compiled from: EthWalletApproveDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class EthWalletApproveDataSourceImpl implements WalletApproveDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final SwapApi swapApi;

    static {
        new Companion(null);
    }

    public EthWalletApproveDataSourceImpl(SwapApi swapApi, CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler) {
        Intrinsics.checkNotNullParameter(swapApi, "swapApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        this.swapApi = swapApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
    }

    @Override // com.smedialink.storage.data.datasource.approve.WalletApproveDataSource
    public Observable<Result<String>> approve(final TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (args instanceof ApproveArgs.Dex) {
            Observable flatMap = sign(args).flatMap(new Function() { // from class: com.smedialink.storage.data.datasource.approve.impl.EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1
                /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
                @Override // io.reactivex.functions.Function
                public final ObservableSource apply(Result result) {
                    SwapApi swapApi;
                    final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (!(result instanceof Result.Success)) {
                        return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                    }
                    swapApi = EthWalletApproveDataSourceImpl.this.swapApi;
                    String str = (String) result.getData();
                    if (str == null) {
                        str = "";
                    }
                    Observable<ApiBaseResponse<TransactionResponse>> sendCryptoApproveTransaction = swapApi.sendCryptoApproveTransaction(new SendCryptoApproveTransactionRequest(str, ((ApproveArgs.Dex) args).getProtocol().name(), ((ApproveArgs.Dex) args).getNetworkType().name()));
                    firebaseFunctionsErrorHandler = EthWalletApproveDataSourceImpl.this.firebaseErrorHandler;
                    Observable<R> map = sendCryptoApproveTransaction.map(new Function() { // from class: com.smedialink.storage.data.datasource.approve.impl.EthWalletApproveDataSourceImpl$approve$lambda-1$$inlined$mapSuccess$1
                        /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
                        @Override // io.reactivex.functions.Function
                        public final Result apply(ApiBaseResponse response) {
                            Intrinsics.checkNotNullParameter(response, "response");
                            if (!response.isSuccess()) {
                                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                            }
                            return Result.Companion.success(((TransactionResponse) response.getPayload()).getTransactionHash());
                        }
                    });
                    Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
                    return map;
                }
            });
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            return flatMap;
        }
        throw new IllegalStateException("Incorrect approve args passed");
    }

    @Override // com.smedialink.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof ApproveArgs.Dex)) {
            throw new IllegalStateException("Incorrect approve args passed");
        }
        ApproveArgs.Dex dex = (ApproveArgs.Dex) args;
        RawTransaction createTransactionByType = createTransactionByType(dex);
        long chainId = dex.getChainId();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        Observable<Result<String>> just = Observable.just(Result.Companion.success(Numeric.toHexString(TransactionEncoder.signMessage(createTransactionByType, chainId, eVMWallet == null ? null : eVMWallet.getCredentials()))));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final RawTransaction createTransactionByType(ApproveArgs.Dex dex) {
        RawTransaction createTransaction = RawTransaction.createTransaction(dex.getNonce(), dex.getGasPrice(), dex.getGasLimit(), dex.getTokenContractAddress(), BigInteger.ZERO, createSmartFunctionParams(dex.getExchangeContractAddress(), dex.getValue()));
        Intrinsics.checkNotNullExpressionValue(createTransaction, "createTransaction(\n     …ss, args.value)\n        )");
        return createTransaction;
    }

    private final String createSmartFunctionParams(String str, BigInteger bigInteger) {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Type[]{new Address(str), new Uint256(bigInteger)});
        return Web3jExtKt.createSmartFunctionDataFor$default("approve", listOf, null, 4, null);
    }

    /* compiled from: EthWalletApproveDataSourceImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
