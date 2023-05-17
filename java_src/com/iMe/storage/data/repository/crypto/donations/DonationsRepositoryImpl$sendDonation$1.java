package com.iMe.storage.data.repository.crypto.donations;

import com.iMe.storage.data.network.api.own.DonationsApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.donations.SendDonationTransactionRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.TransactionResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: DonationsRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class DonationsRepositoryImpl$sendDonation$1 extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ long $chatId;
    final /* synthetic */ DonationsRepositoryImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DonationsRepositoryImpl$sendDonation$1(DonationsRepositoryImpl donationsRepositoryImpl, long j) {
        super(1);
        this.this$0 = donationsRepositoryImpl;
        this.$chatId = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends String> result) {
        return invoke2((Result<String>) result);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<Boolean>> invoke2(Result<String> result) {
        DonationsApi donationsApi;
        FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler;
        Intrinsics.checkNotNullParameter(result, "result");
        donationsApi = this.this$0.donationsApi;
        String valueOf = String.valueOf(this.$chatId);
        String data = result.getData();
        if (data == null) {
            data = "";
        }
        Observable<ApiBaseResponse<TransactionResponse>> sendDonationTransaction = donationsApi.sendDonationTransaction(new SendDonationTransactionRequest(valueOf, data));
        firebaseFunctionsErrorHandler = this.this$0.firebaseErrorHandler;
        ObservableSource map = sendDonationTransaction.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1876x5a6924e9(firebaseFunctionsErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }
}
