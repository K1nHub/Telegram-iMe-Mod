package com.iMe.p032ui.base.mvp.view;

import moxy.MvpDelegate;
import moxy.MvpDelegateHolder;
import moxy.MvpView;
import org.koin.core.component.KoinComponent;
/* compiled from: ICustomMvpView.kt */
/* renamed from: com.iMe.ui.base.mvp.view.ICustomMvpView */
/* loaded from: classes3.dex */
public interface ICustomMvpView<T> extends MvpDelegateHolder, MvpView, KoinComponent {
    MvpDelegate<T> getMMvpDelegate();

    @Override // moxy.MvpDelegateHolder
    MvpDelegate<T> getMvpDelegate();

    void onCreateMvpView();

    void onDestroyMvpView();

    /* compiled from: ICustomMvpView.kt */
    /* renamed from: com.iMe.ui.base.mvp.view.ICustomMvpView$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static void $default$onCreateMvpView(ICustomMvpView _this) {
            MvpDelegate<T> mvpDelegate = _this.getMvpDelegate();
            if (mvpDelegate != null) {
                mvpDelegate.onCreate();
            }
            MvpDelegate<T> mvpDelegate2 = _this.getMvpDelegate();
            if (mvpDelegate2 != null) {
                mvpDelegate2.onAttach();
            }
        }

        public static void $default$onDestroyMvpView(ICustomMvpView _this) {
            MvpDelegate<T> mvpDelegate = _this.getMvpDelegate();
            if (mvpDelegate != null) {
                mvpDelegate.onDetach();
            }
            MvpDelegate<T> mvpDelegate2 = _this.getMvpDelegate();
            if (mvpDelegate2 != null) {
                mvpDelegate2.onDestroyView();
            }
            MvpDelegate<T> mvpDelegate3 = _this.getMvpDelegate();
            if (mvpDelegate3 != null) {
                mvpDelegate3.onDestroy();
            }
        }
    }
}
