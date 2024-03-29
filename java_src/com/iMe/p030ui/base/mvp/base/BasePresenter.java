package com.iMe.p030ui.base.mvp.base;

import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.Intrinsics;
import moxy.MvpPresenter;
import moxy.MvpView;
/* compiled from: BasePresenter.kt */
/* renamed from: com.iMe.ui.base.mvp.base.BasePresenter */
/* loaded from: classes.dex */
public class BasePresenter<T extends MvpView> extends MvpPresenter<T> {
    private Disposable singleDisposable;
    private final CompositeDisposable subscriptions = new CompositeDisposable();

    public static /* synthetic */ void autoDispose$default(BasePresenter basePresenter, Disposable disposable, CompositeDisposable compositeDisposable, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: autoDispose");
        }
        if ((i & 1) != 0) {
            compositeDisposable = basePresenter.subscriptions;
        }
        basePresenter.autoDispose(disposable, compositeDisposable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void autoDispose(Disposable disposable, CompositeDisposable subs) {
        Intrinsics.checkNotNullParameter(disposable, "<this>");
        Intrinsics.checkNotNullParameter(subs, "subs");
        subs.add(disposable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void singleDispose(Disposable disposable) {
        Intrinsics.checkNotNullParameter(disposable, "<this>");
        Disposable disposable2 = this.singleDisposable;
        if (disposable2 != null) {
            disposable2.dispose();
        }
        this.singleDisposable = disposable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void clearSubscriptions() {
        Disposable disposable = this.singleDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.subscriptions.clear();
    }

    @Override // moxy.MvpPresenter
    public void onDestroy() {
        clearSubscriptions();
        super.onDestroy();
    }
}
