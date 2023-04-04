package com.iMe.storage.data.datasource.transfer.impl;

import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.wallet.SendCryptoTransferTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.data.datasource.transfer.impl.TRONWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1562xb62448cf extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ TRONWalletTransferDataSourceImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1562xb62448cf(TRONWalletTransferDataSourceImpl tRONWalletTransferDataSourceImpl) {
        super(1);
        this.this$0 = tRONWalletTransferDataSourceImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends String> result) {
        CryptoWalletApi cryptoWalletApi;
        FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        cryptoWalletApi = this.this$0.cryptoWalletApi;
        String data = result.getData();
        if (data == null) {
            data = "";
        }
        Observable<ApiBaseResponse<TransactionResponse>> sendCryptoTransferTransaction = cryptoWalletApi.sendCryptoTransferTransaction(new SendCryptoTransferTransactionRequest(data));
        firebaseFunctionsErrorHandler = this.this$0.firebaseErrorHandler;
        ObservableSource map = sendCryptoTransferTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1563xcfac873d(firebaseFunctionsErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }
}
