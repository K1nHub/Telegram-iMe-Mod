package com.iMe.fork.p025ui.dialog;

import com.iMe.p032ui.translate.TranslationPresenter;
import java.util.ArrayList;
import java.util.List;
import moxy.MvpPresenter;
import moxy.PresenterBinder;
import moxy.presenter.PresenterField;
/* renamed from: com.iMe.fork.ui.dialog.TranslateAlert$$PresentersBinder */
/* loaded from: classes3.dex */
public class TranslateAlert$$PresentersBinder extends PresenterBinder<TranslateAlert> {
    @Override // moxy.PresenterBinder
    public List<PresenterField<? super TranslateAlert>> getPresenterFields() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new TranslationPresenterBinder(this));
        return arrayList;
    }

    /* compiled from: TranslateAlert$$PresentersBinder.java */
    /* renamed from: com.iMe.fork.ui.dialog.TranslateAlert$$PresentersBinder$TranslationPresenterBinder */
    /* loaded from: classes3.dex */
    public class TranslationPresenterBinder extends PresenterField<TranslateAlert> {
        public TranslationPresenterBinder(TranslateAlert$$PresentersBinder translateAlert$$PresentersBinder) {
            super("translationPresenter", null, TranslationPresenter.class);
        }

        @Override // moxy.presenter.PresenterField
        public void bind(TranslateAlert translateAlert, MvpPresenter mvpPresenter) {
            translateAlert.translationPresenter = (TranslationPresenter) mvpPresenter;
        }

        @Override // moxy.presenter.PresenterField
        public MvpPresenter<?> providePresenter(TranslateAlert translateAlert) {
            return translateAlert.provideTranslationPresenter();
        }
    }
}
