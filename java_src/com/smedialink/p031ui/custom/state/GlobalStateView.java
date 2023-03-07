package com.smedialink.p031ui.custom.state;

import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: GlobalStateView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.custom.state.GlobalStateView */
/* loaded from: classes3.dex */
public interface GlobalStateView extends MvpView {
    void onEmptyState();

    void onLoadingState();

    void onNoInternetErrorState();

    void onUnexpectedErrorState();
}
