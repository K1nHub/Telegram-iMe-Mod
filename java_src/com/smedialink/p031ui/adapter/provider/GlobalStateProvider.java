package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: GlobalStateProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.GlobalStateProvider */
/* loaded from: classes3.dex */
public final class GlobalStateProvider extends BaseNodeProvider<GlobalStateItem> {
    private boolean isMatchParentHeight;
    private Function0<Unit> onRetryButtonClickAction = GlobalStateProvider$onRetryButtonClickAction$1.INSTANCE;
    private final int itemViewType = IdFabric$ViewTypes.GLOBAL_STATE;
    private final int layoutId = C3158R.layout.fork_recycle_item_global_state;

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

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, GlobalStateItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(helper, C3158R.C3161id.global_state_layout, new GlobalStateProvider$convert$1(this, item));
    }

    public void convert(BaseViewHolder helper, GlobalStateItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        convert(helper, item);
    }
}
