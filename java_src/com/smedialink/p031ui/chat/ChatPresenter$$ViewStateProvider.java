package com.smedialink.p031ui.chat;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.smedialink.ui.chat.ChatPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class ChatPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new ChatView$$State();
    }
}
