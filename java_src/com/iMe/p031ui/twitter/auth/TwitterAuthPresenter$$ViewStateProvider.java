package com.iMe.p031ui.twitter.auth;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.twitter.auth.TwitterAuthPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class TwitterAuthPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new TwitterAuthView$$State();
    }
}
