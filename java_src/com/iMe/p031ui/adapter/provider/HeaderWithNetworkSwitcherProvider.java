package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3290R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: HeaderWithNetworkSwitcherProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.HeaderWithNetworkSwitcherProvider */
/* loaded from: classes.dex */
public final class HeaderWithNetworkSwitcherProvider extends BaseNodeProvider<HeaderItemWithNetworkSwitcher> {
    private final int itemViewType = IdFabric$ViewTypes.HEADER_CELL_WITH_NETWORK;
    private final int layoutId = C3290R.layout.fork_recycle_item_wallet_dashboard_header_with_network_switcher;
    private Callbacks$Callback onNetworkViewLayoutAction;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (HeaderItemWithNetworkSwitcher) obj, (List<? extends Object>) list);
    }

    public final Callbacks$Callback getOnNetworkViewLayoutAction() {
        return this.onNetworkViewLayoutAction;
    }

    public final void setOnNetworkViewLayoutAction(Callbacks$Callback callbacks$Callback) {
        this.onNetworkViewLayoutAction = callbacks$Callback;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, HeaderItemWithNetworkSwitcher item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3290R.C3293id.text_wallet_header;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, Theme.key_windowBackgroundWhiteGrayText2), i).setText(i, item.getTitle());
        int i2 = C3290R.C3293id.frame_network_type;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setCircleRippleBackground(text.setVisible(i2, item.isNetworkSwitcherVisible()), i2), C3290R.C3293id.view_network_type, new HeaderWithNetworkSwitcherProvider$convert$1(item, this));
    }

    public void convert(BaseViewHolder helper, HeaderItemWithNetworkSwitcher item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(helper.setText(C3290R.C3293id.text_wallet_header, item.getTitle()).setVisible(C3290R.C3293id.frame_network_type, item.isNetworkSwitcherVisible()), C3290R.C3293id.view_network_type, new HeaderWithNetworkSwitcherProvider$convert$2(item));
    }
}
