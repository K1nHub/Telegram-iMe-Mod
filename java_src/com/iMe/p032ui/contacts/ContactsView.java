package com.iMe.p032ui.contacts;

import com.iMe.p032ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: ContactsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.contacts.ContactsView */
/* loaded from: classes3.dex */
public interface ContactsView extends BaseView {
    void clearSelectedContacts();

    void closeActionMode();

    void onSelectedQtyChange(int i);

    void openActionMode();
}
