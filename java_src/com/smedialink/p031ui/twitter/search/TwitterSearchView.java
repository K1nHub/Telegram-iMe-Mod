package com.smedialink.p031ui.twitter.search;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.manager.crypto.recipient.CryptoRecipientView;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.twitter.TwitterUserItem;
import com.smedialink.p031ui.base.mvp.LoadMoreView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: TwitterSearchView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView */
/* loaded from: classes3.dex */
public interface TwitterSearchView extends BaseView, LoadMoreView<BaseNode>, CryptoRecipientView {
    @AddToEndSingle
    void onUserSelected(TwitterUserItem twitterUserItem, String str);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void showInviteConfirmationDialog(DialogModel dialogModel, long j);
}
