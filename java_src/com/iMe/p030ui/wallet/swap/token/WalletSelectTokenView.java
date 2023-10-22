package com.iMe.p030ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.p030ui.base.mvp.LoadMoreView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletSelectTokenView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView */
/* loaded from: classes4.dex */
public interface WalletSelectTokenView extends BaseView, GlobalStateView, LoadMoreView<SelectableTokenItem> {
    @OneExecution
    void onTokenSelected(TokenDetailed tokenDetailed, FiatValue fiatValue);

    void renderItems(List<SelectableTokenItem> list);
}
