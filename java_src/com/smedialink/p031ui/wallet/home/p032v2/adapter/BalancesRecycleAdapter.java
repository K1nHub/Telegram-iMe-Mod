package com.smedialink.p031ui.wallet.home.p032v2.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.wallet.home.AccountItem;
import com.smedialink.model.wallet.home.BannerItem;
import com.smedialink.model.wallet.home.CryptoAccountItem;
import com.smedialink.model.wallet.home.CryptoSelectTokensItem;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.smedialink.model.wallet.home.SelectableHeaderItem;
import com.smedialink.model.wallet.home.ServicesBasicItem;
import com.smedialink.model.wallet.home.TotalBalanceItem;
import com.smedialink.model.wallet.home.nft.NftCollectionItem;
import com.smedialink.model.wallet.home.nft.NftTokenItem;
import com.smedialink.p031ui.adapter.provider.BannerProvider;
import com.smedialink.p031ui.adapter.provider.CreateAccountProvider;
import com.smedialink.p031ui.adapter.provider.CryptoAccountProvider;
import com.smedialink.p031ui.adapter.provider.GlobalStateProvider;
import com.smedialink.p031ui.adapter.provider.HeaderProvider;
import com.smedialink.p031ui.adapter.provider.HeaderWithNetworkSwitcherProvider;
import com.smedialink.p031ui.adapter.provider.NftCollectionProvider;
import com.smedialink.p031ui.adapter.provider.NftTokenProvider;
import com.smedialink.p031ui.adapter.provider.SelectTokenProvider;
import com.smedialink.p031ui.adapter.provider.SelectableHeaderProvider;
import com.smedialink.p031ui.adapter.provider.ServiceProvider;
import com.smedialink.p031ui.adapter.provider.TokenBalanceProvider;
import com.smedialink.p031ui.adapter.provider.TotalBalanceProvider;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3301R;
/* compiled from: BalancesRecycleAdapter.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.adapter.BalancesRecycleAdapter */
/* loaded from: classes3.dex */
public final class BalancesRecycleAdapter extends BaseNodeAdapter<BaseNode> {
    private final BannerProvider bannerProvider;
    private final CryptoAccountProvider cryptoAccountProvider;
    private final HeaderWithNetworkSwitcherProvider headerWithNetworkSwitcherProvider;
    private final NftTokenProvider nftTokenProvider;

    public final BannerProvider getBannerProvider() {
        return this.bannerProvider;
    }

    public final CryptoAccountProvider getCryptoAccountProvider() {
        return this.cryptoAccountProvider;
    }

    public final NftTokenProvider getNftTokenProvider() {
        return this.nftTokenProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BalancesRecycleAdapter(CreateAccountProvider createAccountProvider, SelectableHeaderProvider selectableHeaderProvider, SelectTokenProvider selectTokenProvider, HeaderProvider headerProvider, ServiceProvider serviceProvider, TokenBalanceProvider tokenBalanceProvider, TotalBalanceProvider totalBalanceProvider, NftCollectionProvider nftCollectionProvider, GlobalStateProvider globalStateProvider, BannerProvider bannerProvider, CryptoAccountProvider cryptoAccountProvider, HeaderWithNetworkSwitcherProvider headerWithNetworkSwitcherProvider, NftTokenProvider nftTokenProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(createAccountProvider, "createAccountProvider");
        Intrinsics.checkNotNullParameter(selectableHeaderProvider, "selectableHeaderProvider");
        Intrinsics.checkNotNullParameter(selectTokenProvider, "selectTokenProvider");
        Intrinsics.checkNotNullParameter(headerProvider, "headerProvider");
        Intrinsics.checkNotNullParameter(serviceProvider, "serviceProvider");
        Intrinsics.checkNotNullParameter(tokenBalanceProvider, "tokenBalanceProvider");
        Intrinsics.checkNotNullParameter(totalBalanceProvider, "totalBalanceProvider");
        Intrinsics.checkNotNullParameter(nftCollectionProvider, "nftCollectionProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        Intrinsics.checkNotNullParameter(bannerProvider, "bannerProvider");
        Intrinsics.checkNotNullParameter(cryptoAccountProvider, "cryptoAccountProvider");
        Intrinsics.checkNotNullParameter(headerWithNetworkSwitcherProvider, "headerWithNetworkSwitcherProvider");
        Intrinsics.checkNotNullParameter(nftTokenProvider, "nftTokenProvider");
        this.bannerProvider = bannerProvider;
        this.cryptoAccountProvider = cryptoAccountProvider;
        this.headerWithNetworkSwitcherProvider = headerWithNetworkSwitcherProvider;
        this.nftTokenProvider = nftTokenProvider;
        addChildClickViewIds(C3301R.C3304id.image_wallet_crypto_eye, C3301R.C3304id.image_wallet_crypto_tokens_settings, C3301R.C3304id.image_wallet_order_tokens, C3301R.C3304id.frame_network_type, C3301R.C3304id.image_copy);
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(bannerProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(cryptoAccountProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(createAccountProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(headerWithNetworkSwitcherProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(selectableHeaderProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(selectTokenProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(headerProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(serviceProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(tokenBalanceProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(totalBalanceProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(nftCollectionProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(nftTokenProvider));
        addFullSpanNodeProvider(BaseQuickAdapterExtKt.asNode(globalStateProvider));
    }

    public final void setOnNetworkViewLayoutAction(Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "action");
        this.headerWithNetworkSwitcherProvider.setOnNetworkViewLayoutAction(action);
    }

    public final void resetOnNetworkViewLayoutAction() {
        this.headerWithNetworkSwitcherProvider.setOnNetworkViewLayoutAction(null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled((BalancesRecycleAdapter) holder);
        this.bannerProvider.onViewRecycled(holder);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof BannerItem ? IdFabric$ViewTypes.BANNERS : baseNode instanceof HeaderItem ? IdFabric$ViewTypes.HEADER : baseNode instanceof AccountItem.Token ? IdFabric$ViewTypes.TOKEN_BALANCE : baseNode instanceof ServicesBasicItem ? IdFabric$ViewTypes.SERVICES_BASIC : baseNode instanceof TotalBalanceItem ? IdFabric$ViewTypes.TOTAL_BALANCE : baseNode instanceof AccountItem.Create ? IdFabric$ViewTypes.CREATE_ACCOUNT : baseNode instanceof SelectableHeaderItem ? IdFabric$ViewTypes.SELECTABLE_HEADER : baseNode instanceof HeaderItemWithNetworkSwitcher ? IdFabric$ViewTypes.HEADER_WITH_NETWORK_SWITCHER : baseNode instanceof CryptoSelectTokensItem ? IdFabric$ViewTypes.SELECT_TOKENS : baseNode instanceof CryptoAccountItem ? IdFabric$ViewTypes.CRYPTO_ACCOUNT : baseNode instanceof NftCollectionItem ? IdFabric$ViewTypes.NFT_COLLECTION : baseNode instanceof NftTokenItem ? IdFabric$ViewTypes.NFT_AVATAR : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.TOKEN_BALANCE;
    }
}
