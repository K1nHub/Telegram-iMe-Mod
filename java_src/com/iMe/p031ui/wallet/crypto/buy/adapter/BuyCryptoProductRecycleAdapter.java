package com.iMe.p031ui.wallet.crypto.buy.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.crypto.buy.CryptoBuyFooterItem;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.p031ui.adapter.provider.SimplexFooterProvider;
import com.iMe.p031ui.adapter.provider.SimplexProductProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BuyCryptoProductRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.adapter.BuyCryptoProductRecycleAdapter */
/* loaded from: classes6.dex */
public final class BuyCryptoProductRecycleAdapter extends BaseNodeAdapter<BaseNode> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuyCryptoProductRecycleAdapter(SimplexFooterProvider simplexFooterProvider, SimplexProductProvider simplexProductProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(simplexFooterProvider, "simplexFooterProvider");
        Intrinsics.checkNotNullParameter(simplexProductProvider, "simplexProductProvider");
        addItemProvider(BaseQuickAdapterExtKt.asItem(simplexFooterProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(simplexProductProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof CryptoBuyItem ? IdFabric$ViewTypes.PRODUCT_FOR_BUY : baseNode instanceof CryptoBuyFooterItem ? IdFabric$ViewTypes.FOOTER : IdFabric$ViewTypes.TRANSACTION;
    }
}
