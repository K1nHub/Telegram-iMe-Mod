package com.iMe.p030ui.wallet.crypto.settings.custom_tokens;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p030ui.base.mvp.LoadMoreView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.wallet.crypto.token.TokenManagementFragment;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CustomTokensView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensView */
/* loaded from: classes3.dex */
public interface CustomTokensView extends BaseView, LoadMoreView<BaseNode> {
    void openTokenManagementScreen(TokenManagementFragment.ScreenType screenType);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);
}
