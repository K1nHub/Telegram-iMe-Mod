package com.iMe.p031ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.state.GlobalStateView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletSelectTokenView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView */
/* loaded from: classes4.dex */
public interface WalletSelectTokenView extends BaseView, GlobalStateView, LoadMoreView<SelectableTokenItem> {
    void renderItems(List<SelectableTokenItem> list);
}
