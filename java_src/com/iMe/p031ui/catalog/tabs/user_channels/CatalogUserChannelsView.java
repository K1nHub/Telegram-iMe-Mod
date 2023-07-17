package com.iMe.p031ui.catalog.tabs.user_channels;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.SwipeRefreshView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.state.GlobalStateView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CatalogUserChannelsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsView */
/* loaded from: classes3.dex */
public interface CatalogUserChannelsView extends BaseView, GlobalStateView, LoadMoreView<CampaignItem>, SwipeRefreshView {
    @OneExecution
    void openAddChannelScreen();

    void showItems(List<BaseNode> list);
}
