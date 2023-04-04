package com.iMe.p032ui.twitter.auth;

import com.iMe.model.twitter.TwitterAuthResult;
import com.iMe.p032ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: TwitterAuthView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.twitter.auth.TwitterAuthView */
/* loaded from: classes3.dex */
public interface TwitterAuthView extends BaseView {
    void onAuthResult(TwitterAuthResult twitterAuthResult);
}
