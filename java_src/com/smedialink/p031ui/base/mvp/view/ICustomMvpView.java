package com.smedialink.p031ui.base.mvp.view;

import moxy.MvpDelegate;
import moxy.MvpDelegateHolder;
import moxy.MvpView;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.java.KoinJavaComponent;
/* compiled from: ICustomMvpView.kt */
/* renamed from: com.smedialink.ui.base.mvp.view.ICustomMvpView */
/* loaded from: classes3.dex */
public interface ICustomMvpView<T> extends MvpDelegateHolder, MvpView, KoinComponent {
    MvpDelegate<T> getMMvpDelegate();

    @Override // moxy.MvpDelegateHolder
    MvpDelegate<T> getMvpDelegate();

    /* compiled from: ICustomMvpView.kt */
    /* renamed from: com.smedialink.ui.base.mvp.view.ICustomMvpView$DefaultImpls */
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static <T> MvpDelegate<T> getMvpDelegate(ICustomMvpView<T> iCustomMvpView) {
            return iCustomMvpView.getMMvpDelegate();
        }

        public static <T> void onCreateMvpView(ICustomMvpView<T> iCustomMvpView) {
            MvpDelegate<T> mvpDelegate = iCustomMvpView.getMvpDelegate();
            if (mvpDelegate != null) {
                mvpDelegate.onCreate();
            }
            MvpDelegate<T> mvpDelegate2 = iCustomMvpView.getMvpDelegate();
            if (mvpDelegate2 != null) {
                mvpDelegate2.onAttach();
            }
        }

        public static <T> void onDestroyMvpView(ICustomMvpView<T> iCustomMvpView) {
            MvpDelegate<T> mvpDelegate = iCustomMvpView.getMvpDelegate();
            if (mvpDelegate != null) {
                mvpDelegate.onDetach();
            }
            MvpDelegate<T> mvpDelegate2 = iCustomMvpView.getMvpDelegate();
            if (mvpDelegate2 != null) {
                mvpDelegate2.onDestroyView();
            }
            MvpDelegate<T> mvpDelegate3 = iCustomMvpView.getMvpDelegate();
            if (mvpDelegate3 != null) {
                mvpDelegate3.onDestroy();
            }
        }

        public static <T> Koin getKoin(ICustomMvpView<T> iCustomMvpView) {
            return KoinJavaComponent.getKoin();
        }
    }
}
