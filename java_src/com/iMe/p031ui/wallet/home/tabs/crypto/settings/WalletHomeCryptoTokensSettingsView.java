package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletHomeCryptoTokensSettingsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView */
/* loaded from: classes4.dex */
public interface WalletHomeCryptoTokensSettingsView extends BaseView, LoadMoreView<BaseNode> {
    void renderSearchResultItems(List<BaseNode> list);

    void renderTokensSettings(List<? extends BaseNode> list);

    @OneExecution
    void showTokenFamilyDialog(List<FoundTokenItem> list);
}
