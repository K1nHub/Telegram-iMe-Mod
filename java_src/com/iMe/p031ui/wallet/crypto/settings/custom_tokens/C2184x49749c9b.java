package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.state.GlobalState;
import com.iMe.storage.domain.model.Result;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$loadCustomTokens$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2184x49749c9b extends Lambda implements Function1<Result<? extends List<? extends BaseNode>>, Unit> {
    final /* synthetic */ boolean $isLoadMore$inlined;
    final /* synthetic */ CustomTokensPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2184x49749c9b(CustomTokensPresenter customTokensPresenter, boolean z) {
        super(1);
        this.this$0 = customTokensPresenter;
        this.$isLoadMore$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BaseNode>> result) {
        m1439invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1439invoke(Result<? extends List<? extends BaseNode>> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BaseNode>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.onTokensLoadingSuccess((List) ((Result.Success) result).getData(), this.$isLoadMore$inlined);
        } else if (result instanceof Result.Loading) {
            if (this.$isLoadMore$inlined) {
                return;
            }
            this.this$0.renderState(GlobalState.Progress.INSTANCE);
        } else if (result instanceof Result.Error) {
            this.this$0.renderState(((Result.Error) result).getError().isNoConnectionStatus() ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE);
        }
    }
}
