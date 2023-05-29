package com.iMe.p031ui.catalog.tabs.all;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.SwipeRefreshView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.catalog.ChatType;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CatalogAllView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllView */
/* loaded from: classes.dex */
public interface CatalogAllView extends BaseView, GlobalStateView, LoadMoreView<BaseNode>, SwipeRefreshView {
    void onCategoriesLoaded(List<BaseNode> list);

    void onNestedLoadMoreComplete(long j);

    void onNestedLoadMoreError(long j);

    void onNestedLoadMoreItems(long j, List<CampaignItem> list);

    @OneExecution
    void openCampaignDetailsScreen(CampaignItem campaignItem, TLRPC$Chat tLRPC$Chat, ChatType chatType);
}
