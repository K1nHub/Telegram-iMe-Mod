package com.smedialink.p031ui.debug;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.smedialink.ui.debug.DebugPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class DebugPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new DebugView$$State();
    }
}
