package com.iMe.p031ui.wallet.settings.appearance.networks.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.settings.NetworkSettingsItem;
import com.iMe.p031ui.custom.ImageTextCheckCell;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: WalletNetworksSettingsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.settings.appearance.networks.adapter.WalletNetworksSettingsRecycleAdapter */
/* loaded from: classes6.dex */
public final class WalletNetworksSettingsRecycleAdapter extends BaseQuickAdapter<NetworkSettingsItem, BaseViewHolder> {
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, NetworkSettingsItem networkSettingsItem, List list) {
        convert2(baseViewHolder, networkSettingsItem, (List<? extends Object>) list);
    }

    public WalletNetworksSettingsRecycleAdapter() {
        super(C3473R.layout.fork_recycle_item_wallet_networks_settings, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, final NetworkSettingsItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3473R.C3476id.view_network_cell;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, Theme.key_windowBackgroundWhite), i, new Function1<ImageTextCheckCell, Unit>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.adapter.WalletNetworksSettingsRecycleAdapter$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ImageTextCheckCell imageTextCheckCell) {
                invoke2(imageTextCheckCell);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ImageTextCheckCell applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                NetworkItem.Crypto networkItem = NetworkSettingsItem.this.getNetworkItem();
                NetworkSettingsItem networkSettingsItem = NetworkSettingsItem.this;
                applyForView.setupViewData(networkItem.getFullName(), (r13 & 2) != 0 ? null : networkItem.getLogoUrl(), (r13 & 4) != 0 ? null : null, networkSettingsItem.isEnabled(), true);
                applyForView.setupColors();
            }
        });
    }

    /* renamed from: convert  reason: avoid collision after fix types in other method */
    protected void convert2(BaseViewHolder holder, final NetworkSettingsItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(holder, C3473R.C3476id.view_network_cell, new Function1<ImageTextCheckCell, Unit>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.adapter.WalletNetworksSettingsRecycleAdapter$convert$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ImageTextCheckCell imageTextCheckCell) {
                invoke2(imageTextCheckCell);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ImageTextCheckCell applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                NetworkItem.Crypto networkItem = NetworkSettingsItem.this.getNetworkItem();
                NetworkSettingsItem networkSettingsItem = NetworkSettingsItem.this;
                applyForView.setupViewData(networkItem.getFullName(), (r13 & 2) != 0 ? null : networkItem.getLogoUrl(), (r13 & 4) != 0 ? null : null, networkSettingsItem.isEnabled(), true);
                applyForView.setupColors();
            }
        });
    }
}
