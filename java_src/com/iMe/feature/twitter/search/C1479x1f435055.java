package com.iMe.feature.twitter.search;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.state.GlobalState;
import com.iMe.storage.domain.model.Result;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.feature.twitter.search.TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1479x1f435055 extends Lambda implements Function1<Result<? extends List<? extends BaseNode>>, Unit> {
    final /* synthetic */ boolean $isLoadMore$inlined;
    final /* synthetic */ boolean $isReload$inlined;
    final /* synthetic */ TwitterSearchPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1479x1f435055(TwitterSearchPresenter twitterSearchPresenter, boolean z, boolean z2) {
        super(1);
        this.this$0 = twitterSearchPresenter;
        this.$isLoadMore$inlined = z;
        this.$isReload$inlined = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BaseNode>> result) {
        m1185invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1185invoke(Result<? extends List<? extends BaseNode>> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends BaseNode>> result = it;
        if (result instanceof Result.Success) {
            this.this$0.onSearchSuccess((List) ((Result.Success) result).getData(), this.$isLoadMore$inlined, this.$isReload$inlined);
        } else if (result instanceof Result.Loading) {
            if (this.$isReload$inlined) {
                this.this$0.renderGlobalState(GlobalState.Progress.INSTANCE);
            }
        } else if (result instanceof Result.Error) {
            if (this.$isLoadMore$inlined) {
                ((TwitterSearchView) this.this$0.getViewState()).onLoadMoreError();
            } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                this.this$0.renderGlobalState(GlobalState.NoInternet.INSTANCE);
            } else {
                this.this$0.renderGlobalState(GlobalState.Unexpected.INSTANCE);
            }
        }
    }
}
