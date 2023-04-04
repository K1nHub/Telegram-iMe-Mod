package com.iMe.p032ui.twitter.search;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.crypto.recipient.CryptoRecipientView;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.twitter.TwitterUserItem;
import com.iMe.p032ui.base.mvp.LoadMoreView;
import com.iMe.p032ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: TwitterSearchView.kt */
@OneExecution
/* renamed from: com.iMe.ui.twitter.search.TwitterSearchView */
/* loaded from: classes3.dex */
public interface TwitterSearchView extends BaseView, LoadMoreView<BaseNode>, CryptoRecipientView {
    @AddToEndSingle
    void onUserSelected(TwitterUserItem twitterUserItem, String str);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void showInviteConfirmationDialog(DialogModel dialogModel, long j);
}
