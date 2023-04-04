package com.iMe.p032ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.p032ui.custom.state.GlobalStateView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletSelectTokenView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView */
/* loaded from: classes4.dex */
public interface WalletSelectTokenView extends BaseView, GlobalStateView {
    void onTokensLoaded(List<SelectableTokenItem> list);
}
