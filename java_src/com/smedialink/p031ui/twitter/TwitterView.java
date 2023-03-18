package com.smedialink.p031ui.twitter;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.p031ui.base.mvp.LoadMoreView;
import com.smedialink.p031ui.base.mvp.SwipeRefreshView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: TwitterView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.twitter.TwitterView */
/* loaded from: classes3.dex */
public interface TwitterView extends BaseView, LoadMoreView<BaseNode>, SwipeRefreshView {
    void openBrowserUrl(String str);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void shareLink(String str);
}
