package com.iMe.p031ui.wallet.crypto.buy;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: BuyCryptoProductView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductView */
/* loaded from: classes4.dex */
public interface BuyCryptoProductView extends BaseView {
    void showRefreshLoading(boolean z);

    @AddToEndSingle
    void showUiItems(List<BaseNode> list);
}
