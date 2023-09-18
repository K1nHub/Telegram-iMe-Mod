package com.iMe.p031ui.wallet.transaction.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.transaction.CryptoBoxActionItem;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.p031ui.adapter.provider.CryptoBoxActionProvider;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.p031ui.adapter.provider.HeaderProvider;
import com.iMe.p031ui.adapter.provider.StakingOperationProvider;
import com.iMe.p031ui.adapter.provider.TokenTransactionProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTransactionsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.transaction.adapter.WalletTransactionsRecycleAdapter */
/* loaded from: classes6.dex */
public final class WalletTransactionsRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    private final GlobalStateProvider globalStateProvider;
    private final HeaderProvider headerProvider;
    private final TokenTransactionProvider tokenTransactionProvider;

    public final GlobalStateProvider getGlobalStateProvider() {
        return this.globalStateProvider;
    }

    public final HeaderProvider getHeaderProvider() {
        return this.headerProvider;
    }

    public final TokenTransactionProvider getTokenTransactionProvider() {
        return this.tokenTransactionProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTransactionsRecycleAdapter(StakingOperationProvider stakingOperationProvider, CryptoBoxActionProvider cryptoBoxActionProvider, GlobalStateProvider globalStateProvider, HeaderProvider headerProvider, TokenTransactionProvider tokenTransactionProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(stakingOperationProvider, "stakingOperationProvider");
        Intrinsics.checkNotNullParameter(cryptoBoxActionProvider, "cryptoBoxActionProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        Intrinsics.checkNotNullParameter(headerProvider, "headerProvider");
        Intrinsics.checkNotNullParameter(tokenTransactionProvider, "tokenTransactionProvider");
        this.globalStateProvider = globalStateProvider;
        this.headerProvider = headerProvider;
        this.tokenTransactionProvider = tokenTransactionProvider;
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(headerProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(tokenTransactionProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(stakingOperationProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(cryptoBoxActionProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof TransactionItem ? IdFabric$ViewTypes.TRANSACTION : baseNode instanceof StakingOperationItem ? IdFabric$ViewTypes.STAKING_OPERATION : baseNode instanceof CryptoBoxActionItem ? IdFabric$ViewTypes.CRYPTOBOX_ACTION : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : baseNode instanceof HeaderItem ? IdFabric$ViewTypes.HEADER_CELL : IdFabric$ViewTypes.TRANSACTION;
    }
}
