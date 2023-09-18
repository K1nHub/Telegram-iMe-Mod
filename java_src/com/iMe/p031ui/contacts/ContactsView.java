package com.iMe.p031ui.contacts;

import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: ContactsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.contacts.ContactsView */
/* loaded from: classes4.dex */
public interface ContactsView extends BaseView {
    void clearSelectedContacts();

    void closeActionMode();

    void onSelectedQtyChange(int i);

    void openActionMode();
}
