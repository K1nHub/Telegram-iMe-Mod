package com.smedialink.p031ui.catalog.tabs.categories;

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
/* compiled from: CatalogCategoriesView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesView */
/* loaded from: classes3.dex */
public interface CatalogCategoriesView extends BaseView, GlobalStateView, LoadMoreView<BaseNode>, SwipeRefreshView {
    @OneExecution
    void openCampaignDetailsScreen(CampaignItem campaignItem, TLRPC$Chat tLRPC$Chat, ChatType chatType);

    void renderNodes(List<BaseNode> list);
}
