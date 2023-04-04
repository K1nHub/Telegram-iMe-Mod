package com.iMe.p032ui.twitter;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p032ui.base.mvp.LoadMoreView;
import com.iMe.p032ui.base.mvp.SwipeRefreshView;
import com.iMe.p032ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: TwitterView.kt */
@OneExecution
/* renamed from: com.iMe.ui.twitter.TwitterView */
/* loaded from: classes3.dex */
public interface TwitterView extends BaseView, LoadMoreView<BaseNode>, SwipeRefreshView {
    void openBrowserUrl(String str);

    @AddToEndSingle
    void renderInitialItems(List<BaseNode> list);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void shareLink(String str);
}
