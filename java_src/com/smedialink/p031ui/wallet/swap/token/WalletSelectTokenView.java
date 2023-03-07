package com.smedialink.p031ui.wallet.swap.token;

import com.smedialink.model.wallet.select.SelectableTokenItem;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.custom.state.GlobalStateView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletSelectTokenView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.swap.token.WalletSelectTokenView */
/* loaded from: classes3.dex */
public interface WalletSelectTokenView extends BaseView, GlobalStateView {
    void onTokensLoaded(List<SelectableTokenItem> list);
}
