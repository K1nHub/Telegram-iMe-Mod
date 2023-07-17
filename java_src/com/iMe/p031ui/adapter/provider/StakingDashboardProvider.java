package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.staking.StakingDashboardItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
/* compiled from: StakingDashboardProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.StakingDashboardProvider */
/* loaded from: classes.dex */
public final class StakingDashboardProvider extends BaseNodeProvider<StakingDashboardItem> {
    private final int itemViewType = IdFabric$ViewTypes.STAKING_DASHBOARD;
    private final int layoutId = C3417R.layout.fork_recycle_item_staking_dashboard;
    private Callbacks$Callback onCalculatorClick = StakingDashboardProvider$$ExternalSyntheticLambda0.INSTANCE;
    private Callbacks$Callback onHistoryClick = StakingDashboardProvider$$ExternalSyntheticLambda1.INSTANCE;

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
    public void convert(BaseViewHolder helper, StakingDashboardItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(helper, C3417R.C3420id.view_staking_dashboard, new StakingDashboardProvider$convert$1(item, this));
    }

    public void convert(BaseViewHolder helper, StakingDashboardItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(helper, C3417R.C3420id.view_staking_dashboard, new StakingDashboardProvider$convert$2(item));
    }
}
