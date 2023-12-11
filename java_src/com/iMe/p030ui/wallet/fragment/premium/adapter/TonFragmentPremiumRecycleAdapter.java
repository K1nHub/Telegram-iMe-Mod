package com.iMe.p030ui.wallet.fragment.premium.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.p030ui.adapter.provider.GlobalStateProvider;
import com.iMe.p030ui.adapter.provider.TonFragmentPremiumProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentPremiumRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.fragment.premium.adapter.TonFragmentPremiumRecycleAdapter */
/* loaded from: classes.dex */
public final class TonFragmentPremiumRecycleAdapter extends BaseNodeAdapter<BaseNode> {
    private final GlobalStateProvider globalStateProvider;

    public final GlobalStateProvider getGlobalStateProvider() {
        return this.globalStateProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TonFragmentPremiumRecycleAdapter(TonFragmentPremiumProvider tonFragmentPremiumProvider, GlobalStateProvider globalStateProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(tonFragmentPremiumProvider, "tonFragmentPremiumProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        this.globalStateProvider = globalStateProvider;
        addItemProvider(BaseQuickAdapterExtKt.asItem(tonFragmentPremiumProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof TonFragmentItem.C1535Premium ? IdFabric$ViewTypes.TON_FRAGMENT_PREMIUM : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.TON_FRAGMENT_PREMIUM;
    }
}
