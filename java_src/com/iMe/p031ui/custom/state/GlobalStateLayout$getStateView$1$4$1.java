package com.iMe.p031ui.custom.state;

import android.view.View;
import com.iMe.model.state.GlobalState;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: GlobalStateLayout.kt */
/* renamed from: com.iMe.ui.custom.state.GlobalStateLayout$getStateView$1$4$1 */
/* loaded from: classes3.dex */
final class GlobalStateLayout$getStateView$1$4$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ GlobalState $state;
    final /* synthetic */ GlobalStateLayout this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlobalStateLayout$getStateView$1$4$1(GlobalState globalState, GlobalStateLayout globalStateLayout) {
        super(1);
        this.$state = globalState;
        this.this$0 = globalStateLayout;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        GlobalState globalState = this.$state;
        if (Intrinsics.areEqual(globalState, GlobalState.Empty.TokenSearchResult.INSTANCE) ? true : Intrinsics.areEqual(globalState, GlobalState.Empty.CustomTokens.INSTANCE)) {
            this.this$0.getEmptyButtonClickListener().invoke();
            return;
        }
        if (Intrinsics.areEqual(globalState, GlobalState.NoInternet.INSTANCE) ? true : Intrinsics.areEqual(globalState, GlobalState.Unexpected.INSTANCE)) {
            this.this$0.getRetryButtonClickListener().invoke();
        }
    }
}
