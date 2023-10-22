package com.iMe.p030ui.custom.state;

import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: GlobalStateView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.custom.state.GlobalStateView */
/* loaded from: classes3.dex */
public interface GlobalStateView extends MvpView {

    /* compiled from: GlobalStateView.kt */
    /* renamed from: com.iMe.ui.custom.state.GlobalStateView$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static void $default$onEmptyState(GlobalStateView globalStateView) {
        }

        public static void $default$onLoadingState(GlobalStateView globalStateView) {
        }

        public static void $default$onNoInternetErrorState(GlobalStateView globalStateView) {
        }

        public static void $default$onUnexpectedErrorState(GlobalStateView globalStateView) {
        }
    }

    void onEmptyState();

    void onLoadingState();

    void onNoInternetErrorState();

    void onUnexpectedErrorState();
}
