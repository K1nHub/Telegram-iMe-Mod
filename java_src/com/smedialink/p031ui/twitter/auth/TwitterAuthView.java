package com.smedialink.p031ui.twitter.auth;

import com.smedialink.model.twitter.TwitterAuthResult;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: TwitterAuthView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.twitter.auth.TwitterAuthView */
/* loaded from: classes3.dex */
public interface TwitterAuthView extends BaseView {
    void onAuthResult(TwitterAuthResult twitterAuthResult);
}
