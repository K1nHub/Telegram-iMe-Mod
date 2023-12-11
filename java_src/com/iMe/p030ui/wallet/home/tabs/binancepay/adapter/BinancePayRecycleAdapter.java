package com.iMe.p030ui.wallet.home.tabs.binancepay.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.wallet.home.BannerItem;
import com.iMe.model.wallet.home.CardButtonItem;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.model.wallet.home.TotalBalanceItem;
import com.iMe.model.wallet.home.pay.BinanceAccountItem;
import com.iMe.model.wallet.home.pay.BinanceBalanceItem;
import com.iMe.p030ui.adapter.provider.BannerProvider;
import com.iMe.p030ui.adapter.provider.BinanceAccountProvider;
import com.iMe.p030ui.adapter.provider.BinanceTokenBalanceProvider;
import com.iMe.p030ui.adapter.provider.CardButtonProvider;
import com.iMe.p030ui.adapter.provider.GlobalStateProvider;
import com.iMe.p030ui.adapter.provider.HeaderProvider;
import com.iMe.p030ui.adapter.provider.HeaderWithNetworkSwitcherProvider;
import com.iMe.p030ui.adapter.provider.TotalBalanceProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
/* compiled from: BinancePayRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.adapter.BinancePayRecycleAdapter */
/* loaded from: classes4.dex */
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
        addChildClickViewIds(C3632R.C3635id.image_wallet_crypto_eye, C3632R.C3635id.image_wallet_crypto_tokens_settings, C3632R.C3635id.image_wallet_order_tokens, C3632R.C3635id.image_copy);
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
        return baseNode instanceof BannerItem ? IdFabric$ViewTypes.BANNERS : baseNode instanceof HeaderItem ? IdFabric$ViewTypes.HEADER_CELL : baseNode instanceof BinanceBalanceItem ? IdFabric$ViewTypes.TOKEN_BALANCE : baseNode instanceof TotalBalanceItem ? IdFabric$ViewTypes.TOTAL_BALANCE : baseNode instanceof CardButtonItem ? IdFabric$ViewTypes.CARD_BUTTON : baseNode instanceof HeaderItemWithNetworkSwitcher ? IdFabric$ViewTypes.HEADER_CELL_WITH_NETWORK : baseNode instanceof BinanceAccountItem ? IdFabric$ViewTypes.BINANCE_ACCOUNT : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.TOKEN_BALANCE;
    }
}
