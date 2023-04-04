package com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.history.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.home.pay.BinanceTransactionItem;
import com.iMe.p032ui.adapter.provider.BinanceTransactionProvider;
import com.iMe.p032ui.adapter.provider.HeaderProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayHistoryRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.history.adapter.BinancePayHistoryRecycleAdapter */
/* loaded from: classes3.dex */
public final class BinancePayHistoryRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    private final BinanceTransactionProvider binanceTransactionProvider;
    private final HeaderProvider headerProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinancePayHistoryRecycleAdapter(HeaderProvider headerProvider, BinanceTransactionProvider binanceTransactionProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(headerProvider, "headerProvider");
        Intrinsics.checkNotNullParameter(binanceTransactionProvider, "binanceTransactionProvider");
        this.headerProvider = headerProvider;
        this.binanceTransactionProvider = binanceTransactionProvider;
        addItemProvider(BaseQuickAdapterExtKt.asItem(headerProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(binanceTransactionProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof BinanceTransactionItem ? IdFabric$ViewTypes.TRANSACTION : baseNode instanceof HeaderItem ? IdFabric$ViewTypes.HEADER : IdFabric$ViewTypes.TRANSACTION;
    }
}
