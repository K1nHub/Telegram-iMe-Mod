package com.smedialink.p031ui.wallet.swap.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.model.wallet.swap.CexProtocolItem;
import com.smedialink.model.wallet.swap.DexProtocolItem;
import com.smedialink.p031ui.adapter.provider.CexProtocolProvider;
import com.smedialink.p031ui.adapter.provider.DexProtocolProvider;
import com.smedialink.p031ui.adapter.provider.HeaderProvider;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletSwapProtocolsRecycleAdapter.kt */
/* renamed from: com.smedialink.ui.wallet.swap.adapter.WalletSwapProtocolsRecycleAdapter */
/* loaded from: classes3.dex */
public final class WalletSwapProtocolsRecycleAdapter extends BaseNodeAdapter<BaseNode> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProtocolsRecycleAdapter(CexProtocolProvider cexProtocolProvider, DexProtocolProvider dexProtocolProvider, HeaderProvider headerProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(cexProtocolProvider, "cexProtocolProvider");
        Intrinsics.checkNotNullParameter(dexProtocolProvider, "dexProtocolProvider");
        Intrinsics.checkNotNullParameter(headerProvider, "headerProvider");
        addItemProvider(BaseQuickAdapterExtKt.asItem(headerProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(dexProtocolProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(cexProtocolProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof DexProtocolItem ? IdFabric$ViewTypes.SWAP_PROTOCOL : baseNode instanceof CexProtocolItem ? IdFabric$ViewTypes.CENTRALIZED_EXCHANGES : baseNode instanceof HeaderItem ? IdFabric$ViewTypes.HEADER : IdFabric$ViewTypes.SWAP_PROTOCOL;
    }
}
