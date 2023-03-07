package com.smedialink.p031ui.contacts;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: ContactsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.contacts.ContactsView */
/* loaded from: classes3.dex */
public interface ContactsView extends BaseView {
    void clearSelectedContacts();

    void closeActionMode();

    void onSelectedQtyChange(int i);

    void openActionMode();
}
