package com.iMe.p030ui.wallet.settings.appearance.networks;

import com.iMe.model.wallet.settings.NetworkSettingsItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletNetworksSettingsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsView */
/* loaded from: classes4.dex */
public interface WalletNetworksSettingsView extends BaseView {
    void renderEmptySearchResults();

    void renderItems(List<NetworkSettingsItem> list);
}
