package com.smedialink.storage.data.datasource.wallet_connect.impl;

import com.smedialink.storage.data.network.api.own.WalletConnectApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.wallet.SendCryptoTransferTransactionRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.data.datasource.wallet_connect.impl.WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1501x2f0ca7ae extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ WalletConnectDataSourceImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1501x2f0ca7ae(WalletConnectDataSourceImpl walletConnectDataSourceImpl) {
        super(1);
        this.this$0 = walletConnectDataSourceImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends String> result) {
        WalletConnectApi walletConnectApi;
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
        walletConnectApi = this.this$0.walletConnectApi;
        String data = result.getData();
        if (data == null) {
            data = "";
        }
        Observable<ApiBaseResponse<TransactionResponse>> sendWalletConnectCryptoTransaction = walletConnectApi.sendWalletConnectCryptoTransaction(new SendCryptoTransferTransactionRequest(data));
        firebaseFunctionsErrorHandler = this.this$0.firebaseErrorHandler;
        ObservableSource map = sendWalletConnectCryptoTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1502x41a6027d(firebaseFunctionsErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }
}
