package com.iMe.p030ui.wallet.fragment.usernames.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.cryptobox.AnimatedHeaderItem;
import com.iMe.model.cryptobox.SortingListHeaderItem;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.p030ui.adapter.provider.AnimatedHeaderProvider;
import com.iMe.p030ui.adapter.provider.GlobalStateProvider;
import com.iMe.p030ui.adapter.provider.SortingListHeaderProvider;
import com.iMe.p030ui.adapter.provider.TonFragmentProductProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
/* compiled from: TonFragmentProductsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.fragment.usernames.adapter.TonFragmentProductsRecycleAdapter */
/* loaded from: classes.dex */
public final class TonFragmentProductsRecycleAdapter extends BaseNodeAdapter<BaseNode> {
    private final GlobalStateProvider globalStateProvider;

    public final GlobalStateProvider getGlobalStateProvider() {
        return this.globalStateProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TonFragmentProductsRecycleAdapter(AnimatedHeaderProvider animatedHeaderProvider, SortingListHeaderProvider sortingListHeaderProvider, TonFragmentProductProvider tonFragmentProductProvider, GlobalStateProvider globalStateProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(animatedHeaderProvider, "animatedHeaderProvider");
        Intrinsics.checkNotNullParameter(sortingListHeaderProvider, "sortingListHeaderProvider");
        Intrinsics.checkNotNullParameter(tonFragmentProductProvider, "tonFragmentProductProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        this.globalStateProvider = globalStateProvider;
        addChildClickViewIds(C3634R.C3637id.image_order);
        addItemProvider(BaseQuickAdapterExtKt.asItem(animatedHeaderProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(sortingListHeaderProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(tonFragmentProductProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof AnimatedHeaderItem ? IdFabric$ViewTypes.ANIMATED_HEADER : baseNode instanceof SortingListHeaderItem ? IdFabric$ViewTypes.SORTING_LIST_HEADER : baseNode instanceof TonFragmentItem.Product ? IdFabric$ViewTypes.TON_FRAGMENT_PRODUCT : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.TON_FRAGMENT_PRODUCT;
    }
}
