package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$loadTokenInfo$lambda$6$$inlined$flatMapSuccess$1 */
/* loaded from: classes4.dex */
public final class C2210xeb1f167a extends Lambda implements Function1<Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>, ObservableSource<? extends Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>>> {
    final /* synthetic */ TokenManagementPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2210xeb1f167a(TokenManagementPresenter tokenManagementPresenter) {
        super(1);
        this.this$0 = tokenManagementPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>> invoke(Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> result) {
        WalletInteractor walletInteractor;
        Token token;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        walletInteractor = this.this$0.walletInteractor;
        token = this.this$0.getToken();
        ObservableSource map = walletInteractor.getTokenListsData(token).map(new C2214x8acd2b70(new C2211x7acb5835(this.this$0, result)));
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }
}
