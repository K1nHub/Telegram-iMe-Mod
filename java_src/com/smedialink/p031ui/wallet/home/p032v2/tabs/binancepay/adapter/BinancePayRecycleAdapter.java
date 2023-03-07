package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.wallet.home.BannerItem;
import com.smedialink.model.wallet.home.CardButtonItem;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.smedialink.model.wallet.home.TotalBalanceItem;
import com.smedialink.model.wallet.home.pay.BinanceAccountItem;
import com.smedialink.model.wallet.home.pay.BinanceBalanceItem;
import com.smedialink.p031ui.adapter.provider.BannerProvider;
import com.smedialink.p031ui.adapter.provider.BinanceAccountProvider;
import com.smedialink.p031ui.adapter.provider.BinanceTokenBalanceProvider;
import com.smedialink.p031ui.adapter.provider.CardButtonProvider;
import com.smedialink.p031ui.adapter.provider.GlobalStateProvider;
import com.smedialink.p031ui.adapter.provider.HeaderProvider;
import com.smedialink.p031ui.adapter.provider.HeaderWithNetworkSwitcherProvider;
import com.smedialink.p031ui.adapter.provider.TotalBalanceProvider;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: BinancePayRecycleAdapter.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.adapter.BinancePayRecycleAdapter */
/* loaded from: classes3.dex */
public final class BinancePayRecycleAdapter extends BaseNodeAdapter<BaseNode> {
    private final BannerProvider bannerProvider;
    private final BinanceAccountProvider binanceAccountProvider;

    public final BannerProvider getBannerProvider() {
        return this.bannerProvider;
    }

    public final BinanceAccountProvider getBinanceAccountProvider() {
        return this.binanceAccountProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinancePayRecycleAdapter(BannerProvider bannerProvider, BinanceAccountProvider binanceAccountProvider, CardButtonProvider cardButtonProvider, HeaderWithNetworkSwitcherProvider headerWithNetworkSwitcherProvider, HeaderProvider headerProvider, BinanceTokenBalanceProvider binanceTokenBalanceProvider, TotalBalanceProvider totalBalanceProvider, GlobalStateProvider globalStateProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(bannerProvider, "bannerProvider");
        Intrinsics.checkNotNullParameter(binanceAccountProvider, "binanceAccountProvider");
        Intrinsics.checkNotNullParameter(cardButtonProvider, "cardButtonProvider");
        Intrinsics.checkNotNullParameter(headerWithNetworkSwitcherProvider, "headerWithNetworkSwitcherProvider");
        Intrinsics.checkNotNullParameter(headerProvider, "headerProvider");
        Intrinsics.checkNotNullParameter(binanceTokenBalanceProvider, "binanceTokenBalanceProvider");
        Intrinsics.checkNotNullParameter(totalBalanceProvider, "totalBalanceProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        this.bannerProvider = bannerProvider;
        this.binanceAccountProvider = binanceAccountProvider;
        addChildClickViewIds(C3158R.C3161id.image_wallet_crypto_eye, C3158R.C3161id.image_wallet_crypto_tokens_settings, C3158R.C3161id.image_wallet_order_tokens, C3158R.C3161id.image_copy);
        addItemProvider(BaseQuickAdapterExtKt.asItem(bannerProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(binanceAccountProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(cardButtonProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(headerWithNetworkSwitcherProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(headerProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(binanceTokenBalanceProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(totalBalanceProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
    }

    public final void updateUserInfo(BinanceAccountItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        Iterator it = getData().iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            } else if (((BaseNode) it.next()) instanceof BinanceAccountItem) {
                break;
            } else {
                i2++;
            }
        }
        Iterator it2 = getData().iterator();
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (((BaseNode) it2.next()) instanceof CardButtonItem) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            baseRemoveAt(i);
            baseAddData(i, item);
        } else if (i2 != -1) {
            notifyItemChanged(i2, item);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled((BinancePayRecycleAdapter) holder);
        this.bannerProvider.onViewRecycled(holder);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof BannerItem ? IdFabric$ViewTypes.BANNERS : baseNode instanceof HeaderItem ? IdFabric$ViewTypes.HEADER : baseNode instanceof BinanceBalanceItem ? IdFabric$ViewTypes.TOKEN_BALANCE : baseNode instanceof TotalBalanceItem ? IdFabric$ViewTypes.TOTAL_BALANCE : baseNode instanceof CardButtonItem ? IdFabric$ViewTypes.CARD_BUTTON : baseNode instanceof HeaderItemWithNetworkSwitcher ? IdFabric$ViewTypes.HEADER_WITH_NETWORK_SWITCHER : baseNode instanceof BinanceAccountItem ? IdFabric$ViewTypes.BINANCE_ACCOUNT : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.TOKEN_BALANCE;
    }
}
