package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.manager.crypto.pay.BinancePayProcessView;
import com.smedialink.p031ui.base.mvp.LoadMoreView;
import com.smedialink.p031ui.base.mvp.SwipeRefreshView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.custom.state.GlobalStateView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletBinancePayHistoryView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryView */
/* loaded from: classes3.dex */
public interface WalletBinancePayHistoryView extends BaseView, GlobalStateView, LoadMoreView<BaseNode>, SwipeRefreshView, BinancePayProcessView {
    void onLoadedTransactions(List<BaseNode> list);
}
