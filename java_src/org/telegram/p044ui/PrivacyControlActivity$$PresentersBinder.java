package org.telegram.p044ui;

import com.iMe.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter;
import java.util.ArrayList;
import java.util.List;
import moxy.MvpPresenter;
import moxy.presenter.PresenterField;
/* renamed from: org.telegram.ui.PrivacyControlActivity$$PresentersBinder */
/* loaded from: classes5.dex */
public class PrivacyControlActivity$$PresentersBinder extends moxy.PresenterBinder<PrivacyControlActivity> {
    @Override // moxy.PresenterBinder
    public List<PresenterField<? super PrivacyControlActivity>> getPresenterFields() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new PresenterBinder(this));
        return arrayList;
    }

    /* compiled from: PrivacyControlActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.PrivacyControlActivity$$PresentersBinder$PresenterBinder */
    /* loaded from: classes5.dex */
    public class PresenterBinder extends PresenterField<PrivacyControlActivity> {
        public PresenterBinder(PrivacyControlActivity$$PresentersBinder privacyControlActivity$$PresentersBinder) {
            super("presenter", null, WalletPrivacySettingPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(PrivacyControlActivity privacyControlActivity, MvpPresenter mvpPresenter) {
            privacyControlActivity.presenter = (WalletPrivacySettingPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(PrivacyControlActivity privacyControlActivity) {
            return privacyControlActivity.providePresenter();
        }
    }
}
