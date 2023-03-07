package com.smedialink.p031ui.wallet.staking.programmes.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.common.FiltersListItem;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.staking.StakingProgrammeItem;
import com.smedialink.model.wallet.home.HeaderItemWithRightButton;
import com.smedialink.p031ui.adapter.provider.FilterProvider;
import com.smedialink.p031ui.adapter.provider.GlobalStateProvider;
import com.smedialink.p031ui.adapter.provider.HeaderWithRightButtonProvider;
import com.smedialink.p031ui.adapter.provider.StakingProgrammeProvider;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: StakingProgrammesRecycleAdapter.kt */
/* renamed from: com.smedialink.ui.wallet.staking.programmes.adapter.StakingProgrammesRecycleAdapter */
/* loaded from: classes3.dex */
public final class StakingProgrammesRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    private final FilterProvider filterProvider;

    public final FilterProvider getFilterProvider() {
        return this.filterProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingProgrammesRecycleAdapter(GlobalStateProvider globalStateProvider, HeaderWithRightButtonProvider headerWithRightButtonProvider, StakingProgrammeProvider stakingProgrammeProvider, FilterProvider filterProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        Intrinsics.checkNotNullParameter(headerWithRightButtonProvider, "headerWithRightButtonProvider");
        Intrinsics.checkNotNullParameter(stakingProgrammeProvider, "stakingProgrammeProvider");
        Intrinsics.checkNotNullParameter(filterProvider, "filterProvider");
        this.filterProvider = filterProvider;
        addChildClickViewIds(C3158R.C3161id.image_header_right_button, C3158R.C3161id.image_staking_filters_info);
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(headerWithRightButtonProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(filterProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(stakingProgrammeProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : baseNode instanceof HeaderItemWithRightButton ? IdFabric$ViewTypes.HEADER_WITH_RIGHT_BUTTON : baseNode instanceof FiltersListItem ? IdFabric$ViewTypes.FILTERS_LIST : baseNode instanceof StakingProgrammeItem ? IdFabric$ViewTypes.STAKING_PROGRAMME : IdFabric$ViewTypes.STAKING_PROGRAMME;
    }
}
