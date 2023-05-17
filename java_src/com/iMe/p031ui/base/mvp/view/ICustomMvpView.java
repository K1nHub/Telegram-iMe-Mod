package com.iMe.p031ui.base.mvp.view;

import moxy.MvpDelegate;
import moxy.MvpDelegateHolder;
import moxy.MvpView;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.java.KoinJavaComponent;
/* compiled from: ICustomMvpView.kt */
/* renamed from: com.iMe.ui.base.mvp.view.ICustomMvpView */
/* loaded from: classes.dex */
public interface ICustomMvpView<T> extends MvpDelegateHolder, MvpView, KoinComponent {
    MvpDelegate<T> getMMvpDelegate();

    @Override // moxy.MvpDelegateHolder
    MvpDelegate<T> getMvpDelegate();

    void onCreateMvpView();

    void onDestroyMvpView();

    /* compiled from: ICustomMvpView.kt */
    /* renamed from: com.iMe.ui.base.mvp.view.ICustomMvpView$-CC */
    /* loaded from: classes.dex */
    public final /* synthetic */ class CC {
        public static MvpDelegate $default$getMvpDelegate(ICustomMvpView _this) {
            return _this.getMMvpDelegate();
        }

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

        public static Koin $default$getKoin(ICustomMvpView _this) {
            return KoinJavaComponent.getKoin();
        }
    }
}
