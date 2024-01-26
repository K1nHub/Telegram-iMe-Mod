package com.iMe.p030ui.catalog.tabs.categories;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.p030ui.base.mvp.LoadMoreView;
import com.iMe.p030ui.base.mvp.SwipeRefreshView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.catalog.ChatType;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CatalogCategoriesView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView */
/* loaded from: classes3.dex */
public interface CatalogCategoriesView extends BaseView, GlobalStateView, LoadMoreView<BaseNode>, SwipeRefreshView {
    @OneExecution
    void openCampaignDetailsScreen(CampaignItem campaignItem, TLRPC$Chat tLRPC$Chat, ChatType chatType);

    void renderNodes(List<BaseNode> list);
}
