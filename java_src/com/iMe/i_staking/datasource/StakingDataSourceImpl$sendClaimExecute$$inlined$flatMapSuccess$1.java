package com.iMe.i_staking.datasource;

import com.iMe.i_staking.StakingApi;
import com.iMe.i_staking.request.StakingTokenActionExecuteRequest;
import com.iMe.i_staking.response.StakingOperationResponse;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.staking.StakingOperation;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class StakingDataSourceImpl$sendClaimExecute$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends String>, ObservableSource<? extends Result<? extends StakingOperation>>> {
    final /* synthetic */ String $wrappedAction$inlined;
    final /* synthetic */ StakingDataSourceImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingDataSourceImpl$sendClaimExecute$$inlined$flatMapSuccess$1(StakingDataSourceImpl stakingDataSourceImpl, String str) {
        super(1);
        this.this$0 = stakingDataSourceImpl;
        this.$wrappedAction$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends StakingOperation>> invoke(Result<? extends String> result) {
        StakingApi stakingApi;
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
        stakingApi = this.this$0.stakingApi;
        String str = this.$wrappedAction$inlined;
        String data = result.getData();
        if (data == null) {
            data = "";
        }
        Observable<ApiBaseResponse<StakingOperationResponse>> sendClaimExecute = stakingApi.sendClaimExecute(new StakingTokenActionExecuteRequest(str, data));
        firebaseFunctionsErrorHandler = this.this$0.firebaseErrorHandler;
        ObservableSource map = sendClaimExecute.map(new C1236xdf81e200(new C1231xc11af0c0(firebaseFunctionsErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }
}
