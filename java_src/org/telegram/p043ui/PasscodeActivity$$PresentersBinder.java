package org.telegram.p043ui;

import com.iMe.p030ui.wallet.crypto.create.pin.CreateWalletPinPresenter;
import com.iMe.p030ui.wallet.crypto.enter.password.EnterWalletPasswordPresenter;
import java.util.ArrayList;
import java.util.List;
import moxy.MvpPresenter;
import moxy.PresenterBinder;
import moxy.presenter.PresenterField;
/* renamed from: org.telegram.ui.PasscodeActivity$$PresentersBinder */
/* loaded from: classes5.dex */
public class PasscodeActivity$$PresentersBinder extends PresenterBinder<PasscodeActivity> {
    @Override // moxy.PresenterBinder
    public List<PresenterField<? super PasscodeActivity>> getPresenterFields() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new WalletCreatePinPresenterBinder(this));
        arrayList.add(new WalletEnterPasswordPresenterBinder(this));
        return arrayList;
    }

    /* compiled from: PasscodeActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.PasscodeActivity$$PresentersBinder$WalletCreatePinPresenterBinder */
    /* loaded from: classes5.dex */
    public class WalletCreatePinPresenterBinder extends PresenterField<PasscodeActivity> {
        public WalletCreatePinPresenterBinder(PasscodeActivity$$PresentersBinder passcodeActivity$$PresentersBinder) {
            super("walletCreatePinPresenter", null, CreateWalletPinPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(PasscodeActivity passcodeActivity, MvpPresenter mvpPresenter) {
            passcodeActivity.walletCreatePinPresenter = (CreateWalletPinPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(PasscodeActivity passcodeActivity) {
            return passcodeActivity.provideWalletPinPresenter();
        }
    }

    /* compiled from: PasscodeActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.PasscodeActivity$$PresentersBinder$WalletEnterPasswordPresenterBinder */
    /* loaded from: classes5.dex */
    public class WalletEnterPasswordPresenterBinder extends PresenterField<PasscodeActivity> {
        public WalletEnterPasswordPresenterBinder(PasscodeActivity$$PresentersBinder passcodeActivity$$PresentersBinder) {
            super("walletEnterPasswordPresenter", null, EnterWalletPasswordPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(PasscodeActivity passcodeActivity, MvpPresenter mvpPresenter) {
            passcodeActivity.walletEnterPasswordPresenter = (EnterWalletPasswordPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(PasscodeActivity passcodeActivity) {
            return passcodeActivity.provideWalletEnterPasswordPresenter();
        }
    }
}
