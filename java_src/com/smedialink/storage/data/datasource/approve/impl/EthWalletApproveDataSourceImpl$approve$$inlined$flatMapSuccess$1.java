package com.smedialink.storage.data.datasource.approve.impl;

import com.smedialink.storage.data.network.api.own.SwapApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.swap.SendCryptoApproveTransactionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.crypto.swap.ApproveArgs;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ TransactionArgs $args$inlined;
    final /* synthetic */ EthWalletApproveDataSourceImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EthWalletApproveDataSourceImpl$approve$$inlined$flatMapSuccess$1(EthWalletApproveDataSourceImpl ethWalletApproveDataSourceImpl, TransactionArgs transactionArgs) {
        super(1);
        this.this$0 = ethWalletApproveDataSourceImpl;
        this.$args$inlined = transactionArgs;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result) {
        SwapApi swapApi;
        FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        swapApi = this.this$0.swapApi;
        String data = result.getData();
        if (data == null) {
            data = "";
        }
        Observable<ApiBaseResponse<TransactionResponse>> sendCryptoApproveTransaction = swapApi.sendCryptoApproveTransaction(new SendCryptoApproveTransactionRequest(data, ((ApproveArgs.Dex) this.$args$inlined).getProtocol().name(), ((ApproveArgs.Dex) this.$args$inlined).getNetworkType().name()));
        firebaseFunctionsErrorHandler = this.this$0.firebaseErrorHandler;
        ObservableSource map = sendCryptoApproveTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1498x90256d3c(firebaseFunctionsErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }
}
