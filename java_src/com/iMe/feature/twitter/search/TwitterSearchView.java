package com.iMe.feature.twitter.search;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.crypto.recipient.CryptoRecipientView;
import com.iMe.p030ui.base.mvp.LoadMoreView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: TwitterSearchView.kt */
@OneExecution
/* loaded from: classes3.dex */
public interface TwitterSearchView extends BaseView, LoadMoreView<BaseNode>, CryptoRecipientView {
    @AddToEndSingle
    void renderItems(List<BaseNode> list);
}
