package com.smedialink.p031ui.wallet.staking.calculator.programmes.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.staking.StakingProgrammeItem;
import com.smedialink.p031ui.adapter.provider.GlobalStateProvider;
import com.smedialink.p031ui.adapter.provider.StakingCalculatorProgrammeProvider;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: StakingCalculatorProgrammesRecycleAdapter.kt */
/* renamed from: com.smedialink.ui.wallet.staking.calculator.programmes.adapter.StakingCalculatorProgrammesRecycleAdapter */
/* loaded from: classes3.dex */
public final class StakingCalculatorProgrammesRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingCalculatorProgrammesRecycleAdapter(GlobalStateProvider globalStateProvider, StakingCalculatorProgrammeProvider stakingProgrammeProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        Intrinsics.checkNotNullParameter(stakingProgrammeProvider, "stakingProgrammeProvider");
        addChildClickViewIds(C3286R.C3289id.image_info);
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(stakingProgrammeProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : baseNode instanceof StakingProgrammeItem ? IdFabric$ViewTypes.STAKING_PROGRAMME : IdFabric$ViewTypes.STAKING_PROGRAMME;
    }
}
