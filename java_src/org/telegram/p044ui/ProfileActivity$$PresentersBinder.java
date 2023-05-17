package org.telegram.p044ui;

import com.iMe.feature.profile.ProfilePresenter;
import com.iMe.p031ui.debug.DebugPresenter;
import java.util.ArrayList;
import java.util.List;
import moxy.MvpPresenter;
import moxy.presenter.PresenterField;
/* renamed from: org.telegram.ui.ProfileActivity$$PresentersBinder */
/* loaded from: classes5.dex */
public class ProfileActivity$$PresentersBinder extends moxy.PresenterBinder<ProfileActivity> {
    @Override // moxy.PresenterBinder
    public List<PresenterField<? super ProfileActivity>> getPresenterFields() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new PresenterBinder(this));
        arrayList.add(new DebugPresenterBinder(this));
        return arrayList;
    }

    /* compiled from: ProfileActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.ProfileActivity$$PresentersBinder$PresenterBinder */
    /* loaded from: classes5.dex */
    public class PresenterBinder extends PresenterField<ProfileActivity> {
        public PresenterBinder(ProfileActivity$$PresentersBinder profileActivity$$PresentersBinder) {
            super("presenter", null, ProfilePresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(ProfileActivity profileActivity, MvpPresenter mvpPresenter) {
            profileActivity.presenter = (ProfilePresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(ProfileActivity profileActivity) {
            return profileActivity.providePresenter();
        }
    }

    /* compiled from: ProfileActivity$$PresentersBinder.java */
    /* renamed from: org.telegram.ui.ProfileActivity$$PresentersBinder$DebugPresenterBinder */
    /* loaded from: classes5.dex */
    public class DebugPresenterBinder extends PresenterField<ProfileActivity> {
        public DebugPresenterBinder(ProfileActivity$$PresentersBinder profileActivity$$PresentersBinder) {
            super("debugPresenter", null, DebugPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(ProfileActivity profileActivity, MvpPresenter mvpPresenter) {
            profileActivity.debugPresenter = (DebugPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(ProfileActivity profileActivity) {
            return profileActivity.provideDebugPresenter();
        }
    }
}
