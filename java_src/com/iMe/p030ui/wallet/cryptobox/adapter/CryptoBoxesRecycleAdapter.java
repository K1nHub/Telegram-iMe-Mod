package com.iMe.p030ui.wallet.cryptobox.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.cryptobox.AnimatedHeaderItem;
import com.iMe.model.cryptobox.CryptoBoxItem;
import com.iMe.model.cryptobox.CryptoBoxesChatItem;
import com.iMe.model.cryptobox.SortingListHeaderItem;
import com.iMe.p030ui.adapter.provider.AnimatedHeaderProvider;
import com.iMe.p030ui.adapter.provider.CryptoBoxProvider;
import com.iMe.p030ui.adapter.provider.CryptoBoxesChatProvider;
import com.iMe.p030ui.adapter.provider.GlobalStateProvider;
import com.iMe.p030ui.adapter.provider.SortingListHeaderProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
/* compiled from: CryptoBoxesRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.adapter.CryptoBoxesRecycleAdapter */
/* loaded from: classes.dex */
public final class CryptoBoxesRecycleAdapter extends BaseNodeAdapter<BaseNode> {
    private final GlobalStateProvider globalStateProvider;

    public final GlobalStateProvider getGlobalStateProvider() {
        return this.globalStateProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoBoxesRecycleAdapter(AnimatedHeaderProvider animatedHeaderProvider, SortingListHeaderProvider sortingListHeaderProvider, CryptoBoxesChatProvider cryptoBoxesChatProvider, CryptoBoxProvider cryptoBoxProvider, GlobalStateProvider globalStateProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(animatedHeaderProvider, "animatedHeaderProvider");
        Intrinsics.checkNotNullParameter(sortingListHeaderProvider, "sortingListHeaderProvider");
        Intrinsics.checkNotNullParameter(cryptoBoxesChatProvider, "cryptoBoxesChatProvider");
        Intrinsics.checkNotNullParameter(cryptoBoxProvider, "cryptoBoxProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        this.globalStateProvider = globalStateProvider;
        addChildClickViewIds(C3632R.C3635id.button_action, C3632R.C3635id.image_order);
        addItemProvider(BaseQuickAdapterExtKt.asItem(animatedHeaderProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(sortingListHeaderProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(cryptoBoxesChatProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(cryptoBoxesChatProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(cryptoBoxProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof AnimatedHeaderItem ? IdFabric$ViewTypes.ANIMATED_HEADER : baseNode instanceof SortingListHeaderItem ? IdFabric$ViewTypes.SORTING_LIST_HEADER : baseNode instanceof CryptoBoxesChatItem ? IdFabric$ViewTypes.CRYPTOBOXES_CHAT : baseNode instanceof CryptoBoxItem ? IdFabric$ViewTypes.CRYPTOBOX : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.CRYPTOBOX;
    }
}
