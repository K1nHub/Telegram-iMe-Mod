package com.iMe.p031ui.wallet.home.tabs.crypto.settings.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.p031ui.adapter.provider.FoundTokenProvider;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FoundTokensRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.adapter.FoundTokensRecycleAdapter */
/* loaded from: classes6.dex */
public final class FoundTokensRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    private final FoundTokenProvider foundTokenProvider;
    private final GlobalStateProvider globalStateProvider;

    public final FoundTokenProvider getFoundTokenProvider() {
        return this.foundTokenProvider;
    }

    public final GlobalStateProvider getGlobalStateProvider() {
        return this.globalStateProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FoundTokensRecycleAdapter(FoundTokenProvider foundTokenProvider, GlobalStateProvider globalStateProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(foundTokenProvider, "foundTokenProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        this.foundTokenProvider = foundTokenProvider;
        this.globalStateProvider = globalStateProvider;
        addItemProvider(BaseQuickAdapterExtKt.asItem(foundTokenProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof FoundTokenItem ? IdFabric$ViewTypes.TOKEN : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.TOKEN;
    }
}
