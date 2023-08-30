package com.iMe.p031ui.wallet.cryptobox.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.cryptobox.CryptoBoxItem;
import com.iMe.model.cryptobox.CryptoBoxesChatItem;
import com.iMe.model.cryptobox.CryptoBoxesHeaderItem;
import com.iMe.model.cryptobox.CryptoBoxesListHeaderItem;
import com.iMe.p031ui.adapter.provider.CryptoBoxProvider;
import com.iMe.p031ui.adapter.provider.CryptoBoxesChatProvider;
import com.iMe.p031ui.adapter.provider.CryptoBoxesHeaderProvider;
import com.iMe.p031ui.adapter.provider.CryptoBoxesListHeaderProvider;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3558R;
/* compiled from: CryptoBoxesRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.adapter.CryptoBoxesRecycleAdapter */
/* loaded from: classes4.dex */
public final class CryptoBoxesRecycleAdapter extends BaseNodeAdapter<BaseNode> {
    private final GlobalStateProvider globalStateProvider;

    public final GlobalStateProvider getGlobalStateProvider() {
        return this.globalStateProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoBoxesRecycleAdapter(CryptoBoxesHeaderProvider cryptoBoxesHeaderProvider, CryptoBoxesListHeaderProvider cryptoBoxesListHeaderProvider, CryptoBoxesChatProvider cryptoBoxesChatProvider, CryptoBoxProvider cryptoBoxProvider, GlobalStateProvider globalStateProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(cryptoBoxesHeaderProvider, "cryptoBoxesHeaderProvider");
        Intrinsics.checkNotNullParameter(cryptoBoxesListHeaderProvider, "cryptoBoxesListHeaderProvider");
        Intrinsics.checkNotNullParameter(cryptoBoxesChatProvider, "cryptoBoxesChatProvider");
        Intrinsics.checkNotNullParameter(cryptoBoxProvider, "cryptoBoxProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        this.globalStateProvider = globalStateProvider;
        addChildClickViewIds(C3558R.C3561id.button_new_cryptobox, C3558R.C3561id.image_order);
        addItemProvider(BaseQuickAdapterExtKt.asItem(cryptoBoxesHeaderProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(cryptoBoxesListHeaderProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(cryptoBoxesChatProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(cryptoBoxesChatProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(cryptoBoxProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof CryptoBoxesHeaderItem ? IdFabric$ViewTypes.CRYPTOBOXES_HEADER : baseNode instanceof CryptoBoxesListHeaderItem ? IdFabric$ViewTypes.CRYPTOBOXES_LIST_HEADER : baseNode instanceof CryptoBoxesChatItem ? IdFabric$ViewTypes.CRYPTOBOXES_CHAT : baseNode instanceof CryptoBoxItem ? IdFabric$ViewTypes.CRYPTOBOX : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.CRYPTOBOX;
    }
}
