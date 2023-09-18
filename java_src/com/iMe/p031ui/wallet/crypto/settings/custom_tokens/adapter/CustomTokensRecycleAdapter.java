package com.iMe.p031ui.wallet.crypto.settings.custom_tokens.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.p031ui.adapter.provider.CustomTokenProvider;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CustomTokensRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.adapter.CustomTokensRecycleAdapter */
/* loaded from: classes6.dex */
public final class CustomTokensRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    private final GlobalStateProvider globalStateProvider;

    public final GlobalStateProvider getGlobalStateProvider() {
        return this.globalStateProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTokensRecycleAdapter(CustomTokenProvider customTokenProvider, GlobalStateProvider globalStateProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(customTokenProvider, "customTokenProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        this.globalStateProvider = globalStateProvider;
        addItemProvider(BaseQuickAdapterExtKt.asItem(customTokenProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof TokenItem ? IdFabric$ViewTypes.TOKEN : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.TOKEN;
    }
}
