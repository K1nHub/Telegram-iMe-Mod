package com.iMe.p031ui.adapter.provider;

import android.view.ViewGroup;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.p031ui.custom.state.GlobalStateLayout;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3419R;
/* compiled from: GlobalStateProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.GlobalStateProvider */
/* loaded from: classes.dex */
public final class GlobalStateProvider extends BaseNodeProvider<GlobalStateItem> {
    private boolean isMatchParentHeight;
    private Function0<Unit> onRetryButtonClickAction = new Function0<Unit>() { // from class: com.iMe.ui.adapter.provider.GlobalStateProvider$onRetryButtonClickAction$1
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }
    };
    private Function0<Unit> onEmptyButtonClickAction = new Function0<Unit>() { // from class: com.iMe.ui.adapter.provider.GlobalStateProvider$onEmptyButtonClickAction$1
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }
    };
    private final int itemViewType = IdFabric$ViewTypes.GLOBAL_STATE;
    private final int layoutId = C3419R.layout.fork_recycle_item_global_state;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (GlobalStateItem) obj, (List<? extends Object>) list);
    }

    public final boolean isMatchParentHeight() {
        return this.isMatchParentHeight;
    }

    public final void setMatchParentHeight(boolean z) {
        this.isMatchParentHeight = z;
    }

    public final Function0<Unit> getOnRetryButtonClickAction() {
        return this.onRetryButtonClickAction;
    }

    public final void setOnRetryButtonClickAction(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onRetryButtonClickAction = function0;
    }

    public final Function0<Unit> getOnEmptyButtonClickAction() {
        return this.onEmptyButtonClickAction;
    }

    public final void setOnEmptyButtonClickAction(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onEmptyButtonClickAction = function0;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, final GlobalStateItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(helper, C3419R.C3422id.global_state_layout, new Function1<GlobalStateLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.GlobalStateProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GlobalStateLayout globalStateLayout) {
                invoke2(globalStateLayout);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(GlobalStateLayout applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                if (GlobalStateProvider.this.isMatchParentHeight()) {
                    ViewGroup.LayoutParams layoutParams = applyForView.getLayoutParams();
                    layoutParams.height = -1;
                    applyForView.setLayoutParams(layoutParams);
                }
                applyForView.setInternalState(item.getState());
                applyForView.setRetryButtonClickListener(GlobalStateProvider.this.getOnRetryButtonClickAction());
                applyForView.setEmptyButtonClickListener(GlobalStateProvider.this.getOnEmptyButtonClickAction());
            }
        });
    }

    public void convert(BaseViewHolder helper, GlobalStateItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        convert(helper, item);
    }
}
