package com.smedialink.p031ui.twitter;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.smedialink.ui.twitter.TwitterPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class TwitterPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new TwitterView$$State();
    }
}
