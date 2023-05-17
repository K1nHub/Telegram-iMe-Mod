package com.iMe.p031ui.wallet.staking.programmes.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.FiltersListItem;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.model.wallet.home.HeaderItemWithRightButton;
import com.iMe.p031ui.adapter.provider.FilterProvider;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.p031ui.adapter.provider.HeaderWithRightButtonProvider;
import com.iMe.p031ui.adapter.provider.StakingProgrammeProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3290R;
/* compiled from: StakingProgrammesRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.staking.programmes.adapter.StakingProgrammesRecycleAdapter */
/* loaded from: classes4.dex */
public final class StakingProgrammesRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    private final FilterProvider filterProvider;
    private final HeaderWithRightButtonProvider headerWithRightButtonProvider;

    public final FilterProvider getFilterProvider() {
        return this.filterProvider;
    }

    public final HeaderWithRightButtonProvider getHeaderWithRightButtonProvider() {
        return this.headerWithRightButtonProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingProgrammesRecycleAdapter(GlobalStateProvider globalStateProvider, StakingProgrammeProvider stakingProgrammeProvider, FilterProvider filterProvider, HeaderWithRightButtonProvider headerWithRightButtonProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        Intrinsics.checkNotNullParameter(stakingProgrammeProvider, "stakingProgrammeProvider");
        Intrinsics.checkNotNullParameter(filterProvider, "filterProvider");
        Intrinsics.checkNotNullParameter(headerWithRightButtonProvider, "headerWithRightButtonProvider");
        this.filterProvider = filterProvider;
        this.headerWithRightButtonProvider = headerWithRightButtonProvider;
        addChildClickViewIds(C3290R.C3293id.image_header_right_button, C3290R.C3293id.image_info);
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(headerWithRightButtonProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(filterProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(stakingProgrammeProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : baseNode instanceof HeaderItemWithRightButton ? IdFabric$ViewTypes.HEADER_ITEM_WITH_RIGHT_BUTTON : baseNode instanceof FiltersListItem ? IdFabric$ViewTypes.FILTERS_LIST : baseNode instanceof StakingProgrammeItem ? IdFabric$ViewTypes.STAKING_PROGRAMME : IdFabric$ViewTypes.STAKING_PROGRAMME;
    }
}
