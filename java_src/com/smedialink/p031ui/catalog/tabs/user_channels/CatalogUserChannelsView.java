package com.smedialink.p031ui.catalog.tabs.user_channels;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.p031ui.base.mvp.LoadMoreView;
import com.smedialink.p031ui.base.mvp.SwipeRefreshView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.custom.state.GlobalStateView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CatalogUserChannelsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsView */
/* loaded from: classes3.dex */
public interface CatalogUserChannelsView extends BaseView, GlobalStateView, LoadMoreView<CampaignItem>, SwipeRefreshView {
    @OneExecution
    void openAddChannelScreen();

    void showItems(List<BaseNode> list);
}
