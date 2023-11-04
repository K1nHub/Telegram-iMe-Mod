package org.telegram.p043ui;

import com.iMe.p030ui.contacts.ContactsPresenter;
import com.iMe.p030ui.wallet.actions.send.recipient.WalletSendRecipientPresenter;
import java.util.ArrayList;
import java.util.List;
import moxy.MvpPresenter;
import moxy.PresenterBinder;
import moxy.presenter.PresenterField;
/* renamed from: org.telegram.ui.ContactsActivity$$PresentersBinder */
/* loaded from: classes5.dex */
public class ContactsActivity$$PresentersBinder extends PresenterBinder<ContactsActivity> {
    @Override // moxy.PresenterBinder
    public List<PresenterField<? super ContactsActivity>> getPresenterFields() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new ContactsPresenterBinder(this));
        arrayList.add(new TransferRecipientPresenterBinder(this));
        return arrayList;
    }

    /* compiled from: ContactsActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.ContactsActivity$$PresentersBinder$ContactsPresenterBinder */
    /* loaded from: classes5.dex */
    public class ContactsPresenterBinder extends PresenterField<ContactsActivity> {
        public ContactsPresenterBinder(ContactsActivity$$PresentersBinder contactsActivity$$PresentersBinder) {
            super("contactsPresenter", null, ContactsPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(ContactsActivity contactsActivity, MvpPresenter mvpPresenter) {
            contactsActivity.contactsPresenter = (ContactsPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(ContactsActivity contactsActivity) {
            return contactsActivity.providePresenter();
        }
    }

    /* compiled from: ContactsActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.ContactsActivity$$PresentersBinder$TransferRecipientPresenterBinder */
    /* loaded from: classes5.dex */
    public class TransferRecipientPresenterBinder extends PresenterField<ContactsActivity> {
        public TransferRecipientPresenterBinder(ContactsActivity$$PresentersBinder contactsActivity$$PresentersBinder) {
            super("transferRecipientPresenter", null, WalletSendRecipientPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(ContactsActivity contactsActivity, MvpPresenter mvpPresenter) {
            contactsActivity.transferRecipientPresenter = (WalletSendRecipientPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(ContactsActivity contactsActivity) {
            return contactsActivity.provideTransferRecipientPresenter();
        }
    }
}
