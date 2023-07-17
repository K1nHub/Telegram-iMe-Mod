package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.token.TokenListsData;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$loadTokenInfo$lambda$6$lambda$5$$inlined$mapSuccess$1 */
/* loaded from: classes4.dex */
public final class C2211x7acb5835 extends Lambda implements Function1<Result<? extends TokenListsData>, Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>> {
    final /* synthetic */ Result $tokenInfoResult$inlined;
    final /* synthetic */ TokenManagementPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2211x7acb5835(TokenManagementPresenter tokenManagementPresenter, Result result) {
        super(1);
        this.this$0 = tokenManagementPresenter;
        this.$tokenInfoResult$inlined = result;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> invoke(Result<? extends TokenListsData> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        this.this$0.tokenListsData = (TokenListsData) result.getData();
        return this.$tokenInfoResult$inlined;
    }
}
