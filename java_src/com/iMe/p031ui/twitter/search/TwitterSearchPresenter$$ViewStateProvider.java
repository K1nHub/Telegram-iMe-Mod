package com.iMe.p031ui.twitter.search;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.twitter.search.TwitterSearchPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class TwitterSearchPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new TwitterSearchView$$State();
    }
}
