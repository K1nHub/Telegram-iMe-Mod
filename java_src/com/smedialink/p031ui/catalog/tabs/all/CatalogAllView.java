package com.smedialink.p031ui.catalog.tabs.all;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.p031ui.base.mvp.LoadMoreView;
import com.smedialink.p031ui.base.mvp.SwipeRefreshView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.custom.state.GlobalStateView;
import com.smedialink.storage.domain.model.catalog.ChatType;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CatalogAllView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView */
/* loaded from: classes3.dex */
public interface CatalogAllView extends BaseView, GlobalStateView, LoadMoreView<BaseNode>, SwipeRefreshView {
    void onCategoriesLoaded(List<BaseNode> list);

    void onNestedLoadMoreComplete(long j);

    void onNestedLoadMoreError(long j);

    void onNestedLoadMoreItems(long j, List<CampaignItem> list);

    @OneExecution
    void openCampaignDetailsScreen(CampaignItem campaignItem, TLRPC$Chat tLRPC$Chat, ChatType chatType);
}
