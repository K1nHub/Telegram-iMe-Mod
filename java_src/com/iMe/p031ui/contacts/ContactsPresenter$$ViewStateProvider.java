package com.iMe.p031ui.contacts;

import moxy.MvpView;
import moxy.ViewStateProvider;
import moxy.viewstate.MvpViewState;
/* renamed from: com.iMe.ui.contacts.ContactsPresenter$$ViewStateProvider */
/* loaded from: classes4.dex */
public class ContactsPresenter$$ViewStateProvider extends ViewStateProvider {
    @Override // moxy.ViewStateProvider
    public MvpViewState<? extends MvpView> getViewState() {
        return new ContactsView$$State();
    }
}
