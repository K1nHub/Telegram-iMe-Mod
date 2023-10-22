package com.iMe.p030ui.debug;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.debug.DebugPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class DebugPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new DebugView$$State();
    }
}
