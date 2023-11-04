package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.staking.StakingDashboardItem;
import com.iMe.p030ui.custom.StakingDashboardView;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
/* compiled from: StakingDashboardProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingDashboardProvider */
/* loaded from: classes3.dex */
public final class StakingDashboardProvider extends BaseNodeProvider<StakingDashboardItem> {
    private final int itemViewType = IdFabric$ViewTypes.STAKING_DASHBOARD;
    private final int layoutId = C3634R.layout.fork_recycle_item_staking_dashboard;
    private Callbacks$Callback onCalculatorClick = new Callbacks$Callback() { // from class: com.iMe.ui.adapter.provider.StakingDashboardProvider$$ExternalSyntheticLambda0
        @Override // com.iMe.fork.utils.Callbacks$Callback
        public final void invoke() {
            StakingDashboardProvider.onCalculatorClick$lambda$0();
        }
    };
    private Callbacks$Callback onHistoryClick = new Callbacks$Callback() { // from class: com.iMe.ui.adapter.provider.StakingDashboardProvider$$ExternalSyntheticLambda1
        @Override // com.iMe.fork.utils.Callbacks$Callback
        public final void invoke() {
            StakingDashboardProvider.onHistoryClick$lambda$1();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCalculatorClick$lambda$0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onHistoryClick$lambda$1() {
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (StakingDashboardItem) obj, (List<? extends Object>) list);
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
    public void convert(BaseViewHolder helper, final StakingDashboardItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(helper, C3634R.C3637id.view_staking_dashboard, new Function1<StakingDashboardView, Unit>() { // from class: com.iMe.ui.adapter.provider.StakingDashboardProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(StakingDashboardView stakingDashboardView) {
                invoke2(stakingDashboardView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(StakingDashboardView applyForView) {
                Callbacks$Callback callbacks$Callback;
                Callbacks$Callback callbacks$Callback2;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setupItem(StakingDashboardItem.this);
                callbacks$Callback = this.onCalculatorClick;
                callbacks$Callback2 = this.onHistoryClick;
                applyForView.setupListeners(callbacks$Callback, callbacks$Callback2);
            }
        });
    }

    public void convert(BaseViewHolder helper, final StakingDashboardItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(helper, C3634R.C3637id.view_staking_dashboard, new Function1<StakingDashboardView, Unit>() { // from class: com.iMe.ui.adapter.provider.StakingDashboardProvider$convert$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(StakingDashboardView stakingDashboardView) {
                invoke2(stakingDashboardView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(StakingDashboardView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setupItem(StakingDashboardItem.this);
            }
        });
    }
}
