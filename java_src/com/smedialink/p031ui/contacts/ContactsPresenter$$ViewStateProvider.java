package com.smedialink.p031ui.contacts;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.smedialink.ui.contacts.ContactsPresenter$$ViewStateProvider */
/* loaded from: classes3.dex */
public class ContactsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new ContactsView$$State();
    }
}
