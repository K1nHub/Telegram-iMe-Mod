package com.iMe.feature.twitter;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.SwipeRefreshView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: TwitterView.kt */
@OneExecution
/* loaded from: classes4.dex */
public interface TwitterView extends BaseView, LoadMoreView<BaseNode>, SwipeRefreshView {
    void openBrowserUrl(String str);

    @AddToEndSingle
    void renderInitialItems(List<BaseNode> list);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void shareLink(String str);

    @OneExecution
    void showResetTwitterDialog(DialogModel dialogModel);
}
