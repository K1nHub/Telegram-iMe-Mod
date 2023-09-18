package org.telegram.p043ui;

import com.iMe.p031ui.wallet.airdrop.WalletAirdropPresenter;
import java.util.ArrayList;
import java.util.List;
import moxy.MvpPresenter;
import moxy.presenter.PresenterField;
/* renamed from: org.telegram.ui.DialogsActivity$$PresentersBinder */
/* loaded from: classes3.dex */
public class DialogsActivity$$PresentersBinder extends moxy.PresenterBinder<DialogsActivity> {
    @Override // moxy.PresenterBinder
    public List<PresenterField<? super DialogsActivity>> getPresenterFields() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new PresenterBinder(this));
        return arrayList;
    }

    /* compiled from: DialogsActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.DialogsActivity$$PresentersBinder$PresenterBinder */
    /* loaded from: classes3.dex */
    public class PresenterBinder extends PresenterField<DialogsActivity> {
        public PresenterBinder(DialogsActivity$$PresentersBinder dialogsActivity$$PresentersBinder) {
            super("presenter", null, WalletAirdropPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(DialogsActivity dialogsActivity, MvpPresenter mvpPresenter) {
            dialogsActivity.presenter = (WalletAirdropPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(DialogsActivity dialogsActivity) {
            return dialogsActivity.providePresenter();
        }
    }
}
