package com.iMe.p030ui.base.mvp.base;

import moxy.MvpView;
import moxy.MvpView$$State;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.base.mvp.base.BasePresenter$$ViewStateProvider */
/* loaded from: classes.dex */
public class BasePresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new MvpView$$State();
    }
}
