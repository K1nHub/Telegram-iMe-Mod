package com.iMe.p032ui.adapter.provider;

import android.view.ViewGroup;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.p032ui.custom.state.GlobalStateLayout;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GlobalStateProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.GlobalStateProvider$convert$1 */
/* loaded from: classes.dex */
public final class GlobalStateProvider$convert$1 extends Lambda implements Function1<GlobalStateLayout, Unit> {
    final /* synthetic */ GlobalStateItem $item;
    final /* synthetic */ GlobalStateProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlobalStateProvider$convert$1(GlobalStateProvider globalStateProvider, GlobalStateItem globalStateItem) {
        super(1);
        this.this$0 = globalStateProvider;
        this.$item = globalStateItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(GlobalStateLayout globalStateLayout) {
        invoke2(globalStateLayout);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(GlobalStateLayout applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        if (this.this$0.isMatchParentHeight()) {
            ViewGroup.LayoutParams layoutParams = applyForView.getLayoutParams();
            layoutParams.height = -1;
            applyForView.setLayoutParams(layoutParams);
        }
        applyForView.setInternalState(this.$item.getState());
        applyForView.setRetryButtonClickListener(this.this$0.getOnRetryButtonClickAction());
    }
}
